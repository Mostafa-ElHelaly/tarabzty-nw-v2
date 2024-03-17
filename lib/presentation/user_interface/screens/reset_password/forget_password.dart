import 'package:flutter/material.dart';

import '../../../../core/constance/app_router.dart';
import '../../../../core/constance/app_size.dart';
import '../../../../core/constance/color_assets.dart';
import '../../../../core/constance/strings_assets.dart';
import '../../widgets/appbar.dart';
import '../../widgets/column_with_text.dart';
import '../../widgets/elevated_button.dart';
import '../../widgets/text_app.dart';

class ForgetPass extends StatefulWidget {
  const ForgetPass({super.key});

  @override
  State<ForgetPass> createState() => _ForgetPass();
}

class _ForgetPass extends State<ForgetPass> {
  List<bool> isSelected = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const ApplicationToolbar(text: AssetString.forgetPasswordPage),
        body: Padding(
          padding: EdgeInsets.all(AppSize.defaultSize! * 1.5),
          child: Column(
            children: [
              TextApp(
                  text: AssetString.forgetPasswordPage1,
                  fontSize: AppSize.defaultSize! * 1.4),
              Padding(
                padding: EdgeInsets.symmetric(vertical: AppSize.defaultSize! * 2),
                child: ColumnWithFieldText(
                    text: AssetString.enterYourMobileNo,
                    width: AppSize.screenWidth!),
              ),
              CustomElevatedButton(
                shape: MaterialStatePropertyAll(ContinuousRectangleBorder(
                    borderRadius: BorderRadiusDirectional.circular(5))),
                text: AssetString.sendCode,
                textColor: Colors.white,
                textSize: AppSize.defaultSize! * 1.4,
                bGColor: ColorAsset.buttonTextColor,
                onTap: () {
                  Navigator.pushNamed(context, Routes.SendCode);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
