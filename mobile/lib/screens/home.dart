import 'package:flutter/material.dart';
import 'package:mimamo_link/router/router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 255, 236, 216),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 100),
              Text(
                'みまもりんく',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold
                )
              ),
              Text(
                '離れて暮らす家族の\n安否と日常をつなぐアプリ',
                textAlign: TextAlign.center
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(
                    Color.fromARGB(255, 243, 140, 29)
                  ),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                  fixedSize: WidgetStateProperty.all<Size>(
                    Size(250, 30)
                  )
                ),
                onPressed: () => router.push('/signup'),
                child: const Text('会員登録して始める')
              )
            ]
          )
        )
      )
    );
  }
}