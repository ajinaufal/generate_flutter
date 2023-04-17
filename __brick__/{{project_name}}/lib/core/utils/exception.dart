class ServerException implements Exception {
  const ServerException({required this.message, required this.errorCode});

  final String errorCode;
  final String message;

  @override
  String toString() => 'ServerException: $message [$errorCode]';
}
