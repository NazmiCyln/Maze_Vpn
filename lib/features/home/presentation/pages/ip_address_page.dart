import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:maze_vpn/common/loading_widget.dart';
import 'package:maze_vpn/core/extensions/context_extensions.dart';
import 'package:maze_vpn/custom/custom_app_bar.dart';

import '../../../../constants/colors.dart';
import '../../../../custom/failure_widget.dart';
import '../../../../gen/assets.gen.dart';
import '../providers/home_provider.dart';

@RoutePage()
class IpAddressPage extends ConsumerWidget {
  const IpAddressPage();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeProvider);

    return Scaffold(
      appBar: const CustomAppBar(title: 'IP Details'),
      body: state.ipDetailsLoading
          ? const LoadingWidget()
          : ref.watch(homeProvider).ipDetails.fold(
                () => EmptyWidget.failure(
                  message: 'An error occurred while retrieving the information. Please try again.',
                  onPressed: () => ref.read(homeProvider.notifier).refreshIpDetails(),
                ),
                (ipDetails) => RefreshIndicator(
                  onRefresh: () => ref.read(homeProvider.notifier).refreshIpDetails(),
                  child: ListView(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    children: [
                      SizedBox(height: 12.h),
                      _DetailsItem(
                        icon: Assets.icons.ip,
                        title: 'IP Address',
                        subtitle: ipDetails.query,
                      ),
                      SizedBox(height: 12.h),
                      _DetailsItem(
                        icon: Assets.icons.internetProvider,
                        title: 'Internet Provider',
                        subtitle: ipDetails.isp,
                      ),
                      SizedBox(height: 12.h),
                      _DetailsItem(
                        icon: Assets.icons.navigation,
                        title: 'Location',
                        subtitle: '${ipDetails.city}, ${ipDetails.regionName}, ${ipDetails.country}',
                      ),
                      SizedBox(height: 12.h),
                      _DetailsItem(
                        icon: Assets.icons.location,
                        title: 'Pin Code',
                        subtitle: ipDetails.zip,
                      ),
                      SizedBox(height: 12.h),
                      _DetailsItem(
                        icon: Assets.icons.timezone,
                        title: 'Timezone',
                        subtitle: ipDetails.timezone,
                      ),
                    ],
                  ),
                ),
              ),
    );
  }
}

class _DetailsItem extends StatelessWidget {
  const _DetailsItem({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  final SvgGenImage icon;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: gray,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
        leading: icon.svg(height: 34.h),
        horizontalTitleGap: 16.r,
        dense: true,
        title: Text(
          title,
          style: context.displaySmall?.copyWith(color: darkBlue.withOpacity(.75)),
        ),
        subtitle: Text(
          subtitle,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: context.bodyMedium?.copyWith(color: darkBlue.withOpacity(.5)),
        ),
      ),
    );
  }
}
