import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:path_provider/path_provider.dart';

import 'constants/system_ui_overlay_styles.dart';
import 'core/injections/locator.dart';
import 'utils/http_overrides.dart';

String appVersion = '';
Directory dir = Directory('');

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  await runZonedGuarded(
    () async {
      final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

      await EasyLocalization.ensureInitialized();

      FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

      SystemChrome.setSystemUIOverlayStyle(systemUiOverlayDarkStyle);

      await SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
      );

      dir = await getApplicationDocumentsDirectory();

      await configureDependencies();

      HttpOverrides.global = MyHttpOverrides();

      appVersion = (await PackageInfo.fromPlatform()).version;

      await Future.delayed(const Duration(milliseconds: 150));

      runApp(
        ProviderScope(
          child: await builder(),
        ),
      );
    },
    (error, stackTrace) async {
      log(error.toString(), stackTrace: stackTrace);
    },
  );
}
