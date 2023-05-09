import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:select2dot1/src/components/overlay/dropdown_content_overlay.dart';
import 'package:select2dot1/src/controllers/select_data_controller.dart';
import 'package:select2dot1/src/settings/global_settings.dart';
import 'package:select2dot1/src/settings/overlay/category_item_overlay_settings.dart';
import 'package:select2dot1/src/settings/overlay/category_name_overlay_settings.dart';
import 'package:select2dot1/src/settings/overlay/dropdown_overlay_settings.dart';
import 'package:select2dot1/src/settings/overlay/list_data_view_overlay_settings.dart';
import 'package:select2dot1/src/settings/overlay/loading_data_overlay_settings.dart';
import 'package:select2dot1/src/settings/overlay/search_bar_overlay_settings.dart';
import 'package:select2dot1/src/settings/overlay/search_empty_info_overlay_settings.dart';
import 'package:select2dot1/src/settings/pillbox_content_multi_settings.dart';
import 'package:select2dot1/src/utils/event_args.dart';

class DropdownOverlay extends StatefulWidget {
  final SelectDataController selectDataController;
  final void Function() overlayHide;
  final AnimationController animationController;
  final LayerLink layerLink;
  final double? appBarMaxHeight;
  final ScrollController? scrollController;
  final PillboxLayout pillboxLayout;
  final DropdownContentOverlayBuilder? dropdownContentOverlayBuilder;
  final DropdownOverlaySettings dropdownOverlaySettings;
  final bool isSearchable;
  final SearchBarOverlayBuilder? searchBarOverlayBuilder;
  final SearchBarOverlaySettings searchBarOverlaySettings;
  final LoadingDataOverlayBuilder? loadingDataOverlayBuilder;
  final LoadingDataOverlaySettings loadingDataOverlaySettings;
  final SearchEmptyInfoOverlayBuilder? searchEmptyInfoOverlayBuilder;
  final SearchEmptyInfoOverlaySettings searchEmptyInfoOverlaySettings;
  final ListDataViewOverlayBuilder? listDataViewOverlayBuilder;
  final ListDataViewOverlaySettings listDataViewOverlaySettings;
  final CategoryNameOverlayBuilder? categoryNameOverlayBuilder;
  final CategoryNameOverlaySettings categoryNameOverlaySettings;
  final CategoryItemOverlayBuilder? categoryItemOverlayBuilder;
  final CategoryItemOverlaySettings categoryItemOverlaySettings;
  final GlobalSettings globalSettings;

  const DropdownOverlay({
    super.key,
    required this.selectDataController,
    required this.overlayHide,
    required this.animationController,
    required this.layerLink,
    required this.appBarMaxHeight,
    required this.scrollController,
    required this.pillboxLayout,
    required this.dropdownContentOverlayBuilder,
    required this.dropdownOverlaySettings,
    required this.isSearchable,
    required this.searchBarOverlayBuilder,
    required this.searchBarOverlaySettings,
    required this.loadingDataOverlayBuilder,
    required this.loadingDataOverlaySettings,
    required this.searchEmptyInfoOverlayBuilder,
    required this.searchEmptyInfoOverlaySettings,
    required this.listDataViewOverlayBuilder,
    required this.listDataViewOverlaySettings,
    required this.categoryNameOverlayBuilder,
    required this.categoryNameOverlaySettings,
    required this.categoryItemOverlayBuilder,
    required this.categoryItemOverlaySettings,
    required this.globalSettings,
  });

  @override
  State<DropdownOverlay> createState() => _DropdownOverlayState();
}

class _DropdownOverlayState extends State<DropdownOverlay> {
  bool isBottomDirectAnchor = true;
  bool isCalcAnchorFinished = false;
  final keyDropdownOverlayContent = GlobalKey();
  Size sizeDropdownOverlayContent = const Size(0, 0);

  @override
  void initState() {
    super.initState();

    _calculateDropdownOverlayContentSize();
    _calculateDirectAnchor();
    widget.scrollController?.addListener(_calculateDirectAnchor);
  }

  @override
  void dispose() {
    widget.scrollController?.removeListener(_calculateDirectAnchor);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      width: widget.layerLink.leaderSize?.width,
      child: CompositedTransformFollower(
        link: widget.layerLink,
        followerAnchor:
            isBottomDirectAnchor ? Alignment.topLeft : Alignment.bottomLeft,
        targetAnchor:
            isBottomDirectAnchor ? Alignment.bottomLeft : Alignment.topLeft,
        offset: widget.dropdownOverlaySettings.offset,
        child: Visibility(
          visible: isCalcAnchorFinished,
          maintainSize: true,
          maintainAnimation: true,
          maintainInteractivity: true,
          maintainSemantics: true,
          maintainState: true,
          child: NotificationListener<SizeChangedLayoutNotification>(
            // A little less pedantic style - its okey.
            // ignore: prefer-extracting-callbacks
            onNotification: (notification) {
              _calculateDropdownOverlayContentSize();
              _calculateDirectAnchor();

              return true;
            },
            child: SizeChangedLayoutNotifier(
              child: ClipRRect(
                borderRadius: widget.dropdownOverlaySettings.decoration.borderRadius,
                child: Material(
                  color: Colors.transparent,
                  child: AnimatedBuilder(
                    animation: widget.animationController,
                    builder: (context, child) {
                      if (widget.dropdownOverlaySettings.animationBuilder !=
                          null) {
                        // Its can be null anyway.
                        // ignore: avoid-non-null-assertion
                        return widget.dropdownOverlaySettings.animationBuilder!(
                          context,
                          child,
                          widget.animationController,
                        );
                      }
              
                      return ScaleTransition(
                        scale: CurvedAnimation(
                          parent: widget.animationController,
                          curve:
                              widget.dropdownOverlaySettings.sizeAnimationCurve,
                        ),
                        child: FadeTransition(
                          opacity: CurvedAnimation(
                            parent: widget.animationController,
                            curve:
                                widget.dropdownOverlaySettings.fadeAnimationCurve,
                          ),
                          child: child,
                        ),
                      );
                    },
                    child: DropdownContentOverlay(
                      key: keyDropdownOverlayContent,
                      selectDataController: widget.selectDataController,
                      overlayHide: widget.overlayHide,
                      layerLink: widget.layerLink,
                      scrollController: widget.scrollController,
                      appBarMaxHeight: widget.appBarMaxHeight,
                      dropdownContentOverlayBuilder:
                          widget.dropdownContentOverlayBuilder,
                      dropdownOverlaySettings: widget.dropdownOverlaySettings,
                      isSearchable: widget.isSearchable,
                      searchBarOverlayBuilder: widget.searchBarOverlayBuilder,
                      searchBarOverlaySettings: widget.searchBarOverlaySettings,
                      loadingDataOverlayBuilder: widget.loadingDataOverlayBuilder,
                      loadingDataOverlaySettings:
                          widget.loadingDataOverlaySettings,
                      searchEmptyInfoOverlayBuilder:
                          widget.searchEmptyInfoOverlayBuilder,
                      searchEmptyInfoOverlaySettings:
                          widget.searchEmptyInfoOverlaySettings,
                      listDataViewOverlayBuilder:
                          widget.listDataViewOverlayBuilder,
                      listDataViewOverlaySettings:
                          widget.listDataViewOverlaySettings,
                      categoryNameOverlayBuilder:
                          widget.categoryNameOverlayBuilder,
                      categoryNameOverlaySettings:
                          widget.categoryNameOverlaySettings,
                      categoryItemOverlayBuilder:
                          widget.categoryItemOverlayBuilder,
                      categoryItemOverlaySettings:
                          widget.categoryItemOverlaySettings,
                      globalSettings: widget.globalSettings,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  bool _isFitBottom() {
    final offsetPillbox = widget.layerLink.leader?.offset ?? const Offset(0, 0);
    final heightPillbox = widget.layerLink.leaderSize?.height ?? 0;

    double viewDimension = widget
            .scrollController?.position.viewportDimension ??
        (MediaQuery.of(context).size.height - (widget.appBarMaxHeight ?? 0));

    return offsetPillbox.dy +
            heightPillbox +
            sizeDropdownOverlayContent.height -
            viewDimension <=
        0;
  }

  bool _isFitTop() {
    final offsetPillbox = widget.layerLink.leader?.offset ?? const Offset(0, 0);

    return offsetPillbox.dy - sizeDropdownOverlayContent.height > 0;
  }

  void _changeDirectAnchor() {
    if (mounted) {
      setState(() {
        isBottomDirectAnchor = !isBottomDirectAnchor;
      });
    }
  }

  void _calculateDirectAnchor() {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      if (isBottomDirectAnchor) {
        if (!_isFitBottom() && _isFitTop()) {
          _changeDirectAnchor();
        }
      } else {
        if (!_isFitTop() && _isFitBottom()) {
          _changeDirectAnchor();
        }
      }
      if (!isCalcAnchorFinished) {
        if (mounted) {
          setState(() {
            isCalcAnchorFinished = true;
          });
        }
      }
    });
  }

  void _calculateDropdownOverlayContentSize() {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      BuildContext? context = keyDropdownOverlayContent.currentContext;
      if (context != null) {
        if (mounted) {
          setState(() {
            sizeDropdownOverlayContent = context.size ?? const Size(0, 0);
          });
        }
      }
    });
  }
}
