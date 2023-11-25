extension StringExtension on String {
  String get parseItuneSearchTerm {
    return replaceAll(' ', '+');
  }
}
