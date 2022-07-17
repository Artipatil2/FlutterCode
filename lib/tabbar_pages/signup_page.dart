import 'package:flutter/material.dart';
import '../bottom_navigetor/bottomNavigationBar.dart';
import '../reusable_widgets/reusable_widget.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormState>();

  var username = "";
  var phoneno = "";
  var password = "";

  final usernameController = TextEditingController();
  final phonenoController = TextEditingController();
  final passwordController = TextEditingController();

  userSignup() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MyHomePage()));
  }

  void dispose() {
    usernameController.dispose();
    phonenoController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 60, 20, 0),
        child: Column(
          children: [
            reusableTextField(
                "Username", false, 'Username', usernameController),
            SizedBox(
              height: 10,
            ),
            reusableTextField("+0(000)000-00-00", false, '', phonenoController),
            SizedBox(
              height: 10,
            ),
            reusableTextField(
                "Password", true, '..........', passwordController),
            SizedBox(
              height: 70,
            ),
            UIButton(context, "Sign up", () {
              if (_formKey.currentState!.validate()) {
                setState(() {
                  username = usernameController.text;
                  phoneno = phonenoController.text;
                  password = passwordController.text;
                });
                userSignup();
              }
            }),
          ],
        ),
      ),
    ));
  }
}
