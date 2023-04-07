import 'package:flutter/material.dart';
import 'package:select2dot1/src/settings/global_settings.dart';
import 'package:select2dot1/src/settings/overlay/loading_data_overlay_settings.dart';
import 'package:select2dot1/src/utils/event_args.dart';

class LoadingDataOverlay extends StatelessWidget {
  final LoadingDataOverlayBuilder? loadingDataOverlayBuilder;
  final LoadingDataOverlaySettings loadingDataOverlaySettings;
  final GlobalSettings globalSettings;

  const LoadingDataOverlay({
    super.key,
    required this.loadingDataOverlayBuilder,
    required this.loadingDataOverlaySettings,
    required this.globalSettings,
  });

  @override
  Widget build(BuildContext context) {
    if (loadingDataOverlayBuilder != null) {
      // This can't be null anyways.
      // ignore: avoid-non-null-assertion
      return loadingDataOverlayBuilder!(
        context,
        LoadingDataOverlayDetails(
          globalSettings: globalSettings,
        ),
      );
    }

    return Row(
      mainAxisAlignment: loadingDataOverlaySettings.rowMainAxisAlignment,
      children: [
        Padding(
          padding: loadingDataOverlaySettings.padding,
          child: const CircularProgressIndicator.adaptive(),
        ),
      ],
    );
  }
}
