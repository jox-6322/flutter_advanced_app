import 'package:flutter/material.dart';
import 'package:flutter_complete_app/core/helpers/extension.dart';
import 'package:flutter_complete_app/core/routing/routes.dart';
import 'package:flutter_complete_app/core/theming/colors.dart';
import 'package:flutter_complete_app/core/theming/styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(ColorsManager.mainBlue),
        minimumSize: WidgetStatePropertyAll(Size(double.infinity, 52)),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(16),
          ),
        ),
      ),
      child: Text("Get Started", style: TextStyles.font16White700Weight),
    );
  }
}
