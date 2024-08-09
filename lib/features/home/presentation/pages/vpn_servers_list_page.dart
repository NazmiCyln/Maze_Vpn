import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:maze_vpn/core/extensions/context_extensions.dart';
import 'package:maze_vpn/core/extensions/int_extension.dart';
import 'package:maze_vpn/custom/custom_app_bar.dart';

import '../../../../common/loading_widget.dart';
import '../../../../constants/colors.dart';
import '../../../../custom/failure_widget.dart';
import '../../../../gen/assets.gen.dart';
import '../providers/home_provider.dart';

@RoutePage()
class VpnServersListPage extends ConsumerWidget {
  const VpnServersListPage();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeProvider);

    return Scaffold(
      appBar: CustomAppBar(title: 'VPN Servers (${state.vpnServers.length})'),
      body: state.vpnServersLoading
          ? const LoadingWidget()
          : state.vpnServers.isEmpty
              ? EmptyWidget.warning(
                  message: 'Listelenecek sunucu bulunamadı. Tekrar deneyin.',
                  onPressed: () => ref.read(homeProvider.notifier).refreshVpnServers(),
                )
              : RefreshIndicator(
                  onRefresh: () => ref.read(homeProvider.notifier).refreshVpnServers(),
                  child: ListView.separated(
                    itemCount: state.vpnServers.length,
                    shrinkWrap: true,
                    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                    separatorBuilder: (context, index) => SizedBox(height: 12.h),
                    itemBuilder: (context, index) {
                      final value = state.vpnServers[index];

                      return ListTile(
                        onTap: () async {
                          // await ref.read(homeProvider.notifier).stopVpn();

                          await ref.read(homeProvider.notifier).changeSelectedVpn(some(value));

                          // ignore: use_build_context_synchronously
                          context.maybePop();

                          await ref.read(homeProvider.notifier).connectToVpn();
                        },
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
                        contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
                        tileColor: gray,
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(6.r),
                          child: Image.asset(
                            'assets/flags/${value.countryShort.toLowerCase()}.png',
                            width: 50.w,
                            height: 35.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                        horizontalTitleGap: 14.r,
                        dense: true,
                        title: Text(
                          value.countryLong,
                          style: context.displaySmall?.copyWith(color: darkBlue.withOpacity(.75)),
                        ),
                        subtitle: Row(
                          children: [
                            Assets.icons.speed.svg(height: 24.h),
                            SizedBox(width: 4.w),
                            Text(
                              value.speed.formatBytes(1),
                              style: context.bodyMedium?.copyWith(color: darkBlue.withOpacity(.5)),
                            ),
                            SizedBox(width: 16.w),
                            Assets.icons.ping.svg(height: 24.h),
                            SizedBox(width: 4.w),
                            Text(
                              '${value.ping}ms',
                              style: context.bodyMedium?.copyWith(color: darkBlue.withOpacity(.5)),
                            ),
                          ],
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              value.numVpnSessions.toString(),
                              style: context.bodyMedium?.copyWith(color: darkBlue.withOpacity(.5)),
                            ),
                            SizedBox(width: 4.w),
                            Icon(
                              Icons.person_3_outlined,
                              color: primary,
                              size: 20.r,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
    );
  }
}
