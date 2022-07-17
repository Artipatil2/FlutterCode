import 'package:flutter/material.dart';
import '../bottom_navigetor/bottomNavigationBar.dart';
import '../reusable_widgets/reusable_widget.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final _formKey = GlobalKey<FormState>();

  var phoneno = "";
  var password = "";

  final phonenoController = TextEditingController();
  final passwordController = TextEditingController();

  userLogin() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MyHomePage()));
  }

  void dispose() {
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
            reusableTextField("+0(000)000-00-00", false, '', phonenoController),
            SizedBox(
              height: 10,
            ),
            reusableTextField(
                "Password", true, '..........', passwordController),
            SizedBox(
              height: 70,
            ),
            UIButton(context, "Sign In", () {
              if (_formKey.currentState!.validate()) {
                setState(() {
                  phoneno = phonenoController.text;
                  password = passwordController.text;
                });
                userLogin();
              }
            }),
            Container(
              child: const Text("Forgot your password?",
                  style: TextStyle(color: Colors.grey, fontSize: 15)),
            )
          ],
        ),
      ),
    ));
  }
}
