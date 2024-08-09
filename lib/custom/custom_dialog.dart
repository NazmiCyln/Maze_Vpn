import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/colors.dart';
import '../../../../gen/assets.gen.dart';
import '../common/backgrounded_icon.dart';
import '../core/extensions/context_extensions.dart';
import 'custom_filled_button.dart';

enum _Type { success, failure, warning }

abstract final class CustomDialog extends StatelessWidget {
  final VoidCallback? onPrimaryButtonPressed;
  final VoidCallback? onSecondaryButtonPressed;
  final VoidCallback? onClosedPressed;
  final String? secondaryButtonText;
  final String? title;
  final String? subtitle;
  final String? primaryButtonText;
  final _Type type;

  const CustomDialog({
    required this.type,
    this.subtitle,
    this.primaryButtonText,
    this.secondaryButtonText,
    this.onPrimaryButtonPressed,
    this.onSecondaryButtonPressed,
    this.onClosedPressed,
    this.title,
  });

  const factory CustomDialog.failure({
    String? subtitle,
    VoidCallback? onPrimaryButtonPressed,
    VoidCallback? onSecondaryButtonPressed,
    VoidCallback? onClosedPressed,

    /// Defaults to `error.tr()`.
    String? title,

    /// Defaults to `ok.tr()`.
    String? primaryButtonText,
    String? secondaryButtonText,
  }) = _FailureDialog;

  const factory CustomDialog.success({
    String? subtitle,
    VoidCallback? onPrimaryButtonPressed,
    VoidCallback? onSecondaryButtonPressed,
    VoidCallback? onClosedPressed,

    /// Defaults to `success.tr()`.
    String? title,

    /// Defaults to `ok.tr()`.
    String? primaryButtonText,
    String? secondaryButtonText,
  }) = _SuccessDialog;

  const factory CustomDialog.warning({
    String? subtitle,
    VoidCallback? onPrimaryButtonPressed,
    VoidCallback? onSecondaryButtonPressed,
    VoidCallback? onClosedPressed,

    /// Defaults to `warning.tr()`.
    String? title,

    /// Defaults to `ok.tr()`.
    String? primaryButtonText,
    String? secondaryButtonText,
  }) = _WarningDialog;

  Future<T?> show<T>(BuildContext context) {
    return showDialog<T>(
      context: context,
      barrierDismissible: false,
      barrierColor: bgColor.withOpacity(0.6),
      builder: (context) => this,
    );
  }
}

final class _FailureDialog extends CustomDialog {
  const _FailureDialog({
    super.subtitle,
    super.onPrimaryButtonPressed,
    super.onSecondaryButtonPressed,
    super.onClosedPressed,
    super.title,
    super.primaryButtonText,
    super.secondaryButtonText,
  }) : super(type: _Type.failure);

  @override
  Widget build(BuildContext context) {
    return _SimpleDialog(
      onPrimaryButtonPressed: onPrimaryButtonPressed ?? context.maybePop,
      onSecondaryButtonPressed: onSecondaryButtonPressed,
      onClosedPressed: onClosedPressed,
      title: title ?? "actionFailed".tr(),
      subtitle: subtitle,
      primaryButtonText: primaryButtonText ?? 'tryAgain'.tr(),
      secondaryButtonText: secondaryButtonText,
      type: type,
    );
  }
}

final class _SuccessDialog extends CustomDialog {
  const _SuccessDialog({
    super.subtitle,
    super.onPrimaryButtonPressed,
    super.onSecondaryButtonPressed,
    super.onClosedPressed,
    super.title,
    super.primaryButtonText,
    super.secondaryButtonText,
  }) : super(type: _Type.success);

  @override
  Widget build(BuildContext context) {
    return _SimpleDialog(
      onPrimaryButtonPressed: onPrimaryButtonPressed ?? context.maybePop,
      onSecondaryButtonPressed: onSecondaryButtonPressed,
      onClosedPressed: onClosedPressed,
      title: title ?? "actionCompleted".tr(),
      subtitle: subtitle,
      primaryButtonText: primaryButtonText ?? 'ok'.tr(),
      secondaryButtonText: secondaryButtonText,
      type: type,
    );
  }
}

final class _WarningDialog extends CustomDialog {
  const _WarningDialog({
    super.subtitle,
    super.onPrimaryButtonPressed,
    super.onSecondaryButtonPressed,
    super.onClosedPressed,
    super.title,
    super.primaryButtonText,
    super.secondaryButtonText,
  }) : super(type: _Type.warning);

  @override
  Widget build(BuildContext context) {
    return _SimpleDialog(
      onPrimaryButtonPressed: onPrimaryButtonPressed ?? context.maybePop,
      onSecondaryButtonPressed: onSecondaryButtonPressed,
      onClosedPressed: onClosedPressed,
      title: title ?? "areYouSure".tr(),
      subtitle: subtitle,
      primaryButtonText: primaryButtonText ?? 'ok'.tr(),
      secondaryButtonText: secondaryButtonText,
      type: type,
    );
  }
}

class _SimpleDialog extends StatelessWidget {
  final VoidCallback onPrimaryButtonPressed;
  final String title;
  final String? subtitle;
  final String primaryButtonText;
  final _Type type;
  final String? secondaryButtonText;
  final VoidCallback? onSecondaryButtonPressed;
  final VoidCallback? onClosedPressed;

  const _SimpleDialog({
    required this.type,
    required this.title,
    required this.subtitle,
    required this.primaryButtonText,
    required this.onPrimaryButtonPressed,
    this.onSecondaryButtonPressed,
    this.secondaryButtonText,
    this.onClosedPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      contentPadding: EdgeInsets.zero,
      clipBehavior: Clip.hardEdge,
      insetPadding: EdgeInsets.symmetric(horizontal: 16.r),
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.r,
            vertical: 24.r,
          ),
          child: SizedBox(
            width: context.screenWidth,
            child: Column(
              children: [
                _CloseIcon(onPressed: onClosedPressed),
                SizedBox(height: 8.h),
                _Icon(type: type),
                SizedBox(height: 32.h),
                _Title(text: title),
                if (subtitle != null) ...[
                  SizedBox(height: 12.h),
                  _Subtitle(text: subtitle!),
                  SizedBox(height: 32.h),
                ] else
                  SizedBox(height: 48.h),
                Row(
                  children: [
                    if (onSecondaryButtonPressed != null && secondaryButtonText != null) ...[
                      Expanded(
                        child: _OutlinedButton(
                          onPressed: onSecondaryButtonPressed!,
                          text: secondaryButtonText!,
                        ),
                      ),
                      SizedBox(width: 10.w),
                    ],
                    Expanded(
                      child: _Button(onPressed: onPrimaryButtonPressed, type: type, buttonText: primaryButtonText),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _CloseIcon extends StatelessWidget {
  final VoidCallback? onPressed;

  const _CloseIcon({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: IconButton(
        onPressed: onPressed ?? context.maybePop,
        icon: Icon(
          Icons.close,
          color: darkBlue.withOpacity(.6),
          size: 24.r,
        ),
      ),
    );
  }
}

class _Icon extends StatelessWidget {
  final _Type type;

  const _Icon({required this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      width: 145.w,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: switch (type) {
        _Type.failure => BackgroundedIcon(backgroundColor: red, icon: Assets.icons.failure),
        _Type.success => BackgroundedIcon(backgroundColor: green, icon: Assets.icons.success),
        _Type.warning => BackgroundedIcon(backgroundColor: yellow, icon: Assets.icons.alert),
      },
    );
  }
}

class _Title extends StatelessWidget {
  final String text;

  const _Title({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.titleMedium,
      textAlign: TextAlign.center,
    );
  }
}

class _Subtitle extends StatelessWidget {
  final String text;

  const _Subtitle({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.bodyLarge,
      textAlign: TextAlign.center,
    );
  }
}

class _Button extends StatelessWidget {
  final VoidCallback onPressed;
  final _Type type;
  final String buttonText;

  const _Button({
    required this.onPressed,
    required this.type,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      child: FittedBox(
        child: Text(
          buttonText,
        ),
      ),
    );
  }
}

class _OutlinedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const _OutlinedButton({required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return CustomFilledButton.gray(
      onPressed: onPressed,
      child: FittedBox(
        child: Text(
          text,
          style: context.bodySmall?.copyWith(
            color: darkBlue.withOpacity(.6),
            fontSize: 16.sp,
          ),
        ),
      ),
    );
  }
}
