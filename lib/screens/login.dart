import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Image(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 2.6,
                image: const AssetImage('images/user_background.jpg'),
                fit: BoxFit.cover,
              ),
              const Text(
                'SOCIAL APP',
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.0,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: Icon(
                      Icons.account_box,
                      size: 30,
                    ),
                    hintText: 'Username',
                    contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: Icon(
                      Icons.lock,
                      size: 30,
                    ),
                    hintText: 'Password',
                    contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                  ),
                  obscureText: true,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  fixedSize:
                      Size(MediaQuery.of(context).size.width * .65, 50.0),
                ),
                onPressed: () {},
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text('Forgot Password ? Click Here'),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      height: 70.0,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.deepPurple,
                      ),
                      child: const Text(
                        'Don\'t have an account? Sign Up',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
