import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';

enum _Type { cardColor, gray }

abstract final class CustomFilledButton extends StatelessWidget {
  final void Function()? onPressed;
  final Widget child;
  final bool isGreen;
  final void Function()? onLongPress;
  final void Function(bool)? onHover;
  final void Function(bool)? onFocusChange;
  final FocusNode? focusNode;
  final bool autofocus;
  final Clip clipBehavior;
  final WidgetStatesController? statesController;
  final _Type type;

  const CustomFilledButton({
    required this.type,
    required this.onPressed,
    required this.child,
    this.isGreen = false,
    this.onLongPress,
    this.onHover,
    this.onFocusChange,
    this.focusNode,
    this.statesController,
    this.autofocus = false,
    this.clipBehavior = Clip.none,
  });

  const factory CustomFilledButton.gray({
    required void Function()? onPressed,
    required Widget child,
    bool isGreen,
    void Function()? onLongPress,
    void Function(bool)? onHover,
    void Function(bool)? onFocusChange,
    FocusNode? focusNode,
    bool autofocus,
    Clip clipBehavior,
    WidgetStatesController? statesController,
  }) = _GrayButton;

  const factory CustomFilledButton.cardColor({
    required void Function()? onPressed,
    required Widget child,
    bool isGreen,
    void Function()? onLongPress,
    void Function(bool)? onHover,
    void Function(bool)? onFocusChange,
    FocusNode? focusNode,
    bool autofocus,
    Clip clipBehavior,
    WidgetStatesController? statesController,
  }) = _CardColor;

  // const factory CustomDialog.success({
}

final class _CardColor extends CustomFilledButton {
  const _CardColor({
    super.onPressed,
    required super.child,
    super.isGreen = false,
    super.onLongPress,
    super.onHover,
    super.onFocusChange,
    super.focusNode,
    super.statesController,
    super.autofocus = false,
    super.clipBehavior = Clip.none,
  }) : super(type: _Type.cardColor);

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith<Color>(
          (states) {
            if (states.contains(WidgetState.disabled)) {
              return gray;
            } else {
              return cardColor;
            }
          },
        ),
        minimumSize: WidgetStateProperty.all<Size>(Size(180.w, 50.h)),
        shape: WidgetStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.r)),
        ),
        padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
          EdgeInsets.symmetric(horizontal: 8.w),
        ),
      ),
      onLongPress: onLongPress,
      onHover: onHover,
      onFocusChange: onFocusChange,
      focusNode: focusNode,
      autofocus: autofocus,
      clipBehavior: clipBehavior,
      statesController: statesController,
      child: child,
    );
  }
}

final class _GrayButton extends CustomFilledButton {
  const _GrayButton({
    super.onPressed,
    required super.child,
    super.isGreen = false,
    super.onLongPress,
    super.onHover,
    super.onFocusChange,
    super.focusNode,
    super.statesController,
    super.autofocus = false,
    super.clipBehavior = Clip.none,
  }) : super(type: _Type.gray);

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: ButtonStyle(
        foregroundColor: WidgetStateProperty.resolveWith<Color>(
          (states) {
            if (states.contains(WidgetState.disabled)) {
              return darkBlue;
            } else {
              return darkBlue;
            }
          },
        ),
        backgroundColor: WidgetStateProperty.resolveWith<Color>(
          (states) {
            if (states.contains(WidgetState.disabled)) {
              return gray;
            } else {
              return gray;
            }
          },
        ),
      ),
      onLongPress: onLongPress,
      onHover: onHover,
      onFocusChange: onFocusChange,
      focusNode: focusNode,
      autofocus: autofocus,
      clipBehavior: clipBehavior,
      statesController: statesController,
      child: child,
    );
  }
}
