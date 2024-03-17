import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/constance/app_router.dart';
import '../../../../core/constance/app_size.dart';
import '../../../../core/constance/images_asset.dart';
import '../../../../core/constance/color_assets.dart';
import '../../../../core/constance/strings_assets.dart';
import '../../../business_logic/login_cubit.dart';
import '../../widgets/Button_with_text.dart';
import '../../widgets/text_app.dart';
import '../../widgets/text_fields.dart';
import '../../widgets/elevated_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _usernameController;

  late TextEditingController _passwordController;

  @override
  void initState() {
    _usernameController = TextEditingController();
    _passwordController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    AppSize().init(context);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: AppSize.defaultSize! * 12,
                width: AppSize.screenWidth!,
                child: Stack(
                  children: [
                    Container(
                      width: AppSize.screenWidth,
                      height: AppSize.defaultSize! * 12,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            ColorAsset.logInBgStart,
                            ColorAsset.logInBgEnd,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(AppSize.defaultSize! * 2.4),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Image.asset(
                          AssetPath.logo,
                          width: AppSize.defaultSize! * 14.8,
                          height: AppSize.defaultSize! * 4,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                        AssetPath.star,
                        width: AppSize.defaultSize! * 12,
                        height: AppSize.defaultSize! * 12,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: AppSize.screenHeight! * 0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: AppSize.defaultSize! * 1.6),
                    child: TextApp(
                      text: AssetString.login,
                      fontSize: AppSize.defaultSize! * 2.4,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: AppSize.defaultSize! * 1.5),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, Routes.skipLogin);
                          },
                          child: CostumTextButton(
                            text: AssetString.skipLogin,
                            textColor: ColorAsset.buttonTextColor,
                            textSize: AppSize.defaultSize! * 1.4,
                            textUnderLine: TextDecoration.underline,
                            textUnderLineColor: ColorAsset.buttonTextColor,
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: ColorAsset.buttonTextColor,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: AppSize.defaultSize! * 1.8,
                    vertical: AppSize.defaultSize! * 3),
                child: TextFields(
                  controller: _usernameController,
                  height: AppSize.defaultSize! * 5,
                  text: AssetString.email,
                  border:
                      const BorderSide(width: 1, color: ColorAsset.borderColor),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSize.defaultSize! * 1.8,
                ),
                child: TextFields(
                  controller: _passwordController,
                  height: AppSize.defaultSize! * 5,
                  border:
                      const BorderSide(width: 1, color: ColorAsset.borderColor),
                  text: AssetString.password,
                  obscureText: isVisible,
                  sIcon: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppSize.defaultSize! * 1.5),
                    child: InkWell(
                        onTap: () {
                          {
                            isVisible = !isVisible;
                          }
                          setState(() {});
                        },
                        child: Icon(isVisible
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: AppSize.defaultSize! * 2.5,
                    vertical: AppSize.defaultSize! * 1),
                child: Align(
                  alignment: Alignment.topRight,
                  child: CostumTextButton(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.ForgetPass);
                    },
                    text: AssetString.forgetPassword,
                    textColor: ColorAsset.buttonTextColor,
                    textSize: AppSize.defaultSize! * 1.4,
                    textUnderLine: TextDecoration.underline,
                    textUnderLineColor: ColorAsset.buttonTextColor,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSize.defaultSize! * 2.5,
                ),
                child: SizedBox(
                  child: BlocConsumer<LoginCubit, LoginState>(
                    listener: (context, state) {
                      if (state is LoginError) {
                        print(state.err);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(state.err),
                          ),
                        );
                      } else if (state is LoginSuccess) {
                        Navigator.pushNamed(context, Routes.login);
                      }
                    },
                    builder: (context, state) {
                      return CustomElevatedButton(
                        onTap: () async {
                          if (_passwordController.text != '' &&
                              _usernameController.text != '') {
                            await context.read<LoginCubit>().Login(
                                  _usernameController.text,
                                  _passwordController.text,
                                );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(AssetString.errorFillFields),
                              ),
                            );
                          }
                        },
                        shape: MaterialStatePropertyAll(
                          ContinuousRectangleBorder(
                            borderRadius: BorderRadiusDirectional.circular(10),
                          ),
                        ),
                        text: state is LoginLoading
                            ? AssetString.loading
                            : AssetString.login,
                        textColor: Colors.white,
                        textSize: AppSize.defaultSize! * 1.4,
                        bGColor: ColorAsset.buttonTextColor,
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: AppSize.defaultSize! * 3),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: AppSize.defaultSize! * 2.5),
                child: SizedBox(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStatePropertyAll(
                        ContinuousRectangleBorder(
                          borderRadius: BorderRadiusDirectional.circular(10),
                          side: const BorderSide(
                              width: 1, color: ColorAsset.borderColor),
                        ),
                      ),
                      backgroundColor:
                          const MaterialStatePropertyAll(Colors.white),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          AssetPath.google,
                          scale: 2,
                        ),
                        SizedBox(width: AppSize.defaultSize! * 6),
                        Padding(
                          padding:
                              EdgeInsets.only(left: AppSize.defaultSize! * 2.5),
                          child: Text(
                            AssetString.googleText,
                            style: TextStyle(
                                color: Colors.black,
                                // fontFamily: Asset.mainFont,
                                fontWeight: FontWeight.bold,
                                fontSize: AppSize.defaultSize! * 1.4),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: AppSize.defaultSize! * 0.3),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: AppSize.defaultSize! * 2.5),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    shape: MaterialStatePropertyAll(
                      ContinuousRectangleBorder(
                        borderRadius: BorderRadiusDirectional.circular(10),
                        side: const BorderSide(
                            width: 1, color: ColorAsset.borderColor),
                      ),
                    ),
                    backgroundColor: const MaterialStatePropertyAll(
                        ColorAsset.facebookColor),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        AssetPath.facebook,
                        scale: 2,
                      ),
                      SizedBox(width: AppSize.defaultSize! * 6),
                      Padding(
                        padding:
                            EdgeInsets.only(left: AppSize.defaultSize! * 2.5),
                        child: Text(
                          AssetString.facebookText,
                          style: TextStyle(
                              color: Colors.white,
                              // fontFamily: Asset.mainFont,
                              fontWeight: FontWeight.bold,
                              fontSize: AppSize.defaultSize! * 1.4),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: AppSize.screenHeight! * 0.1),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextApp(
                      text: AssetString.dontHaveAnAcount,
                      fontSize: AppSize.defaultSize! * 1.4,
                      fontWeight: FontWeight.w500),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppSize.defaultSize! * 1),
                    child: CustomElevatedButton(
                      onTap: () {
                        Navigator.pushNamed(context, Routes.signUp);
                      },
                      text: AssetString.sgInUp,
                      textColor: ColorAsset.buttonTextColor,
                      textSize: AppSize.defaultSize! * 1.8,
                      bGColor: ColorAsset.backgroundColor,
                      shape: const MaterialStatePropertyAll(
                        ContinuousRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          side: BorderSide(
                              width: 2, color: ColorAsset.buttonTextColor),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
