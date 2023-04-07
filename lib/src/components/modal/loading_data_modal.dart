import 'package:flutter/material.dart';
import 'package:select2dot1/src/settings/global_settings.dart';
import 'package:select2dot1/src/settings/modal/loading_data_modal_settings.dart';
import 'package:select2dot1/src/utils/event_args.dart';

class LoadingDataModal extends StatelessWidget {
  final LoadingDataModalBuilder? loadingDataModalBuilder;
  final LoadingDataModalSettings loadingDataModalSettings;
  final GlobalSettings globalSettings;

  const LoadingDataModal({
    super.key,
    required this.loadingDataModalBuilder,
    required this.loadingDataModalSettings,
    required this.globalSettings,
  });

  @override
  Widget build(BuildContext context) {
    if (loadingDataModalBuilder != null) {
      // This can't be null anyways.
      // ignore: avoid-non-null-assertion
      return loadingDataModalBuilder!(
        context,
        LoadingDataModalDetails(
          globalSettings: globalSettings,
        ),
      );
    }

    return Center(
      child: Padding(
        padding: loadingDataModalSettings.padding,
        child: const CircularProgressIndicator.adaptive(),
      ),
    );
  }
}
