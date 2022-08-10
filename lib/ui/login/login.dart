import 'package:flutter/material.dart';
import 'package:login_ui/constants/colors.dart';
import 'package:login_ui/ui/reusable_widget/custom_button.dart';
import 'package:login_ui/ui/reusable_widget/custom_text_divider.dart';
import 'package:login_ui/ui/reusable_widget/custom_textformfield.dart';
import 'package:login_ui/ui/reusable_widget/social_icon_button.dart';

class Login extends StatefulWidget {
  static const routeName = '/login';
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: UIColors.bgColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(size.width * .05),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                SizedBox(
                  height: size.height * .05,
                ),
                Center(
                  child: Text(
                    'Hello Again!',
                    style: TextStyle(
                      fontSize: size.width * .06,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * .02,
                ),
                Center(
                  child: Text(
                    "Welcome back you've\n been missed!",
                    style: TextStyle(
                      fontSize: size.width * .05,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: size.height * .05,
                ),
                CustomTextFormField(
                  hintText: "Enter username",
                  validation: (value) {
                    if (value!.isEmpty) {
                      return 'Username field cant be empty';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: size.height * .04,
                ),
                CustomTextFormField(
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _passwordVisible = !_passwordVisible;
                      });
                    },
                    child: _passwordVisible
                        ? Icon(
                            Icons.visibility,
                          )
                        : Icon(
                            Icons.visibility_off,
                          ),
                  ),
                  hintText: "Password",
                  obscureText: _passwordVisible,
                  validation: (value) {
                    // Your password validations here.
                    if (value!.isEmpty) {
                      return 'Password field cant be empty';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: size.height * .02,
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Recovery Password',
                    style: TextStyle(
                      fontSize: size.width * .04,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * .04,
                ),
                CustomButton(
                  title: "Sign In",
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                    }
                  },
                ),
                SizedBox(
                  height: size.height * .04,
                ),
                const CustomTextDivider(),
                SizedBox(
                  height: size.height * .02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SocialIconButton(
                      imageUrl: "google.png",
                      onClick: () {},
                    ),
                    SocialIconButton(
                      imageUrl: "apple.png",
                      onClick: () {},
                    ),
                    SocialIconButton(
                      imageUrl: "fb.png",
                      onClick: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * .04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      'Not a member?',
                      style: TextStyle(
                        fontSize: size.width * .04,
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/registration');
                      },
                      child: Text(
                        'Register Now',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: size.width * .04,
                        ),
                      ),
                    )
                  ],
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
