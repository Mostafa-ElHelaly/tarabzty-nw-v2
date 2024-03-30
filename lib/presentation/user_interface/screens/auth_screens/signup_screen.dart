import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/constance/app_router.dart';
import '../../../../core/constance/app_size.dart';
import '../../../../core/constance/color_assets.dart';
import '../../../../core/constance/strings_assets.dart';
import '../../../business_logic/signup_cubit.dart';
import '../../widgets/text_app.dart';
import '../../widgets/text_fields.dart';
import '../../widgets/column_with_text.dart';
import '../../widgets/column_with_text_pass.dart';
import '../../widgets/elevated_button.dart';
import 'login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isVisible = true;
  late final TextEditingController firstNameController;
  late final TextEditingController lastNameController;
  late final TextEditingController phoneNumberController;
  late final TextEditingController emailController;
  late final TextEditingController dateOfBirthController;
  late final TextEditingController passwordController;
  late final TextEditingController confirmPasswordController;

  @override
  void initState() {
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    phoneNumberController = TextEditingController();
    emailController = TextEditingController();
    dateOfBirthController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    phoneNumberController.dispose();
    emailController.dispose();
    dateOfBirthController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  DateTime _dateTime = DateTime.now();

  void _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2025),
    ).then((value) {
      setState(() {
        _dateTime = value ?? DateTime.now();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              alignment: Alignment.center,
              child: Padding(
                padding:
                    EdgeInsets.symmetric(vertical: AppSize.defaultSize! * 3),
                child: TextApp(
                    text: AssetString.sgInUp,
                    fontSize: AppSize.defaultSize! * 2),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppSize.defaultSize! * 1.6,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextApp(
                      text: AssetString.alreadyHaveAcount,
                      fontSize: AppSize.defaultSize! * 1.8,
                      fontWeight: FontWeight.w500),
                  CustomElevatedButton(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.login_signup);
                    },
                    text: AssetString.login,
                    textColor: ColorAsset.buttonTextColor,
                    textSize: AppSize.defaultSize! * 1.4,
                    bGColor: ColorAsset.backgroundColor,
                    shape: const MaterialStatePropertyAll(
                      ContinuousRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        side: BorderSide(
                            width: 2, color: ColorAsset.buttonTextColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppSize.defaultSize! * 1.6,
                  vertical: AppSize.defaultSize! * 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ColumnWithFieldText(
                    controller: firstNameController,
                    text: AssetString.fName,
                    width: AppSize.defaultSize! * 19,
                  ),


                  ColumnWithFieldText(
                    controller: lastNameController,
                    text: AssetString.lName,
                    width: AppSize.defaultSize! * 19,
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(vertical: AppSize.defaultSize! * 1.5),
              child: ColumnWithFieldText(
                controller: phoneNumberController,
                text: AssetString.phoneNo,
                width: AppSize.defaultSize! * 38,
              ),
            ),
            ColumnWithFieldText(
              controller: emailController,
              text: AssetString.emailText,
              width: AppSize.defaultSize! * 38,
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(vertical: AppSize.defaultSize! * 1.5),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextApp(
                        text: AssetString.birthday,
                        fontSize: AppSize.defaultSize! * 1.4),
                    TextFields(
                      controller: dateOfBirthController,
                      readOnly: true,
                      onTap: _showDatePicker,
                      text: _dateTime.toString().substring(0, 10),
                      sIcon: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: AppSize.defaultSize! * 1.5),
                        child: const Icon(Icons.calendar_today),
                      ),
                      border: const BorderSide(
                          width: 0, color: ColorAsset.borderColor),
                      width: AppSize.defaultSize! * 38,
                      height: AppSize.defaultSize! * 4,
                    )
                  ]),
            ),
            ColumnWithFieldTextWithPass(
              controller: passwordController,
              text: AssetString.pass,
              width: AppSize.defaultSize! * 38,
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(vertical: AppSize.defaultSize! * 1.5),
              child: ColumnWithFieldTextWithPass(
                controller: confirmPasswordController,
                text: AssetString.confPass,
                width: AppSize.defaultSize! * 38,
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: AppSize.defaultSize! * 2,
                    vertical: AppSize.defaultSize! * 1.5),
                child: BlocConsumer<SignupCubit, SignupState>(
                  listener: (context, state) {
                    print(state);
                    if (state is SignupError) {
                      print("err");
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(state.err),
                        ),
                      );
                    } else if (state is SignupSuccess) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    }
                  },
                  builder: (context, state) {
                    return CustomElevatedButton(
                      shape: MaterialStatePropertyAll(
                        ContinuousRectangleBorder(
                          borderRadius: BorderRadiusDirectional.circular(10),
                        ),
                      ),
                      text: AssetString.sgInUp,
                      textColor: Colors.white,
                      textSize: AppSize.defaultSize! * 1.4,
                      bGColor: ColorAsset.buttonTextColor,
                      onTap: () async {
                        if (validation()) {
                          await context.read<SignupCubit>().signup(
                                firstNameController.text,
                                lastNameController.text,
                                phoneNumberController.text,
                                _dateTime,
                                emailController.text,
                                passwordController.text,
                                confirmPasswordController.text,
                              );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(AssetString.errorFillFields),
                            ),
                          );
                        }
                      },
                    );
                  },
                ))
          ]),
        ),
      ),
    );
  }

  bool validation() {
    if (firstNameController.text.isEmpty) {
      return false;
    }
    if (lastNameController.text.isEmpty) {
      return false;
    }
    if (phoneNumberController.text.isEmpty) {
      return false;
    }
    if (emailController.text.isEmpty) {
      return false;
    }
    if (passwordController.text.isEmpty) {
      return false;
    }
    if (confirmPasswordController.text.isEmpty) {
      return false;
    }
    return true;
  }
}
