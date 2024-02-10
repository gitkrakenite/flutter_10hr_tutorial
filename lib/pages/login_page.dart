import 'package:flutter/material.dart';
import 'package:flutter_10hr_tutorial/pages/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false, //helps UI not to resize
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context)
              .size
              .height, //dynamic height based on the screen
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                const Spacer(),
                const Text(
                  "Hello, Welcome Back",
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Urbanist",
                    color: Colors.white,
                  ),
                ),
                const Spacer(), //display message
                const Text(
                  "Please Login",
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.white,
                  ),
                ),

                const Spacer(),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Username",
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5),
                  ),
                ),
                const Spacer(),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5),
                  ),
                ),

                const Spacer(),

                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                    ),
                    child: const Text("Forgot Password ?"),
                  ),
                ), //clickable text

                SizedBox(
                  width: double.infinity, //fill all available space
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {
                      //Navigator.of(context).pushNamed("/home"); // allows back arrow in home screen
                      Navigator.of(context).pushReplacementNamed("/main");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow[200],
                    ),
                    child: const Text(
                      "Sign In ?",
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                ),

                const Spacer(),

                const Text(
                  "Or Sign in with",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),

                const Spacer(),

                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow[200],
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/google.png",
                          width: 22.0, height: 22.0),
                      const SizedBox(
                        width: 10.0,
                      ),
                      const Text("Sign in with Google"),
                    ],
                  ),
                ),

                const Spacer(),

                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow[200],
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/fb.png",
                          width: 22.0, height: 22.0),
                      const SizedBox(
                        width: 10.0,
                      ),
                      const Text("Sign in with Facebook"),
                    ],
                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    const Text(
                      "Don't have account ?",
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                      onPressed: () {},
                      style:
                          TextButton.styleFrom(foregroundColor: Colors.yellow),
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
