import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/main_texts.dart';
import '../../../../core/helper/spacer.dart';
import '../../../../core/themes/my_colors.dart';
import '../../../../core/themes/text_themes.dart';
import '../../../../core/widgets/my_buttons.dart';
import '../../../../core/widgets/my_text_field.dart';
import '../../logic/cubit/auth_cubit.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController nameController = TextEditingController();
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            MainTexts.fullname,
            style: MyStyle.mediam16white.copyWith(color: MyColors.black9),
          ),
          MyTextField(
            controller: nameController,
            errorString: 'please enter your name',
            helper: 'Enter your full name',
            ispassword: false,
          ),
          verticalSpace(10),
          Text(
            MainTexts.email,
            style: MyStyle.mediam16white.copyWith(color: MyColors.black9),
          ),
          MyTextField(
            controller: emailController,
            errorString: 'please enter valid email address',
            helper: 'Enter your email',
            ispassword: false,
          ),
          verticalSpace(10),
          Text(
            MainTexts.password,
            style: MyStyle.mediam16white.copyWith(color: MyColors.black9),
          ),
          MyTextField(
            controller: passwordController,
            errorString: 'please enter correct password',
            helper: 'Enter your password',
            ispassword: true,
          ),
          verticalSpace(20),
          MyButtons(
            function: () {
              BlocProvider.of<AuthCubit>(context).signUpEmailAndPassword(
                  emailController.text, passwordController.text);
            },
            color: MyColors.white2,
            widget: Text(
              MainTexts.createaccountbutton,
              style: MyStyle.mediam16white,
            ),
          ),
        ],
      ),
    );
  }
}
