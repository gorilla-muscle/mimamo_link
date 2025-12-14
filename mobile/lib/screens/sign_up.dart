import 'package:flutter/material.dart';
import 'package:mimamo_link/router/router.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 255, 236, 216),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 300),
              Text(
                '会員登録',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold
                )
              ),
              Text(
                '家族とつながって\n見守りを始めましょう',
                textAlign: TextAlign.center
              ),
              SizedBox(height: 50),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(
                    Colors.black
                  ),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                  fixedSize: WidgetStateProperty.all<Size>(
                    Size(300, 50)
                  )
                ),
                onPressed: () => router.pop(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.apple, color: Colors.white),
                    SizedBox(width: 10),
                    Text(
                      'Appleでサインイン',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      )
                    )
                  ]
                )
              )
            ]
          )
        )
      )
    );
  }
}