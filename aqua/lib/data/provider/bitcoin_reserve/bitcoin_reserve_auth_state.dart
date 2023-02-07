import 'package:freezed_annotation/freezed_annotation.dart';

part 'bitcoin_reserve_auth_state.freezed.dart';

@freezed
class BrAuthStatusState with _$BrAuthStatusState {
  const factory BrAuthStatusState.authenticated() = _Authenticated;
  const factory BrAuthStatusState.unauthenticated() = _Unauthenticated;
}

@freezed
class BrLoginState with _$BrLoginState {
  const factory BrLoginState.loading() = LoginLoading;
  const factory BrLoginState.success() = LoginSuccess;
  const factory BrLoginState.failure([String? message]) = LoginFailure;
}
