import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:e_commerce_app/processes.dart/carts.dart';
import 'package:e_commerce_app/processes.dart/pay_cart.dart';
import 'package:e_commerce_app/processes.dart/checkouts2.dart';
import 'package:e_commerce_app/processes.dart/payment_method.dart';
import 'package:e_commerce_app/homepage.dart/dashboard.dart';
import 'package:flutter/widgets.dart';

Color primaryColor = Color(0x92E3CB);

class BigContainer {
  final String image;
  
  BigContainer({
    required this.image,
  });
  Widget build(BuildContext context) {
    final screenH = MediaQuery.sizeOf(context).height;
    final screenW = MediaQuery.sizeOf(context).width;
    return Container(
      height: screenH*0.2,
      width: screenW*0.8,
      child: Image(image: AssetImage(image), fit: BoxFit.fill,),
    );
  }
}
class SmallContainer {
  final String logo;
  final String word;

  SmallContainer({
    required this.logo,
    required this.word,
  });
  Widget build(BuildContext context) {
    final screenH = MediaQuery.sizeOf(context).height;
    final screenW = MediaQuery.sizeOf(context).width;
    return Column(
      children: [
        Container(
          height: screenH*0.06,
          width: screenW*0.11,
          child: Image(image: AssetImage(logo), fit: BoxFit.fill,),
        ),
        Text(word, style: TextStyle(fontSize: 12, color: Colors.grey),)
      ],
    );
  }
}

class MediumContainer {
  final String logo;
  final String word;
  final String text;

  MediumContainer({
    required this.logo,
    required this.word,
    required this.text,
  });
  Widget build(BuildContext context) {
    final screenH = MediaQuery.sizeOf(context).height;
    final screenW = MediaQuery.sizeOf(context).width;
    return Column(
      children: [
        Container(
          height: screenH*0.15,
          width: screenW*0.43,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: Image(image: AssetImage(logo), fit: BoxFit.fill,),
        ),
        Text(word, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
        Text(text, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
        Container(
          height: screenH*0.05,
          width: screenW*0.4,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Color.fromARGB(255, 143, 201, 195) ),
          child: TextButton(onPressed: (){
            Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => MyCart(),
                        ),
                      );
          }, child: Text('Add to cart', style: TextStyle(color: Colors.white, fontSize: 14),)),
        ),
      ],
    );
  }
}
class Boxes{
  final Color paint;
  Boxes({
    required this.paint,
  });
  Widget build(BuildContext context) {
    final screenH = MediaQuery.sizeOf(context).height;
    final screenW = MediaQuery.sizeOf(context).width;
    return Container(
      height: screenH*0.06,
      width: screenW*0.18,
      decoration: BoxDecoration(color: paint, borderRadius: BorderRadius.circular(7)),
    );
  }
}
class AppleBoxes{
  final String text;
  AppleBoxes({
    required this.text,
  });
  Widget build(BuildContext context) {
    final screenH = MediaQuery.sizeOf(context).height;
    final screenW = MediaQuery.sizeOf(context).width;
    return Container(
      height: screenH*0.05,
      width: screenW*0.44,
      decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(5)),
      child: TextButton(onPressed: (){}, 
      child: Text(text, style: TextStyle(color: Colors.black),)),
    );
  }
}

class PairedContainers extends StatefulWidget {
  
  final String title;
  final String text;
  final String amount;
  final String logo;
  bool _isChecked = false;
  
  PairedContainers({
    required this.title,
    required this.text,
    required this.amount,
    required this.logo,
  });

  @override
  State<PairedContainers> createState() => _PairedContainersState();
}

class _PairedContainersState extends State<PairedContainers> {
  int _counter = 1;
  void _incrementCounter () {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter () {
    setState(() {
      if (_counter > 1){
      _counter--;
      }
    });
  }
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    
    final screenH = MediaQuery.sizeOf(context).height;
    final screenW = MediaQuery.sizeOf(context).width;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          IconButton(
                      onPressed: () {
                        setState(() {
                          _isChecked = !_isChecked;
                        });
                      },
                      icon: Icon(
                        _isChecked
                            ? Icons.check_box
                            : Icons.check_box_outline_blank,
                        color: _isChecked ? Color.fromARGB(255, 143, 201, 195) : Colors.grey,
                      )),
                      Container(
                        height: screenH*0.12,
                       width: screenW*0.26,
                       decoration: BoxDecoration( borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(image: AssetImage(widget.logo), fit: BoxFit.fill,)
                       ),
                      ),
                      SizedBox(width: MediaQuery.sizeOf(context).width*0.02,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.title, style: TextStyle(fontWeight: FontWeight.bold),),
                          Padding(
                            padding: const EdgeInsets.only(right: 63),
                            child: Text(widget.text),
                          ),
                          Row(
                            children: [
                              Text(widget.amount, style: TextStyle(fontWeight: FontWeight.bold),),
                              //SizedBox(width: MediaQuery.sizeOf(context).width*0.02,),
                              TextButton(onPressed: (){
                                _decrementCounter();
                              }, 
                              child: Text('-', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)),
                              //SizedBox(width: MediaQuery.sizeOf(context).width*0.02,),
                              Text('$_counter'),
                              //SizedBox(width: MediaQuery.sizeOf(context).width*0.02,),
                              TextButton(onPressed: (){
                                _incrementCounter();
                              }, child: Text('+'),),
                              //SizedBox(width: MediaQuery.sizeOf(context).width*0.02,),
                              IconButton(onPressed: (){}, icon: Icon(Icons.delete_outline, size: 13,)),
                            ],
                          ), 
                        ],
                      ),
                    ],
                 ),
    );
  }
}

class ColouredContainer{
  final Color paint;
  final String text;
  final Color color;
  ColouredContainer({
    required this.paint,
    required this.text,
    required this.color,
  });
  Widget build(BuildContext context) {
    final screenH = MediaQuery.sizeOf(context).height;
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Container(
        height: screenH*0.073,
        width: double.infinity,
        decoration: BoxDecoration(color: paint, borderRadius: BorderRadius.circular(8)),
        child: Center(child:TextButton(onPressed: (){
          Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => PaymentMethod(),
                        ),
                      );
        }, child: Text(text, style: TextStyle(color: color),)),),
      ),
    );
  }
}

class JointContainer{
  final String title;
  final String text;
  final String amount;
  final String logo;
  
  JointContainer({
    required this.title,
    required this.text,
    required this.amount,
    required this.logo,
  });
  Widget build(BuildContext context){
    final screenH = MediaQuery.sizeOf(context).height;
    final screenW = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Row(
        children: [
          Container(
                        height: screenH*0.12,
                       width: screenW*0.26,
                       decoration: BoxDecoration( borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(image: AssetImage(logo), fit: BoxFit.fill,)
                       ),
                      ),
                      SizedBox(width: MediaQuery.sizeOf(context).width*0.02,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(title, style: TextStyle(fontWeight: FontWeight.bold),),
                          Padding(
                            padding: const EdgeInsets.only(right: 63),
                            child: Text(text),
                          ),
                          Row(
                            children: [
                              Text(amount, style: TextStyle(fontWeight: FontWeight.bold),),
                              SizedBox(width: MediaQuery.sizeOf(context).width*0.25,),
                              Text('1 quantity', style: TextStyle(color: Color.fromARGB(255, 204, 202, 202)),)
                            ],
                          ),
                        ],
                      ),
        ],
      ),
    );
  }
}

void ShowDialog(BuildContext context) {
  showModalBottomSheet(context: context, isScrollControlled: true, builder: (context) {
    return Container(
      height: MediaQuery.sizeOf(context).height*0.5,
      decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)), color: Colors.white,),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Row(
                  children: [
                    Text('Select the Delivery', style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(width: MediaQuery.sizeOf(context).width*0.45,),
                    IconButton(onPressed: (){}, icon: Icon(Icons.close)),
                  ],
                ),
          ),
               SizedBox(height: MediaQuery.sizeOf(context). height*0.01,),
                  LongBox(title: 'Express', text: '1-3 days delivery', amount: '\$14,99').build(context),
                 SizedBox(height: MediaQuery.sizeOf(context). height*0.01,),
                  LongBox(title: 'Express', text: '1-3 days delivery', amount: '\$14,99').build(context),
                 SizedBox(height: MediaQuery.sizeOf(context). height*0.01,),
                  LongBox(title: 'Express', text: '1-3 days delivery', amount: '\$14,99').build(context),
        ],
      ),
                  
    );
  });
}

class BlankContainer{
  final String text;
  BlankContainer({
    required this.text,
  });
  Widget build(BuildContext context) {
    final screenH = MediaQuery.sizeOf(context).height;
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Container(
        height: screenH*0.07,
        width: double.infinity,
        decoration: BoxDecoration(border: Border.all(width: 1, color: Color.fromARGB(255, 223, 222, 222),), borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: [
              Text(text, style: TextStyle(color: Color.fromARGB(255, 208, 207, 207),),),
              SizedBox(width: MediaQuery.sizeOf(context).width*0.29,),
              IconButton(onPressed: (){
              // Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //             builder: (BuildContext context) => Checkouts(),
              //           ),
              //         );
              ShowDialog(context);
              }, icon: Icon(Icons.arrow_right_sharp))
            ],
          ),
        ),
      ),
    );
  }
}

class LongBox{
  final String title;
  final String text;
  final String amount;

  LongBox ({
    required this.title,
    required this.text,
    required this.amount,
  });
  Widget build(BuildContext context) {
    final screenH = MediaQuery.sizeOf(context).height;
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Container(
        height: screenH*0.1,
        width: double.infinity,
        decoration: BoxDecoration(color: Color.fromARGB(255, 252, 250, 250), borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            TextButton(onPressed: (){
              Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => Check(),
                        ),
                      );
            }, child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
                Text(text, style: TextStyle(color: Colors.black),),
              ],
            ),),
            SizedBox(width: MediaQuery.sizeOf(context).width*0.36,),
            Text(amount, style: TextStyle(fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
    
}

class ShortContainer{
  final String text;
  ShortContainer({
    required this.text,
  });
  Widget build(BuildContext context) {
    final screenH = MediaQuery.sizeOf(context).height;
    final screenW = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Container(
        height: screenH*0.055,
        width: screenW*0.4,
        decoration: BoxDecoration(border: Border.all(width: 1, color: Color.fromARGB(255, 223, 222, 222),), borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: TextField(decoration: InputDecoration(hintText: text, border: InputBorder.none, hintStyle: TextStyle(color: Color.fromARGB(255, 223, 222, 222),)),),
        ),
      ),
    );
  }
}


void ShowBox(BuildContext context) {
  showModalBottomSheet(context: context, isScrollControlled: true, builder: (context) {
    return Container(
      height: MediaQuery.sizeOf(context).height*0.7,
      decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)), color: Colors.white,),
      child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 290),
                  child: IconButton(onPressed: (){}, icon: Icon(Icons.close)),
                ),
                Image.asset('assets/star.jpg', height: MediaQuery.sizeOf(context).height*0.18,),
                Text('Congrats! your payment', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                Text('is successful', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
                Text('Track your order or just chart directly to the'),
                Text('seller. Download order summary in down below'),
                SizedBox(height: MediaQuery.sizeOf(context).height*0.035,),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: Container(
                    height: MediaQuery.sizeOf(context).height*0.07,
                    decoration: BoxDecoration(border: Border.all(width: 1, color: Color.fromARGB(255, 223, 222, 222),), 
                    borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Icon(Icons.sim_card, size: 20,),
                          SizedBox(width: MediaQuery.sizeOf(context).width*0.02,),
                          Text('order_invoice'),
                          SizedBox(width: MediaQuery.sizeOf(context).width*0.23,),
                          IconButton(onPressed: (){}, icon: Icon(Icons.download)),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.sizeOf(context). height*0.045,),
              Padding(
             padding: const EdgeInsets.only(left: 15, right: 15),
             child: Container(
              height: MediaQuery.sizeOf(context).height*0.073,
              width: double.infinity,
              decoration: BoxDecoration(color: Color.fromARGB(255, 143, 201, 195), borderRadius: BorderRadius.circular(8)),
              child: TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Dashboard()));
              }, 
              child: Text('Continue', style: TextStyle(color: Colors.white),)),
             ),
                       ),
              ],
            ),
                  
    );
  });
}
