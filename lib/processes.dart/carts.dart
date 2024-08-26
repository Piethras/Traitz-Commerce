import 'package:flutter/material.dart';
import 'package:e_commerce_app/resources.dart';
import 'package:e_commerce_app/processes.dart/pay_cart.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: Row(
          children: [
            Text('Your Cart', style: TextStyle(fontSize: 16,),),
            SizedBox(width: MediaQuery.sizeOf(context).width*0.43,),
            Stack(children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_outlined,),),
                  Padding(
                    padding: const EdgeInsets.only(left: 23, top: 8),
                    child: CircleAvatar(child: Text('2',style: TextStyle(color: Colors.white, fontSize: 8),),backgroundColor: Colors.red,radius: 6,),
                  ),
                  ],),
                  ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height*0.06,
            width: double.infinity,
            decoration: BoxDecoration(border: Border.all(width: 1, color: Color.fromARGB(255, 223, 221, 221))),
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Text('Delivery to', style: TextStyle(fontSize: 13),),
                  SizedBox(width: MediaQuery.sizeOf(context).width*0.23,),
                  Text('Satiga City, Central Java', style: TextStyle(fontSize: 13),),
                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_down)),
                ],
              ),
            ),
          ),
          SizedBox(height: MediaQuery.sizeOf(context). height*0.03,),
          PairedContainers(title: 'Air pods max by Apple', text: 'Variant: Grey', amount: '\$1999,99', logo: 'assets/headphones.jpg'),
          SizedBox(height: MediaQuery.sizeOf(context). height*0.03,),
          PairedContainers(title: 'Monitor LG 22 inc 4K 120 Fps', text: 'Variant: 120 Fps', amount: '\$299,99', logo: 'assets/screen.jpg'),
          SizedBox(height: MediaQuery.sizeOf(context). height*0.03,),
          PairedContainers(title: 'Earphones for monitor', text: 'Variant: Combo', amount: '\$199,99', logo: 'assets/headphones3.jpg'),
          SizedBox(height: MediaQuery.sizeOf(context). height*0.18,),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              children: [
                Text('Totals'),
                SizedBox(width: MediaQuery.sizeOf(context).width*0.7,),
                Text('\$00,0'),
              ],
            ),
          ),
           SizedBox(height: MediaQuery.sizeOf(context). height*0.03,),
           Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Container(
                height: MediaQuery.sizeOf(context).height*0.07,
                width: double.infinity,
                decoration: BoxDecoration(color: Color.fromARGB(255, 230, 227, 227), borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextButton(onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => Cart(),
                        ),
                      );
                  }, child: Text('Continue for payment', style: TextStyle(color: Colors.black),)),
                ),
              ),
            ),
        ],
      ),
    );
  }
}