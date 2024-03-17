import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../../../../core/constance/app_size.dart';
import '../../../../core/constance/color_assets.dart';
import '../../../../core/constance/strings_assets.dart';
import '../../widgets/Button_with_text.dart';
import '../../widgets/appbar.dart';
import '../../widgets/elevated_button.dart';
import '../../widgets/text_app.dart';
import '../auth_screens/login_screen.dart';
import 'confirm_password.dart';

class SendCode extends StatefulWidget {
  const SendCode({super.key});

  @override
  State<SendCode> createState() => _SendCode();
}

final defaultPinTheme = PinTheme(
  width: 100,
  height: 56,
  textStyle: const TextStyle(
      fontSize: 50,
      color: Color.fromRGBO(30, 60, 87, 1),
      fontWeight: FontWeight.w600),
  decoration: BoxDecoration(
    border: Border.all(color: Colors.transparent),
    borderRadius: BorderRadius.circular(20),
  ),
);

class _SendCode extends State<SendCode> {
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
                  text: AssetString.enterYourCode,
                  fontSize: AppSize.defaultSize! * 1.8),
              Padding(
                padding:
                    EdgeInsets.symmetric(vertical: AppSize.defaultSize! * 3),
                child: Pinput(
                  length: 6,
                  onCompleted: (pin) => print(pin),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextApp(
                      text: AssetString.resendCodeAfter,
                      fontSize: AppSize.defaultSize! * 1.4),
                  CostumTextButton(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const LoginScreen();
                          },
                        ),
                      );
                    },
                    text: AssetString.resendCode,
                    textColor: ColorAsset.buttonTextColor,
                    textSize: AppSize.defaultSize! * 1.4,
                    textUnderLine: TextDecoration.underline,
                    textUnderLineColor: ColorAsset.buttonTextColor,
                  ),
                ],
              ),
              CustomElevatedButton(
                shape: MaterialStatePropertyAll(
                  ContinuousRectangleBorder(
                    borderRadius: BorderRadiusDirectional.circular(10),
                  ),
                ),
                text: AssetString.sendCode,
                textColor: Colors.white,
                textSize: AppSize.defaultSize! * 1.4,
                bGColor: ColorAsset.buttonTextColor,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const ConfirmPass();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
