class EnvironmentNotFoundException implements Exception {
  final String value;

  EnvironmentNotFoundException(this.value);

  @override
  String toString() {
    return 'This $value is not found in .env file';
  }
}
