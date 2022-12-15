// ignore_for_file: no-magic-number

class PillboxContentMultiSettings {
  final double? scrollBarThickness;
  final double spacingChip;
  final double runSpacingChip;
  final PillboxLayout pillboxLayout;
  final double pillboxOverload;

  const PillboxContentMultiSettings({
    this.scrollBarThickness = 3.0,
    this.spacingChip = 5.0,
    this.runSpacingChip = 4.0,
    this.pillboxLayout = PillboxLayout.wrap,
    this.pillboxOverload = double.infinity,
  });
}

enum PillboxLayout {
  wrap,
  scroll,
}
