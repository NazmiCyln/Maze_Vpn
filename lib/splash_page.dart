import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'constants/colors.dart';

import 'gen/assets.gen.dart';
import 'router/router.dart';

@RoutePage()
class SplashPage extends HookConsumerWidget {
  const SplashPage();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(
      () {
        FlutterNativeSplash.remove();

        Future.delayed(const Duration(seconds: 3), () async {
          if (context.mounted) {
            context.replaceRoute(const HomeRoute());
          }
        });

        return null;
      },
      [],
    );
    return Material(
      color: darkGray.withOpacity(0.6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.icons.logo.svg(
            height: 275.r,
            colorFilter: const ColorFilter.mode(textColor, BlendMode.srcIn),
          ),
        ],
      ),
    );
  }
}
