import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:maze_vpn/core/extensions/context_extensions.dart';

import '../constants/colors.dart';
import '../constants/shadows.dart';

class CustomDropdownButtonFormField<T> extends StatelessWidget {
  final String? hintText;
  final List<DropdownMenuItem<T>> items;
  final ValueChanged<T?>? onChanged;
  final FormFieldValidator<T>? validator;
  final T? value;
  final String? labelText;
  final Color? color;
  final String? prefixIconPath;
  final ColorFilter? prefixIconColorFilter;
  final bool iconVisibility;
  final bool isDeselectActive;

  const CustomDropdownButtonFormField({
    required this.items,
    this.onChanged,
    this.validator,
    this.hintText,
    this.labelText,
    this.value,
    this.color,
    this.prefixIconPath,
    this.prefixIconColorFilter,
    this.iconVisibility = true,
    this.isDeselectActive = true,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: IgnorePointer(
            ignoring: onChanged == null,
            child: DropdownButtonFormField2<T>(
              items: items
                  .map(
                    (e) => DropdownMenuItem<T>(
                      value: e.value,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 6.h,
                          horizontal: 12.h,
                        ),
                        child: e.child,
                      ),
                    ),
                  )
                  .toList(),
              hint: hintText != null
                  ? Text(
                      hintText!,
                      style: context.bodyLarge?.copyWith(color: color ?? textColor),
                    )
                  : null,
              value: value,
              menuItemStyleData: MenuItemStyleData(
                padding: EdgeInsets.zero,
                selectedMenuItemBuilder: (context, child) {
                  return DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.r),
                      color: primary,
                    ),
                    child: DefaultTextStyle(
                      style: context.bodyLarge!.copyWith(color: white),
                      child: child,
                    ),
                  );
                },
              ),
              buttonStyleData: const ButtonStyleData(padding: EdgeInsets.zero),
              decoration: InputDecoration(
                // constraints: BoxConstraints.loose(Size(double.infinity, 140.h)),
                enabled: onChanged != null,
                contentPadding: EdgeInsets.symmetric(
                  vertical: 16.r,
                  horizontal: 16.r,
                ),
                prefixIconConstraints: BoxConstraints.expand(
                  width: 42.r,
                  height: 48.r,
                ),
                prefixIcon: prefixIconPath != null
                    ? Padding(
                        padding: EdgeInsets.only(left: 12.w),
                        child: SvgPicture.asset(
                          prefixIconPath!,
                          height: 24.r,
                          width: 24.r,
                          fit: BoxFit.scaleDown,
                          colorFilter: prefixIconColorFilter,
                        ),
                      )
                    : null,
                label: labelText != null
                    ? Padding(
                        padding: EdgeInsets.only(left: 8.w),
                        child: Text(labelText!),
                      )
                    : null,
                isCollapsed: true,
                fillColor: white,
                labelStyle: Theme.of(context).inputDecorationTheme.labelStyle,
              ),
              style: context.bodyLarge,
              dropdownStyleData: DropdownStyleData(
                padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
                offset: Offset(0, -8.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(color: gray, width: 2.r),
                  color: Colors.white,
                  boxShadow: [dropdownShadow],
                ),
              ),
              iconStyleData: IconStyleData(
                icon: Visibility(
                  visible: onChanged != null && iconVisibility,
                  child: Icon(
                    Icons.arrow_drop_down,
                    color: color ?? primary,
                    size: 24.r,
                  ),
                ),
                openMenuIcon: RotatedBox(
                  quarterTurns: 2,
                  child: Icon(
                    Icons.arrow_drop_down,
                    color: color ?? primary,
                    size: 24.r,
                  ),
                ),
                iconEnabledColor: primary,
                iconSize: 24.r,
              ),
              isExpanded: true,
              onChanged: (value) => onChanged!.call((this.value == value && isDeselectActive) ? null : value),
              onSaved: onChanged,
              validator: validator,
              selectedItemBuilder: (context) => items.map((e) => e.child).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
