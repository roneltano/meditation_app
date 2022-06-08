import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/services/auth_service.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/ui.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({
    Key key,
  }) : super(key: key);

  final TextEditingController _emailCtrl = TextEditingController();
  final TextEditingController _passwordCtrl = TextEditingController();
  final TextEditingController _confirmPasswordCtrl = TextEditingController();
  final AuthService _authService = AuthService();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        backgroundColor: Color(0xFF319F5F),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _emailCtrl,
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),
            TextField(
              controller: _passwordCtrl,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: _confirmPasswordCtrl,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Confirm Password',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () async {
                  if (_emailCtrl.text.isEmpty || _passwordCtrl.text.isEmpty){
                    UiUtils.showSnackbarError(context, 'All fields are required');
                  }else if (_passwordCtrl.text != _confirmPasswordCtrl.text){
                    UiUtils.showSnackbarError(context, 'Password do not match');
                  } else {
                    final user = await _authService.registerUser(
                        _emailCtrl.text, _passwordCtrl.text);
                    if(user != null){
                      print(user);
                    }
                  }
                },
                child: const Text('Submit',
                    style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold)),
              ),
            ),
            const SizedBox(height: 15),
            TextButton(
              child: const Text('Already have an account? Sign In'),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
              },
            )
          ],
        ),
      ),
    );
  }


  }
