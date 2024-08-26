import 'package:flutter/material.dart';
import 'package:e_commerce_app/resources.dart';
import 'package:e_commerce_app/processes.dart/search_bar.dart';

class WishList extends StatelessWidget {
  const WishList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: Row(
          children: [
            Expanded(
              child: Container(
                      height: 35, width: 250,
                      decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 1), borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,),
                        child: Row(
                          children: [
                            const Icon(Icons.search, size: 35,color: Colors.grey,),
                            SizedBox(width: MediaQuery.sizeOf(context).width*0.03,),
                            Expanded(child: Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: TextButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Search()));
                              }, 
                              child: const TextField(decoration: InputDecoration(hintText: 'Earphone', border: InputBorder.none),)),
                            )),
                            ],
                  ),
                ),
              ),
            ),
                  Stack(children: [
                  IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart_outlined,),),
                  const Padding(
                    padding: EdgeInsets.only(left: 23, top: 8),
                    child: CircleAvatar(child: Text('2',style: TextStyle(color: Colors.white, fontSize: 8),),backgroundColor: Colors.red,radius: 6,),
                  ),
                  ],),
          ],
        ),
      ),
       body: SingleChildScrollView(
         child: Column(
          children: [
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text('Search result for "Earphone"'),
                      ),
                      SizedBox(width: MediaQuery.sizeOf(context).width*0.2,),
                      Container(height: 25, width: 80,
                      decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 1), 
                      borderRadius: BorderRadius.circular(5)),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 5,),
                        child: Row(
                          children: [
                            Expanded(child: Text('Filters', style: TextStyle(fontSize: 14),)),
                            Icon(Icons.filter_alt_outlined, size: 20,),
                          ],
                        ),
                      ),
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      children: [
                        MediumContainer(logo: 'assets/headphones.jpg', word: 'Earphones for monitor', text: '\$199.99').build(context),
                        SizedBox(width: MediaQuery.sizeOf(context).width*0.04,),
                        MediumContainer(logo: 'assets/ear_piece.jpg', word: 'Monitor LG 22 Inc 4K...', text: '\$199.99').build(context),
                      ],
                    ),
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      children: [
                        MediumContainer(logo: 'assets/earports.jpg', word: 'Earphones for monitor', text: '\$199.99').build(context),
                        SizedBox(width: MediaQuery.sizeOf(context).width*0.04,),
                        MediumContainer(logo: 'assets/earports2.jpg', word: 'Monitor LG 22 Inc 4K...', text: '\$19.99').build(context),
                      ],
                    ),
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      children: [
                        MediumContainer(logo: 'assets/headphones3.jpg', word: 'Earphones for monitor', text: '\$199.99').build(context),
                        SizedBox(width: MediaQuery.sizeOf(context).width*0.04,),
                        MediumContainer(logo: 'assets/headphones2.jpg', word: 'Monitor LG 22 Inc 4K...', text: '\$19.99').build(context),
                      ],
                    ),
                  ),
          ],
         ),
       ),
    );
  }
}