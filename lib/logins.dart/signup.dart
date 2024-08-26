import 'package:flutter/material.dart';
import 'package:e_commerce_app/homepage.dart/dashboard.dart';
import 'package:e_commerce_app/logins.dart/signin.dart';
import 'package:e_commerce_app/resources.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  Future<void> _signup() async {
    setState(() {
      _isLoading = true;
    });
    final String email = _emailController.text;
    final String password = _passwordController.text;
    try {
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password,);
      Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard()));

    }
    on FirebaseAuthException catch (e) {
      print('Login failed:${e.message}');
    }
    finally {
    setState(() {
      _isLoading = false;
    });
  }
  }
  
  bool _isObscure = false;
  bool _isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80, left: 30, right: 20),
              child: Row(
                children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: Icon(Icons.arrow_back_ios),),
                  Padding(
                    padding: const EdgeInsets.only(left: 85),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Image.asset(
              'assets/signup.jpg',
              height: 200,
            ),
            SizedBox(
              height: 15,
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
                      Icon(Icons.upload),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, top: 10),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: 'Name', border: InputBorder.none),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
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
                            controller: _emailController,
                            decoration: InputDecoration(
                                hintText: 'Email', border: InputBorder.none),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
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
                            decoration: InputDecoration(
                                hintText: 'Phone Number',
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
              height: 15,
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
                      Icon(Icons.lock),
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
              height: 30,
            ),
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
                child:TextButton(
                      onPressed:_signup,
                      
                  child: Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                ),
                
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 90),
              child: Row(
                children: [
                  Text("Already have an accont?"),
                  SizedBox(
                    width: 4,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignIn(),
                            ));
                      },
                      
                  child: Text(
                        'Sign In',
                        style: TextStyle(color: Color.fromARGB(255, 143, 201, 195) ),
                      )
                ),
                      
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
