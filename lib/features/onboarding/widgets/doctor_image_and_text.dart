import 'package:flutter/material.dart';
import 'package:flutter_complete_app/core/theming/styles.dart';
import 'package:flutter_complete_app/features/onboarding/widgets/get_started_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SvgPicture.asset("assets/svgs/AppLogoBG.svg"),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.white.withOpacity(0.0)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14, 0.4],
            ),
          ),
          child: Image.asset("assets/images/onboard_doctor.png"),
        ),
        Positioned(
          bottom: 30,
          child: Text(
            "Best Doctor\nAppointment App",
            textAlign: TextAlign.center,
            style: TextStyles.font32BlueBold.copyWith(height: 1.4),
          ),
        ),
      ],
    );
  }
}
