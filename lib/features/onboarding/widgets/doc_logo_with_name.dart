import 'package:flutter/material.dart';
import 'package:flutter_complete_app/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DocLogoWithName extends StatelessWidget {
  const DocLogoWithName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset("assets/svgs/AppLogo.svg"),
        SizedBox(width: 10.w),
        Text("DocDoc", style: TextStyles.font24Black700Weight),
      ],
    );
  }
}
