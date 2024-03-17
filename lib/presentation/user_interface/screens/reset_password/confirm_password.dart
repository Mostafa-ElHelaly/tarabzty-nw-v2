import 'package:flutter/material.dart';
import '../../../../core/constance/app_size.dart';
import '../../../../core/constance/color_assets.dart';
import '../../../../core/constance/strings_assets.dart';
import '../../widgets/appbar.dart';
import '../../widgets/elevated_button.dart';
import '../../widgets/text_app.dart';
import '../../widgets/text_fields.dart';
import '../home_page.dart';

class ConfirmPass extends StatefulWidget {
  const ConfirmPass({super.key});

  @override
  State<ConfirmPass> createState() => _confirmPass();
}

bool isVisible = true;

class _confirmPass extends State<ConfirmPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ApplicationToolbar(text: AssetString.forgetPasswordPage),
      body: Padding(
        padding: EdgeInsets.all(AppSize.defaultSize! * 1.4),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          TextApp(
              text: AssetString.newPassword,
              fontSize: AppSize.defaultSize! * 1.5,
              color: ColorAsset.textColor),
          TextFields(
            border: BorderSide(width: 1, color: ColorAsset.borderColor),
            height: AppSize.defaultSize! * 4,
            obscureText: isVisible,
            sIcon: Padding(
              padding:
              EdgeInsets.symmetric(horizontal: AppSize.defaultSize! * 1.5),
              child: InkWell(
                onTap: () {
                  setState(() {
                    isVisible = !isVisible;
                  });
                },
                child: Icon(isVisible
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined),
              ),
            ),
          ),
          SizedBox(height: AppSize.defaultSize! * 1.7),
          TextApp(
              text: AssetString.confirmNewPassword,
              fontSize: AppSize.defaultSize! * 1.5,
              color: ColorAsset.textColor),
          TextFields(
            border: BorderSide(width: 1, color: ColorAsset.borderColor),
            height: AppSize.defaultSize! * 4,
            obscureText: isVisible,
            sIcon: Padding(
              padding:
              EdgeInsets.symmetric(horizontal: AppSize.defaultSize! * 1.5),
              child: InkWell(
                onTap: () {
                  setState(() {
                    isVisible = !isVisible;
                  });
                },
                child: Icon(isVisible
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined),
              ),
            ),
          ),
          SizedBox(height: AppSize.defaultSize! * 1.7),
          CustomElevatedButton(
            shape: MaterialStatePropertyAll(
              ContinuousRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(10),
              ),
            ),
            text: AssetString.confirm,
            textColor: Colors.white,
            textSize: AppSize.defaultSize! * 1.4,
            bGColor: ColorAsset.buttonTextColor,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return HomePage();
                  },
                ),
              );
            },
          ),
        ]),
      ),
    );
  }
}