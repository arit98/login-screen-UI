import 'package:flutter/material.dart';
import 'package:nice_button/NiceButton.dart';
import 'widget/beaty_textfield.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'DEMOAPP',
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Container(
            color: Colors.black,
            height: 700,
            width: 500,
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.account_circle,
                  size: 150,
                  color: Color(0xff111823),
                ),
                SizedBox(height: 40),
                BeautyTextfield(
                  width: double.maxFinite,
                  height: 50,
                  duration: Duration(milliseconds: 300),
                  inputType: TextInputType.text,
                  prefixIcon: Icon(Icons.account_circle),
                  placeholder: "User",
                  onTap: () {
                    print('Click');
                  },
                  onChanged: (text) {
                    print(text);
                  },
                  onSubmitted: (data) {
                    print(data.length);
                  },
                ),
                ////////////
                SizedBox(height: 20),
                BeautyTextfield(
                  width: double.maxFinite,
                  height: 50,
                  duration: Duration(milliseconds: 300),
                  inputType: TextInputType.text,
                  prefixIcon: Icon(Icons.lock_outline),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  placeholder: "Password",
                  onTap: () {
                  },
                  onChanged: (text) {
                    print(text);
                  },
                  onSubmitted: (data) {
                    print(data.length);
                  },
                ),
                /////////
                SizedBox(height: 30),
                NiceButton(
                  width: 255,
                  elevation: 8.0,
                  radius: 10.0,
                  text: "Sign In",
                  background: Color(0xff111823),
                  onPressed: () {
                    print("hello");
                  },
                ),
                SizedBox(height: 30),
                NiceButton(
                  width: 255,
                  elevation: 8.0,
                  radius: 10.0,
                  text: "Sign Up",
                  background: Color(0xff111823),
                  onPressed: () {
                    print("hello");
                  },
                ),
              ],
            )),
      ),
    );
  }
}
