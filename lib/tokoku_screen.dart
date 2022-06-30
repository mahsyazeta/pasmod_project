import 'package:flutter/material.dart';
import 'package:pasmod/reusewidget.dart';

import 'daftarTokoku_screen.dart';

class Tokoku extends StatefulWidget {

  const Tokoku({Key? key}) : super(key: key);
  @override
  _TokokuState createState() => _TokokuState();
  
}

class _TokokuState extends State<Tokoku> {
  @override
  Widget build(BuildContext context) {
      TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextCotroller = TextEditingController();
    
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              reusableTextField('Masukkan Nama Toko Anda', Icons.person_outline, false, _emailTextController),
              SizedBox( height: 30,),
              reusableTextField('Masukkan Password Anda', Icons.lock_outline, true, _passwordTextCotroller)
            ],
          ),
        ),
      ),
    );
  }
   Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have account?",
            style: TextStyle(color: Colors.white70)),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUpScreen()));
          },
          child: const Text(
            " Sign Up",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
  Widget forgetPassword(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 35,
      alignment: Alignment.bottomRight,
      child: TextButton(
        child: const Text(
          "Forgot Password?",
          style: TextStyle(color: Colors.white70),
          textAlign: TextAlign.right,
        ),
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => ResetPassword())),
      ),
    );
  }
  
  ResetPassword() {}
}
