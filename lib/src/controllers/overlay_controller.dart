import 'dart:async';

import 'package:flutter/material.dart';
import 'package:select2dot1/src/utils/animated_state.dart';

mixin OverlayController on AnimatedState {
  // It has to be late.
  // ignore: avoid-late-keyword
  late final OverlayEntry? _overlayEntry;

  OverlayState? _overlay;
  OverlayEntry? _dropdownOverlay;
  OverlayEntry? _barrierOverlay;
  final ValueNotifier<bool> _isVisibleOvarlay = ValueNotifier<bool>(false);

  set setOverlyEntry(OverlayEntry overlayEntry) {
    _overlayEntry = overlayEntry;
  }

  ValueNotifier<bool> get getIsVisibleOvarlay => _isVisibleOvarlay;

  void showOverlay() {
    assert(_overlayEntry != null);
    if (!_isVisibleOvarlay.value) {
      // Added variable 'isVisivleOverlay' is fix problem with double exceution click when eg. browser doesnt active but visible (eg. two app on screen - one active, one nonActive).

      _dropdownOverlay = _overlayEntry;

      _barrierOverlay = OverlayEntry(
        builder: (context) {
          return GestureDetector(
            onTap: hideOverlay,
          );
        },
      );

      _overlay = Overlay.of(context);
      assert(_overlay != null);

      if (_barrierOverlay != null) {
        // This can't be null anyways.
        // ignore:avoid-non-null-assertion
        _overlay?.insert(_barrierOverlay!);
        _isVisibleOvarlay.value = true;
      }

      if (_dropdownOverlay != null) {
        // This can't be null anyways.
        // ignore:avoid-non-null-assertion
        _overlay?.insert(_dropdownOverlay!);
        // I dont have to get return value from this function.
        // ignore: avoid-ignoring-return-values
        getAnimationController.forward();
      }
    }
  }

  void hideOverlay() {
    unawaited(
      getAnimationController.reverse().then<void>((void value) {
        if (_dropdownOverlay != null && (_dropdownOverlay?.mounted ?? false)) {
          _dropdownOverlay?.remove();
          _dropdownOverlay = null;
        }
        if (_barrierOverlay != null && (_barrierOverlay?.mounted ?? false)) {
          _barrierOverlay?.remove();
          _barrierOverlay = null;
        }
      }),
    );
    _isVisibleOvarlay.value = false;
  }

  void refreshOverlayState(_) {
    if (_overlay == null) {
      return;
    }
    // This can't be null, assert is above.
    // ignore: avoid-non-null-assertion
    if (_overlay!.mounted) {
      // Just refresh.
      // ignore: no-empty-block
      _overlay?.setState(() {});
    }
  }
}
