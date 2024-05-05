import 'package:flutter/material.dart';

class PasswordInput extends StatefulWidget {
  final String label;

  const PasswordInput({Key? key, required this.label}) : super(key: key);

  @override
  _PasswordInputState createState() => _PasswordInputState();
}

class _PasswordInputState extends State  {
    bool _isObscure = true;

    @override
    Widget build(BuildContext context) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Password",
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
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    obscureText: _isObscure,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      _isObscure = !_isObscure;
                    });
                  },
                  minWidth: 50,
                  height: 50,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: Colors.grey.withOpacity(0.5),
                  child: Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
        ],
      );
    }
  }
