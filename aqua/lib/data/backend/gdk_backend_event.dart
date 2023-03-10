enum GdkBackendEvent {
  init,
  generateMnemonic12,
  validateMnemonic,
  connect,
  disconnect,
  loginUser,
  getTransactions,
  getBalance,
  getNetworks,
  refreshAssets,
  isValidAddress,
  getSubaccount,
  getReceiveAddress,
  getPreviousAddresses,
  getFeeEstimates,
  createTransaction,
  signTransaction,
  sendTransaction,
  createPset,
  signPset,
  convertAmount,
  registerNetwork,
  setTransactionMemo,
  onFeeEstimates,
  onBlockHeight,
  onSettings,
  onTransaction,
  onSession,
  onNetwork,
}
