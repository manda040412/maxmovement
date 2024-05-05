import 'package:flutter/material.dart';
import 'package:maxmovement/maxmovement/home_page.dart';

class RegistrationForm extends StatefulWidget {
  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  String _name = '';
  String _username = '';
  String _dob = '';
  String _address = '';
  String _religion = '';
  String _institution = '';
  String _phoneNumber = '';
  List<String> _expertises = [];

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Registration Form',
          style: TextStyle(fontWeight: FontWeight.w900),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        color: Colors.white,
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              _buildTextField('Name', (value) => _name = value),
              _buildTextField('Username', (value) => _username = value),
              _buildTextField('Date of Birth', (value) => _dob = value),
              _buildTextField('Address', (value) => _address = value),
              _buildTextField('Religion', (value) => _religion = value),
              _buildTextField('Institution', (value) => _institution = value),
              _buildTextField('Phone Number', (value) => _phoneNumber = value),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 9.0),
                child: Text(
                  'Field of Expertise:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Wrap(
                children: [
                  _buildExpertiseButton('Data Analyst'),
                  _buildExpertiseButton('Front-end developer'),
                  _buildExpertiseButton('Back-end developer'),
                  _buildExpertiseButton('Graphic designer'),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    print('Name: $_name');
                    print('Username: $_username');
                    print('Date of Birth: $_dob');
                    print('Address: $_address');
                    print('Religion: $_religion');
                    print('Institution: $_institution');
                    print('Phone Number: $_phoneNumber');
                    print('Field of Expertise: $_expertises');
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  }
                },
                child: Text(
                  'SAVE',
                  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w900),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF232E66),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String labelText, Function(String) onChanged) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: labelText,
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFFCB042),
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
          fillColor: Color(0xFFFFE6C2),
          filled: true,
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter $labelText';
          }
          return null;
        },
        onChanged: onChanged,
      ),
    );
  }

  Widget _buildExpertiseButton(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            if (_expertises.contains(title)) {
              _expertises.remove(title);
            } else {
              _expertises.add(title);
            }
          });
        },
        child: Text(title),
        style: ElevatedButton.styleFrom(
          primary: _expertises.contains(title) ? Color(0xFFFCB042) : Color(0xFFFFE7C3),
          textStyle: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: RegistrationForm(),
  ));
}
