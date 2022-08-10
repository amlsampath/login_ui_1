import 'package:flutter/material.dart';
import 'package:login_ui/constants/colors.dart';
import 'package:login_ui/ui/reusable_widget/welcome_button.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: UIColors.bgColor,
      body: Container(
          margin: EdgeInsets.all(
            size.width * .05,
          ),
          child: Column(
            children: [
              SizedBox(
                height: size.height * .02,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(
                  25.0,
                ),
                child: Image.asset(
                  "assets/images/learning.jpg",
                  width: size.width,
                  height: size.height * .45,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: size.height * .05,
              ),
              Center(
                child: Text(
                  'Discover Your\nDream class here',
                  style: TextStyle(
                    fontSize: size.width * .08,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: size.height * .05,
              ),
              Center(
                child: Text(
                  "Eiving information on its origins, as well as a random Lipsum generator",
                  style: TextStyle(
                    fontSize: size.width * .05,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: size.height * .04,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(
                      width: 1,
                      color: Colors.white,
                    )),
                child: Row(
                  children: [
                    Expanded(
                        child: WelcomeButton(
                      text: 'Register',
                      color: Colors.white,
                      onPressed: () {
                        Navigator.pushNamed(context, '/registration');
                      },
                    )),
                    Expanded(
                        child: WelcomeButton(
                      text: 'Sign in',
                      color: Colors.transparent,
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                    )),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
