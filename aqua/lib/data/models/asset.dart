class Asset {
  String assetId;
  int amount;
  String name;
  String ticker;
  int precision;
  bool isLBTC;
  bool isUSDt;
  String? domain;

  Asset({
    this.assetId = '',
    this.amount = 0,
    this.name = '',
    this.ticker = '',
    this.precision = 8,
    this.domain,
    required this.isUSDt,
    required this.isLBTC,
  });

  bool get isBTC {
    return assetId == 'btc';
  }

  bool get selectable {
    return !isBTC && !isLBTC && !isUSDt;
  }

  bool get hasFiatRate {
    return isBTC || isLBTC;
  }

  Asset copyWith({
    String? assetId,
    int? amount,
    String? name,
    String? ticker,
    int? precision,
    String? domain,
    bool? isLBTC,
    bool? isUSDt,
  }) {
    return Asset(
      assetId: assetId ?? this.assetId,
      amount: amount ?? this.amount,
      name: name ?? this.name,
      ticker: ticker ?? this.ticker,
      precision: precision ?? this.precision,
      domain: domain,
      isLBTC: isLBTC ?? this.isLBTC,
      isUSDt: isUSDt ?? this.isUSDt,
    );
  }

  @override
  String toString() {
    return 'Asset(assetId: $assetId, amount: $amount, name: $name, ticker: $ticker, precision: $precision, isLBTC: $isLBTC, isUSDt: $isUSDt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Asset &&
        other.assetId == assetId &&
        other.amount == amount &&
        other.name == name &&
        other.ticker == ticker &&
        other.precision == precision &&
        other.domain == domain &&
        other.isLBTC == isLBTC &&
        other.isUSDt == isUSDt;
  }

  @override
  int get hashCode {
    return assetId.hashCode ^
        amount.hashCode ^
        name.hashCode ^
        ticker.hashCode ^
        precision.hashCode ^
        domain.hashCode ^
        isLBTC.hashCode ^
        isUSDt.hashCode;
  }
}
