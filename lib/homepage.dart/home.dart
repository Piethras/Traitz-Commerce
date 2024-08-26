import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/resources.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 150),
              child: Text('Delivery address', style: TextStyle(color: Colors.grey, fontSize: 16)),
            ),
            Row(
              children: [
                Expanded(
                  child: Text('Salatiga City, Central Java', style: TextStyle(color: Colors.black, fontSize: 16),),
                ),
                 Icon(Icons.arrow_drop_down),
                Stack(children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_outlined,),),
                  Padding(
                    padding: const EdgeInsets.only(left: 23, top: 8),
                    child: CircleAvatar(child: Text('2',style: TextStyle(color: Colors.white, fontSize: 8),),backgroundColor: Colors.red,radius: 6,),
                  )
                  ],),
                IconButton(onPressed: (){}, icon: Icon(Icons.notifications_active_outlined,)),
              ],
            ),
          ],
        ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    height: 35, width: double.infinity,
                    decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 1), borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10,),
                      child: Row(
                        children: [
                          Icon(Icons.search, size: 35,color: Colors.grey,),
                          SizedBox(width: MediaQuery.sizeOf(context).width*0.03,),
                          Expanded(child: Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: TextField(decoration: InputDecoration(hintText: 'Search here...',border: InputBorder.none),),
                          )),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.sizeOf(context).height*0.04,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      BigContainer(image: 'assets/card.jpg').build(context),
                      SizedBox(width: MediaQuery.sizeOf(context).width*0.03,),
                      BigContainer(image: 'assets/card.jpg').build(context),
                      SizedBox(width: MediaQuery.sizeOf(context).width*0.03,),
                      BigContainer(image: 'assets/card.jpg').build(context),
                   ],
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height*0.04,),
              Padding(
                  padding: const EdgeInsets.only(right: 270),
                  child: Text('Category', style: TextStyle(fontWeight: FontWeight.w400),),
                ),
                SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      SmallContainer(logo: 'assets/clothes.jpg', word: 'Apparel').build(context,),
                      SizedBox(width: MediaQuery.sizeOf(context).width*0.06,),
                      SmallContainer(logo: 'assets/rulers.jpg', word: 'School').build(context,),
                      SizedBox(width: MediaQuery.sizeOf(context).width*0.06,),
                      SmallContainer(logo: 'assets/ball.jpg', word: 'Sports').build(context,),
                      SizedBox(width: MediaQuery.sizeOf(context).width*0.06,),
                      SmallContainer(logo: 'assets/tv.jpg', word: 'Electronics').build(context,),
                      SizedBox(width: MediaQuery.sizeOf(context).width*0.06,),
                      SmallContainer(logo: 'assets/buttons.jpg', word: 'All').build(context,),
                    ],
                  ),
                ),
              SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text('Recent Product'),
                    ),
                    SizedBox(width: MediaQuery.sizeOf(context).width*0.4,),
                    Container(height: 25, width: 80,
                    decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 1), 
                    borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5,),
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
                      MediumContainer(logo: 'assets/screen.jpg', word: 'Monitor LG 22 Inc 4K...', text: '\$199.99').build(context),
                      SizedBox(width: MediaQuery.sizeOf(context).width*0.04,),
                      MediumContainer(logo: 'assets/cup.jpg', word: 'Aestechic Mug - white...', text: '\$19.99').build(context),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.sizeOf(context).height*0.02,),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    children: [
                      MediumContainer(logo: 'assets/ps.jpg', word: 'Monitor LG 22 Inc 4K...', text: '\$199.99').build(context),
                      SizedBox(width: MediaQuery.sizeOf(context).width*0.04,),
                      MediumContainer(logo: 'assets/screen.jpg', word: 'Aestechic Mug - white...', text: '\$19.99').build(context),
                    ],
                  ),
                ),
            ],
          ),
        ),
    );
  }
}