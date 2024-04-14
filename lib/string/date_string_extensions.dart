part of snazzy_extensions;

extension DateTimeStringExtensions on String {
  /// Parse date to day name
  /// Parse date to day int
  /// Parse date to month name
  /// Parse date to month int
  /// Parse date to year
  /// Parse date to hours
  /// Parse date to minutes
  /// Parse date to seconds
  /// Parse date to milliseconds
  /// Parse date to DateTime obj
  /// Get number of days between dates
  /// Get Current Hour in 24 hour format
  String get szGetCurrentHourIn24 {
    final date = DateTime.parse(this);

    final formatter = easy_locale.DateFormat('HH');
    return formatter.format(date);
  }

  /// Get Minutes From Time
  String get szGetCurrentMinutes {
    final date = DateTime.parse(this);

    final formatter = easy_locale.DateFormat('mm');
    return formatter.format(date);
  }
}