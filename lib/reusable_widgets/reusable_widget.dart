import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final action;
  const CustomAppBar({
    Key? key,
    required this.title,
    this.action,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: true,
      // backgroundColor: backgroundColor,
      flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
        Color.fromARGB(255, 214, 165, 29),
        Color.fromARGB(255, 184, 73, 17)
      ], begin: Alignment.topCenter, end: Alignment.topRight))),
      title: Text(title),
      centerTitle: true,
      actions: action,
      elevation: 0,
    );
  }
}

Container UIButton(BuildContext context, String title, Function onTap) {
  return Container(
      width: MediaQuery.of(context).size.width,
      height: 60,
      margin: const EdgeInsets.fromLTRB(50, 30, 50, 30),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
      child: MaterialButton(
        onPressed: () {
          onTap();
        },
        child: Text(
          title,
          style: TextStyle(
              color: Colors.white,
              //fontWeight: FontWeight.w900,
              fontSize: 25),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        color: Colors.orange[900],
      ));
}

TextFormField reusableTextField(String text, bool isPasswordType,
    String hintText, TextEditingController controller) {
  return TextFormField(
      controller: controller,
      obscureText: isPasswordType,
      enableSuggestions: !isPasswordType,
      autocorrect: !isPasswordType,
      cursorColor: Colors.black,
      style: TextStyle(color: Colors.black.withOpacity(0.9)),
      decoration: InputDecoration(
        labelText: text,
        labelStyle: TextStyle(color: Colors.black.withOpacity(0.9)),
        hintText: hintText,
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.orange),
        ),
      ),
      keyboardType:
          isPasswordType ? TextInputType.visiblePassword : TextInputType.text,
      validator: (value) {
        if (text == "+0(000)000-00-00") {
          String pattern = r'(^(?:[+0]9)?[0-9]{10}$)';
          RegExp regExp = new RegExp(pattern);
          if (value!.length == 0) {
            return 'Please enter mobile number';
          } else if (!regExp.hasMatch(value)) {
            return 'Please enter valid mobile number';
          }
          return null;
        } else if (text == "Password") {
          if (value == null || value.isEmpty) {
            return 'Please enter password';
          } else if (value.trim().length < 8) {
            return 'Password must be at least 8 characters in length';
          }
          return null;
        } else if (text == 'Username') {
          if (value == null || value.isEmpty) {
            return 'Please enter username';
          } else if (value.trim().length < 4) {
            return 'Username must be at least 4 characters in length';
          }
          return null;
        }
      });
}
