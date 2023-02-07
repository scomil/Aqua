import 'dart:convert';

import 'package:aqua/data/models/bitcoin_reserve.dart';
import 'package:aqua/data/provider/bitcoin_reserve/bitcoin_reserve_auth_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:aqua/common/utils/custom_logger.dart';
import 'package:rxdart/rxdart.dart';
import 'package:http/http.dart' as http;

const brApiBaseUrl = 'https://alpha.bitcoinreserve.com/api';
const mockAuthToken = '09500039c7c6696ee890a581440ed538df768684';

enum Currency {
  eur,
  gbp,
  usd,
}

//
// Errors
//

class BrAuthInvalidEmailError {}

class BrAuthInvalidPasswordError {}

class BrAuthInvalid2FaCodeError {}

class UserBalanceException {}

class TransactionsException {}

class TransactionDetailsException {
  TransactionDetailsException([this.message]);

  final String? message;
}

class BrBuyCostError {}

//
// Input Streams
//

// Email Stream

final _emailStreamProvider = StreamProvider.autoDispose<String?>((ref) async* {
  yield* ref.watch(bitcoinReserveScreenProvider)._emailSubject;
});

final brEmailProvider = Provider.autoDispose<String?>((ref) {
  return ref.watch(_emailStreamProvider).data?.value;
});

// Password Stream

final _passwordStreamProvider =
    StreamProvider.autoDispose<String?>((ref) async* {
  yield* ref.watch(bitcoinReserveScreenProvider)._passwordSubject;
});

final brPasswordProvider = Provider.autoDispose<String?>((ref) {
  return ref.watch(_passwordStreamProvider).data?.value;
});

// 2FA Code Stream

final _twoFaCodeStreamProvider =
    StreamProvider.autoDispose<String?>((ref) async* {
  yield* ref.watch(bitcoinReserveScreenProvider)._twoFaCodeSubject;
});

final br2FactorAuthCodeProvider = Provider.autoDispose<String?>((ref) {
  return ref.watch(_twoFaCodeStreamProvider).data?.value;
});

// Buy Cost Stream

final _buyCostStreamProvider =
    StreamProvider.autoDispose<String?>((ref) async* {
  yield* ref.watch(bitcoinReserveScreenProvider)._buyCostSubject;
});

final brBuyCostProvider = Provider.autoDispose<String?>((ref) {
  return ref.watch(_buyCostStreamProvider).data?.value;
});

// Buy Currency Stream

final _buyCurrencyStreamProvider =
    StreamProvider.autoDispose<Currency?>((ref) async* {
  yield* ref.watch(bitcoinReserveScreenProvider)._buyCurrencySubject;
});

final brBuyCurrencyProvider = Provider.autoDispose<Currency?>((ref) {
  return ref.watch(_buyCurrencyStreamProvider).data?.value;
});

// Email Error Stream

final _emailErrorStreamProvider =
    StreamProvider.autoDispose<BrAuthInvalidEmailError?>((ref) async* {
  yield* ref.watch(bitcoinReserveScreenProvider)._emailErrorStream;
});

final brEmailErrorProvider =
    Provider.autoDispose<BrAuthInvalidEmailError?>((ref) {
  return ref.watch(_emailErrorStreamProvider).data?.value;
});

// Password Error Stream

final _passwordErrorStreamProvider =
    StreamProvider.autoDispose<BrAuthInvalidPasswordError?>((ref) async* {
  yield* ref.watch(bitcoinReserveScreenProvider)._passwordErrorStream;
});

final brPasswordErrorProvider =
    Provider.autoDispose<BrAuthInvalidPasswordError?>((ref) {
  return ref.watch(_passwordErrorStreamProvider).data?.value;
});

// 2FA Code Error Stream

final _twoFaCodeErrorStreamProvider =
    StreamProvider.autoDispose<BrAuthInvalid2FaCodeError?>((ref) async* {
  yield* ref.watch(bitcoinReserveScreenProvider)._twoFaCodeErrorStream;
});

final br2FactorAuthCodeErrorProvider =
    Provider.autoDispose<BrAuthInvalid2FaCodeError?>((ref) {
  return ref.watch(_twoFaCodeErrorStreamProvider).data?.value;
});

// Buy Cost Error Stream

final _buyCostErrorStreamProvider =
    StreamProvider.autoDispose<BrBuyCostError?>((ref) async* {
  yield* ref.watch(bitcoinReserveScreenProvider)._buyCostErrorStream;
});

final brBuyCostErrorProvider = Provider.autoDispose<BrBuyCostError?>((ref) {
  return ref.watch(_buyCostErrorStreamProvider).data?.value;
});

// Transaction details Error Stream

final _transactionDetailsErrorStreamProvider =
    StreamProvider.autoDispose<TransactionDetailsException?>((ref) async* {
  yield* ref
      .watch(bitcoinReserveScreenProvider)
      ._transactionDetailsErrorSubject;
});

final brTransactionDetailsErrorProvider =
    Provider.autoDispose<TransactionDetailsException?>((ref) {
  return ref.watch(_transactionDetailsErrorStreamProvider).data?.value;
});

//
// UI States
//

// Login State Stream

final _loginStateStreamProvider =
    StreamProvider.autoDispose<BrLoginState?>((ref) async* {
  yield* ref.watch(bitcoinReserveScreenProvider)._loginStateSubject;
});

final brLoginStateProvider = Provider.autoDispose<BrLoginState?>((ref) {
  return ref.watch(_loginStateStreamProvider).data?.value;
});

// User Balance

final brUserBalanceStateProvider =
    FutureProvider.autoDispose<BrUserBalanceResponse?>((ref) async {
  return ref.watch(bitcoinReserveScreenProvider).fetchUserBalance();
});

// Transactions

final brTransactionsProvider = FutureProvider.autoDispose
    .family<BrTransactionsResponse?, int>((ref, page) async {
  return ref.watch(bitcoinReserveScreenProvider).fetchTransactions();
});

// Transaction Details

final brTransactionDetailsProvider = FutureProvider.autoDispose
    .family<BrTransactionDetailsResponse?, String>((ref, id) async {
  return ref.watch(bitcoinReserveScreenProvider).fetchTransactionDetails(id);
});

// Authentication status

final brAuthStateProvider = Provider.autoDispose<BrAuthStatusState>((ref) {
  final authState = ref.watch(brLoginStateProvider);
  logger.d('[BitcoinReserve] AuthState: $authState');

  return authState is LoginSuccess
      ? const BrAuthStatusState.authenticated()
      : const BrAuthStatusState.unauthenticated();
});

//
// Screen
//

// Bitcoin Reserve Screen Provider

final bitcoinReserveScreenProvider =
    Provider.autoDispose<BitcoinReserveScreenProvider>(
  (ref) => BitcoinReserveScreenProvider(ref),
);

class BitcoinReserveScreenProvider {
  final AutoDisposeProviderReference ref;

  BitcoinReserveScreenProvider(this.ref) {
    ref.onDispose(() {
      _emailSubject.close();
      _passwordSubject.close();
      _twoFaCodeSubject.close();
      _loginStateSubject.close();
      _userBalanceErrorSubject.close();
      _transactionsErrorSubject.close();
      _transactionDetailsErrorSubject.close();
      _buyCostSubject.close();
      _buyCurrencySubject.close();
    });
  }

  // Email

  final _emailSubject = BehaviorSubject<String>();

  late final _emailErrorStream = _emailSubject.stream.switchMap((e) {
    return e.isEmpty
        ? Stream.value(BrAuthInvalidEmailError())
        : Stream.value(null);
  });

  void setEmail(String email) {
    _emailSubject.add(email);
    logger.d('[BitcoinReserve] setEmail: $email');
  }

  // Password

  final _passwordSubject = BehaviorSubject<String>();

  late final _passwordErrorStream = _passwordSubject.stream.switchMap((e) {
    return e.length < 6
        ? Stream.value(BrAuthInvalidPasswordError())
        : Stream.value(null);
  });

  void setPassword(String password) {
    _passwordSubject.add(password);
    logger.d('[BitcoinReserve] setPassword: $password');
  }

  // 2FA Code

  final _twoFaCodeSubject = BehaviorSubject<String>();

  late final _twoFaCodeErrorStream = _twoFaCodeSubject.stream.switchMap((e) {
    return e.length < 6
        ? Stream.value(BrAuthInvalid2FaCodeError())
        : Stream.value(null);
  });

  void set2FactorAuthCode(String code) {
    _twoFaCodeSubject.add(code);
    logger.d('[BitcoinReserve] set2FactorAuthCode: $code');
  }

  // Login

  final _loginStateSubject = BehaviorSubject<BrLoginState>();

  Future<void> login(String? email, String? password, String? code) async {
    logger.d('[BitcoinReserve] login');
    _loginStateSubject.add(const BrLoginState.loading());

    final response = await http.post(
      Uri.parse('$brApiBaseUrl/user/generate-token/'),
      headers: {'Authorization': 'Token $mockAuthToken'},
      body: BrLoginRequest(
        username: email,
        password: password,
        tfaCode: code,
        description: 'abc1',
      ).toJson(),
    );
    if (response.statusCode >= 200 && response.statusCode < 300) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      final data = BrLoginResponse.fromJson(json);
      logger.d('[BitcoinReserve] Login: $data');
      if (data.status?.code == BrResponseStatus.success) {
        _loginStateSubject.add(const BrLoginState.success());
      } else {
        _loginStateSubject.add(BrLoginState.failure(data.status?.message));
      }
    } else {
      logger.d('[BitcoinReserve] Login Error: ${response.body}');
      _loginStateSubject.add(const BrLoginState.failure());
    }
  }

  // User Balance

  final _userBalanceErrorSubject = BehaviorSubject<UserBalanceException?>();

  Future<BrUserBalanceResponse?> fetchUserBalance() async {
    logger.d('[BitcoinReserve] Get User Balance');
    final response = await http.get(
      Uri.parse('$brApiBaseUrl/user/balance/'),
      headers: {'Authorization': 'Token $mockAuthToken'},
    );

    if (response.statusCode >= 200 && response.statusCode < 300) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      _userBalanceErrorSubject.add(null);
      final data = BrUserBalanceResponse.fromJson(json);
      logger.d('[BitcoinReserve] User Balance: $data');
      return data;
    } else {
      logger.d('[BitcoinReserve] User Balance Error: ${response.body}');
      final error = UserBalanceException();
      _userBalanceErrorSubject.add(error);
      return null;
    }
  }

  // Transactions

  final _transactionsErrorSubject = BehaviorSubject<TransactionsException?>();

  Future<BrTransactionsResponse?> fetchTransactions([int page = 0]) async {
    logger.d('[BitcoinReserve] Get Transactions');
    final response = await http.get(
      Uri.parse('$brApiBaseUrl/user/transactions/$page'),
      headers: {'Authorization': 'Token $mockAuthToken'},
    );

    if (response.statusCode >= 200 && response.statusCode < 300) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      _transactionsErrorSubject.add(null);
      final data = BrTransactionsResponse.fromJson(json);
      logger.d('[BitcoinReserve] Transactions: $data');
      return data;
    } else {
      logger.d('[BitcoinReserve] Transactions Error: ${response.body}');
      final error = TransactionsException();
      _transactionsErrorSubject.add(error);
      return null;
    }
  }

  // Transaction Details

  final _transactionDetailsErrorSubject =
      BehaviorSubject<TransactionDetailsException?>();

  Future<BrTransactionDetailsResponse?> fetchTransactionDetails(
    String id,
  ) async {
    _transactionDetailsErrorSubject.add(null);
    logger.d('[BitcoinReserve] Get Transaction Details ($id)');
    final response = await http.get(
      Uri.parse('$brApiBaseUrl/user/transaction/$id'),
      headers: {'Authorization': 'Token $mockAuthToken'},
    );

    if (response.statusCode >= 200 && response.statusCode < 300) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      _transactionDetailsErrorSubject.add(null);
      final data = BrTransactionDetailsResponse.fromJson(json);
      logger.d('[BitcoinReserve] Transaction: $data');
      if (data.status?.code == BrResponseStatus.success) {
        return data;
      } else {
        final error = TransactionDetailsException(data.status?.message);
        _transactionDetailsErrorSubject.add(error);
        return null;
      }
    } else {
      logger.d('[BitcoinReserve] Transaction Error: ${response.body}');
      final error = TransactionDetailsException();
      _transactionDetailsErrorSubject.add(error);
      return null;
    }
  }

  // Buy Cost

  final _buyCostSubject = BehaviorSubject<String>();

  late final _buyCostErrorStream = _buyCostSubject.stream.switchMap((e) {
    return e.isEmpty ? Stream.value(BrBuyCostError()) : Stream.value(null);
  });

  void setBuyCost(String cost) {
    _buyCostSubject.add(cost);
    logger.d('[BitcoinReserve] setBuyCost: $cost');
  }

  // Buy Currency

  final _buyCurrencySubject = BehaviorSubject<Currency>();

  void setBuyCurrency(Currency currency) {
    _buyCurrencySubject.add(currency);
    logger.d('[BitcoinReserve] setBuyCurrency: $currency');
  }
}
