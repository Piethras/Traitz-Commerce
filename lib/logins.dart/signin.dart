import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/homepage.dart/dashboard.dart';
import 'package:e_commerce_app/logins.dart/signup.dart';
import 'package:e_commerce_app/logins.dart/forgot_password.dart';


class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isObscure = false;
  bool _isLoading = false; //To track loading state
  Future<void> _login() async {
    setState(() {
      _isLoading = true; //Start loading
    });
    void dispose() {
      _emailController.dispose();
      _passwordController.dispose();
      super.initState();
    }
    final String email = _emailController.text;
    final String password = _passwordController.text;
    try {
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password,);
      Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard()));

    }
    on FirebaseAuthException catch (e) {
      //print('Login failed:${e.message}');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Login failed: $e')),
      );
    }
    finally {
      setState(() {
        _isLoading = false; //Stop loading
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Text(
                'Sign In',
                style: TextStyle(fontSize: 17),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Image.asset(
                'assets/signin.jpg',
                height: 200,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(5), 
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 0,
                      blurRadius: 5,
                      offset: Offset(0, 2),
                    ),
                  ] 
                  ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.phone),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, top: 10),
                          child: TextField(
                            controller: _emailController,
                            decoration: InputDecoration(
                                hintText: 'Email',
                                border: InputBorder.none),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(5), 
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 0,
                      blurRadius: 5,
                      offset: Offset(0, 2),
                    ),
                  ] 
                  ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.mail),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, top: 10),
                          child: TextField(
                            controller: _passwordController,
                            obscureText: !_isObscure,
                            decoration: InputDecoration(
                                hintText: 'Password', border: InputBorder.none),
                          ),
                        ),
                      ),
                      SizedBox(width: 80,),
                      IconButton(onPressed: (){
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      }, icon: Icon(_isObscure? Icons.visibility: Icons.visibility_off)),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ForgotPassword(),
              ));
            }, child: Padding(
              padding: const EdgeInsets.only(left: 155),
              child: Text('Forgot your password?', style: TextStyle(color: Colors.black),),
            ),),
            
            SizedBox(height: 40,),
           
            if (_isLoading)
              CircularProgressIndicator(color: Color.fromARGB(255, 143, 201, 195),),
              SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
              Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Container(
                height: 45,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 143, 201, 195) , borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 6, top: 3),
                  child: TextButton(
                onPressed: _login,
                child: Text(
                    'Sign In',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
              ),
                  
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 120),
              child: Row(
                children: [
                  Text("Don't have an accont?"),
                  SizedBox(
                    width: 5,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUp(),
                            ));
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(color: Color.fromARGB(255, 143, 201, 195) ),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
