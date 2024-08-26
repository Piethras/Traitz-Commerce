import 'package:flutter/material.dart';
import 'package:e_commerce_app/resources.dart';
import 'package:e_commerce_app/logins.dart/reset_password.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80, left: 30, right: 20),
            child: Row(
              children: [
                IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: const Icon(Icons.arrow_back_ios),),
                const Padding(
                  padding: EdgeInsets.only(left:50),
                  child: Text(
                    'Reset Password',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 50,),
          Image.asset('assets/forgot_password.jpg', height: 200,),
          const SizedBox(height: 30,),
          const Center(
            child: Column(
              children: [
                Text('Enter your email address so we can'),
                Text('help you recover your password.')
              ],
            ),
          ),
          const SizedBox(height: 40,),
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
                      offset: const Offset(0, 2),
                    ),
                  ] 
                  ),
            
              child: const Padding(
                padding: EdgeInsets.only(
                  left: 15,
                ),
                child: Row(
                  children: [
                    Icon(Icons.mail),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 20, top: 10),
                        child: TextField(
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
          const SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Container(
              height: 45,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 143, 201, 195), borderRadius: BorderRadius.circular(15)),
              child: TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const ResetPassword(),));
              }, child: const Text(
                'Reset Password',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),)
              
            ),
          ),
        ],
      ),
    );
  }
}