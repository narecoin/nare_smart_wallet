class BitcoinCommitTransactionException implements Exception {
  BitcoinCommitTransactionException(this.errorMessage);

  final String errorMessage;

  @override
  String toString() => 'Transaction commit error: $errorMessage';
}