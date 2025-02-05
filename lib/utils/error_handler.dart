class EPGException implements Exception {
  final String message;
  final String? code;
  final dynamic originalError;

  EPGException(this.message, {this.code, this.originalError});

  @override
  String toString() => 'EPGException: $message${code != null ? ' (Code: $code)' : ''}';
}