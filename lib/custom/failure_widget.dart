import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maze_vpn/core/extensions/context_extensions.dart';

import '../constants/colors.dart';
import '../gen/assets.gen.dart';

enum _Type { failure, warning }

abstract final class EmptyWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String message;
  final _Type type;

  const EmptyWidget({
    required this.onPressed,
    required this.message,
    required this.type,
  });

  const factory EmptyWidget.failure({
    required VoidCallback onPressed,
    required String message,
  }) = _FailureWidget;

  const factory EmptyWidget.warning({
    required VoidCallback onPressed,
    required String message,
  }) = _WarningWidget;
}

final class _FailureWidget extends EmptyWidget {
  const _FailureWidget({
    required super.onPressed,
    required super.message,
  }) : super(type: _Type.failure);

  @override
  Widget build(BuildContext context) {
    return _EmptyWidget(
      onPressed: onPressed,
      message: message,
      type: _Type.failure,
    );
  }
}

final class _WarningWidget extends EmptyWidget {
  const _WarningWidget({
    required super.onPressed,
    required super.message,
  }) : super(type: _Type.warning);

  @override
  Widget build(BuildContext context) {
    return _EmptyWidget(
      onPressed: onPressed,
      message: message,
      type: _Type.warning,
    );
  }
}

class _EmptyWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String message;
  final _Type type;

  const _EmptyWidget({
    required this.onPressed,
    required this.message,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            switch (type) {
              _Type.failure => Assets.icons.failure.svg(height: 120.h),
              _Type.warning => Assets.icons.alert.svg(height: 120.h),
            },
            SizedBox(height: 40.h),
            Text(
              message,
              textAlign: TextAlign.center,
              style: context.labelLarge?.copyWith(color: darkBlue.withOpacity(.75)),
            ),
            SizedBox(height: 30.h),
            FilledButton(
              onPressed: onPressed,
              child: const Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }
}
