import 'package:e_commerce_app/resources.dart';
import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        title: Row(
          children: [
            //IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
            //SizedBox(width: MediaQuery.sizeOf(context).width*0.17,),
            Text('Details Product', style: TextStyle(fontSize: 15,),),
            SizedBox(width: MediaQuery.sizeOf(context).width*0.32,),
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.sizeOf(context).height*0.4,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/headphones.jpg'), fit: BoxFit.fill),),
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 56),
                      child: Text('Air pods max by Apple'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                                      children: [
                      Text('\$1999,99', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                      SizedBox(width: MediaQuery.sizeOf(context).width*0.02,),
                      Text('(219 people buy this)'),
                                      ],
                                    ),
                    ),
                  ],
                ),
                SizedBox(width: MediaQuery.sizeOf(context).width*0.17,),
                CircleAvatar(child: IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border, color: Colors.grey,)), radius: 20,backgroundColor: Colors.grey[200],)
              ],
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Boxes(paint: Color.fromARGB(255, 245, 225, 232)).build(context),
                    SizedBox(width: MediaQuery.sizeOf(context).width*0.03,),
                    Boxes(paint: Color.fromARGB(255, 223, 222, 222)).build(context),
                    SizedBox(width: MediaQuery.sizeOf(context).width*0.03,),
                    Boxes(paint: Color.fromARGB(255, 238, 248, 238)).build(context),
                    SizedBox(width: MediaQuery.sizeOf(context).width*0.03,),
                    Boxes(paint: Color.fromARGB(255, 203, 224, 241)).build(context),
                    SizedBox(width: MediaQuery.sizeOf(context).width*0.03,),
                    Boxes(paint: Colors.black).build(context),
                  ],
                ),
              ),
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(color: Colors.black.withOpacity(0.4), borderRadius: BorderRadius.all(Radius.circular(30)),),
                    child:  Icon(Icons.apple, size: 27,),
                  ),
                  SizedBox(width: MediaQuery.sizeOf(context).width*0.03,),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text('Apple Store'),
                      ),
                      Text('online 12 mins ago', style: TextStyle(fontSize: 11, color: Colors.grey),)
                    ],
                  ),
                  SizedBox(width: MediaQuery.sizeOf(context).width*0.2,),
                  Container(
                    height: MediaQuery.sizeOf(context).height*0.05,
                    width: MediaQuery.sizeOf(context).width*0.28,
                    decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.grey), borderRadius: BorderRadius.circular(5)),
                    child: TextButton(onPressed: (){}, child: Text('Follow', style: TextStyle(color: Colors.black),))
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
            Padding(
              padding: const EdgeInsets.only(right: 180),
              child: Text('Description of product.'),
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Text('Lorem ipsum dolor sit amet, consecteur adipiscing elit. Maecenas magna massa, Loreet ut tempor non, tincident non mi. Lorem ipsum dolor sit amet, consecteur adipiscing elit. Maecenas magna massa, Loreet ut tempor non, tincident non mi.',),
            ),
            SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                children: [
                  AppleBoxes(text: 'Add to cart').build(context),
                  SizedBox(width: MediaQuery.sizeOf(context).width*0.03,),
                  AppleBoxes(text: 'Buy Now').build(context),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}