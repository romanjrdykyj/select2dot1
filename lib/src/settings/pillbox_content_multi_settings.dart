// ignore_for_file: no-magic-number

/// This is a class which contains all the settings of the content of the pillbox in multi select mode.
class PillboxContentMultiSettings {
  /// Thickness of the scroll bar.
  /// Default value is 3.0.
  final double? scrollBarThickness;

  /// The spacing between the chips in the pillbox.
  /// Default value is 5.0.
  final double spacingChip;

  /// The run spacing between the chips in the pillbox.
  /// Default value is 4.0.
  final double runSpacingChip;

  /// The layout of the pillbox.
  /// Default value is [PillboxLayout.wrap].
  final PillboxLayout pillboxLayout;

  /// The maximum amount of chips that can be displayed in the pillbox.
  /// If the number of selected chips is greater than this value, the pillbox will be displayed by [SelectOverloadInfo]
  /// Default value is [double.infinity].
  final double pillboxOverload;

  /// Creating an argument constructor of [PillboxContentMultiSettings] class.
  const PillboxContentMultiSettings({
    this.scrollBarThickness = 3.0,
    this.spacingChip = 5.0,
    this.runSpacingChip = 4.0,
    this.pillboxLayout = PillboxLayout.wrap,
    this.pillboxOverload = double.infinity,
  });
}

/// Available layouts for the pillbox.
enum PillboxLayout {
  /// The selected chips in pillbox are arranged in a wrap.
  wrap,

  /// The selected chips in pillbox are arranged in a horizontal scroll.
  scroll,
}
