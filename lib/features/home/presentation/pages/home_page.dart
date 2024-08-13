import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:maze_vpn/common/loading_widget.dart';
import 'package:maze_vpn/constants/colors.dart';
import 'package:maze_vpn/core/extensions/context_extensions.dart';
import 'package:maze_vpn/core/extensions/duration_extensin.dart';
import 'package:maze_vpn/custom/custom_app_bar.dart';
import 'package:maze_vpn/custom/custom_filled_button.dart';
import 'package:maze_vpn/services/vpn/vpn_service.dart';

import '../../../../custom/custom_dialog.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../router/router.dart';
import '../../domain/models/vpn_status.dart';
import '../providers/home_provider.dart';

@RoutePage()
class HomePage extends HookConsumerWidget {
  const HomePage();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeProvider);

    VpnService.vpnStageSnapshot().listen((event) {
      if (event == VpnService.vpnConnected) {
        ref.read(homeProvider.notifier).connectVpnStatus();
      }
      if (event == VpnService.vpnDisconnected) {
        ref.read(homeProvider.notifier).disconnectVpnStatus();
      }
      if (event == VpnService.vpnConnecting || event == VpnService.vpnPrepare) {
        ref.read(homeProvider.notifier).connectingVpnStatus();
      }
    });

    ref.listen(
      homeProvider,
      (previous, next) {
        if (previous!.failure != next.failure) {
          next.failure.fold(
            () {},
            (a) => CustomDialog.failure(
              title: "Error",
              subtitle: a.message,
              primaryButtonText: "Try Again",
              onPrimaryButtonPressed: () {
                context.router.maybePop();
                ref.read(homeProvider.notifier).refreshVpnServers();
              },
              onClosedPressed: () {
                context.router.maybePop();
                ref.read(homeProvider.notifier).refreshVpnServers();
              },
            ).show(context),
          );
        }
      },
    );

    return Scaffold(
      appBar: CustomAppBar(
        title: 'Home Page',
        leading: Padding(
          padding: EdgeInsets.all(5.r),
          child: Assets.icons.logo.svg(
            colorFilter: const ColorFilter.mode(textColor, BlendMode.srcIn),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => context.pushRoute(const IpAddressRoute()),
            icon: Icon(Icons.info_outline, size: 32.r),
          ),
          SizedBox(width: 10.w),
        ],
      ),
      body: state.vpnServersLoading
          ? const LoadingWidget()
          : Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                children: [
                  SizedBox(height: 20.h),
                  CustomFilledButton.cardColor(
                    onPressed: () => context.pushRoute(const VpnServersListRoute()),
                    child: FittedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(CupertinoIcons.globe, color: darkBlue),
                          SizedBox(width: 10.w),
                          Text('Change Location', style: context.bodyLarge?.copyWith(color: darkBlue)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  switch (state.vpnStatusEnum) {
                    VpnStatusEnum.connecting => Container(
                        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                        decoration: BoxDecoration(
                          color: cardColor,
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Text(
                          'Connecting',
                          style: context.labelLarge?.copyWith(color: textColor),
                        ),
                      ),
                    VpnStatusEnum.connected => Container(
                        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                        decoration: BoxDecoration(
                          color: cardColor,
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Text(
                          'Connected',
                          style: context.labelLarge?.copyWith(color: green),
                        ),
                      ),
                    VpnStatusEnum.disconnected => Container(
                        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                        decoration: BoxDecoration(
                          color: cardColor,
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Text(
                          'Ready',
                          style: context.labelLarge?.copyWith(color: textColor),
                        ),
                      ),
                  },
                  SizedBox(height: 10.h),
                  SizedBox(
                    height: 200.h,
                    child: switch (state.vpnStatusEnum) {
                      VpnStatusEnum.connecting => const _ConnectingStatusButton(),
                      VpnStatusEnum.connected => const _ConnectedStatusButton(),
                      VpnStatusEnum.disconnected => const _DisconnectedStatusButton(),
                    },
                  ),
                  SizedBox(
                    height: 35.h,
                    child: state.vpnStatusEnum == VpnStatusEnum.connected
                        ? Text(state.time.formatDurationHHmmss, style: context.displayMedium)
                        : const SizedBox.shrink(),
                  ),
                  SizedBox(height: 40.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _InformationCard(
                        title: state.selectedVpn.fold(() => '', (a) => a.countryLong),
                        value: "COUNTRY ",
                        color: darkGray,
                        icon: state.selectedVpn.fold(() => Icons.vpn_lock_outlined, (a) => null),
                        flagPath: state.selectedVpn.fold(() => null, (a) => a.countryShort),
                      ),
                      _InformationCard(
                        title: '${state.selectedVpn.fold(() => '', (a) => a.ping)} ms',
                        value: "PING",
                        color: yellow,
                        icon: Icons.equalizer_rounded,
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  StreamBuilder<VpnStatus?>(
                    stream: VpnService.vpnStatusSnapshot(),
                    builder: (context, snapshot) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _InformationCard(
                            title: state.selectedVpn.fold(() => '', (a) => snapshot.data?.byteIn ?? '0 kbps'),
                            value: "DOWNLOAD",
                            color: green,
                            icon: Icons.arrow_downward_rounded,
                          ),
                          _InformationCard(
                            title: state.selectedVpn.fold(() => '', (a) => snapshot.data?.byteOut ?? '0 kbps'),
                            value: "UPLOAD",
                            color: primary,
                            icon: Icons.arrow_upward_rounded,
                          ),
                        ],
                      );
                    },
                  ),
                  SizedBox(height: 20.h),
                ],
              ),
            ),
    );
  }
}

class _InformationCard extends StatelessWidget {
  const _InformationCard({
    required this.title,
    required this.value,
    required this.color,
    this.icon,
    this.flagPath,
  });

  final String title;
  final String value;
  final Color color;
  final IconData? icon;
  final String? flagPath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenWidth * .45,
      child: Column(
        children: [
          Container(
            height: 64.r,
            width: 64.r,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: flagPath != null
                  ? CircleAvatar(
                      radius: 32.r,
                      backgroundImage: AssetImage("assets/flags/${flagPath?.toLowerCase()}.png"),
                    )
                  : Icon(icon, size: 32.r, color: Colors.white),
            ),
          ),
          SizedBox(height: 6.h),
          Text(
            title,
            style: context.displaySmall?.copyWith(color: darkBlue),
          ),
          SizedBox(height: 6.h),
          Text(
            value,
            style: context.bodyMedium?.copyWith(color: darkBlue.withOpacity(.7)),
          ),
        ],
      ),
    );
  }
}

class _ConnectingStatusButton extends ConsumerWidget {
  const _ConnectingStatusButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () async => await ref.read(homeProvider.notifier).stopVpn(),
      child: Lottie.asset(Assets.animations.buttonGray),
    );
  }
}

class _ConnectedStatusButton extends ConsumerWidget {
  const _ConnectedStatusButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () async => await ref.read(homeProvider.notifier).stopVpn(),
      child: Lottie.asset(Assets.animations.buttonGreen),
    );
  }
}

class _DisconnectedStatusButton extends ConsumerWidget {
  const _DisconnectedStatusButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () async {
        ref.read(homeProvider.notifier).changeSelectedVpn(none());
        await ref.read(homeProvider.notifier).connectToVpn();
      },
      child: Lottie.asset(Assets.animations.buttonPrimary),
    );
  }
}
