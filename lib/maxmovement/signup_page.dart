import 'package:flutter/material.dart';
import 'package:maxmovement/maxmovement/password.dart';
import 'package:maxmovement/maxmovement/verification_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Sign Up",
                  style: TextStyle(fontFamily: 'Inter', fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  "Create your account",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  constraints: BoxConstraints(
                    maxWidth: 360,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFFFCB042),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: <Widget>[
                      inputFile(label: "Email"),
                      SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: PasswordInput(label: "Password"),
                      ),
                      SizedBox(height: 2),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: PasswordInput(label: "Confirm Password"),
                      ),
                      SizedBox(height: 10),
                      Container(
                        child: Material(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10),
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.push(
                              context,
                                MaterialPageRoute(builder: (context) => VerificationPage()),
                              );
                            },
                            minWidth: 120,
                            height: 40,
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFF232E66),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Already have an account?"),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Sign In here",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget inputFile({required String label, bool obscureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
      SizedBox(height: 5),
      Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade400),
        ),
        child: TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            border: InputBorder.none,
            labelText: label,
            suffixIcon: obscureText
                ? IconButton(
                    onPressed: () {
                    },
                    icon: obscureText ? Icon(Icons.visibility) : Icon(Icons.visibility_off),
                  )
                : null,
          ),
        ),
      ),
      SizedBox(height: 10),
    ],
  );
  }
}