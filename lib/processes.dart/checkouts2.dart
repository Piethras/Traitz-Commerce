import 'package:flutter/material.dart';
import 'package:e_commerce_app/resources.dart';

class Check extends StatelessWidget {
  const Check({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: Row(
          children: [
            //IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
            //SizedBox(width: MediaQuery.sizeOf(context).width*0.03,),
            Text('Checkouts', style: TextStyle(fontSize: 16,),),
            SizedBox(width: MediaQuery.sizeOf(context).width*0.4,),
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
            JointContainer(title: 'Air pods max by Apple', text: 'Variant: Grey', amount: '\$1999,99', logo: 'assets/headphones.jpg').build(context),
            SizedBox(height: MediaQuery.sizeOf(context). height*0.03,),
            JointContainer(title: 'Monitor LG 22 inc 4K 120 Fps', text: 'Variant: 120 Fps', amount: '\$299,99', logo: 'assets/screen.jpg').build(context),
            SizedBox(height: MediaQuery.sizeOf(context). height*0.03,),
            JointContainer(title: 'Earphones for monitor', text: 'Variant: Combo', amount: '\$199,99', logo: 'assets/headphones3.jpg').build(context),
            SizedBox(height: MediaQuery.sizeOf(context). height*0.02,),
            Text('Hide list', style: TextStyle(color: Color.fromARGB(255, 143, 201, 195),),),
            SizedBox(height: MediaQuery.sizeOf(context). height*0.035,),
            BlankContainer(text: 'Regular (2-4 days deliver)').build(context),
            SizedBox(height: MediaQuery.sizeOf(context). height*0.045,),
            Stack(children: [
              BlankContainer(text: 'Apply a discount               ').build(context),
              SizedBox(height: MediaQuery.sizeOf(context). height*0.05,),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  height: MediaQuery.sizeOf(context).height*0.4,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15,),
                        child: Row(
                      children: [
                        Text('Order Summary'),
                        SizedBox(width: MediaQuery.sizeOf(context).width*0.54,),
                        IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_up))
                      ],
                      ),
                      ),
                      Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  children: [
                    Text('Total price (3 items)'),
                    SizedBox(width: MediaQuery.sizeOf(context).width*0.37,),
                    Text('\$2499,97'),
                  ],
                ),
                ),
                SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
                Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  children: [
                    Text('Courier'),
                    SizedBox(width: MediaQuery.sizeOf(context).width*0.66,),
                    Text('\$7,99'),
                  ],
                ),
                ),
                SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
                Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  children: [
                    Text('Market fee'),
                    SizedBox(width: MediaQuery.sizeOf(context).width*0.6,),
                    Text('\$1,23'),
                  ],
                ),
                            ),
                            SizedBox(height: MediaQuery.sizeOf(context).height*0.01,),
                            Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  children: [
                    Text('Totals'),
                    SizedBox(width: MediaQuery.sizeOf(context).width*0.62,),
                    Text('\$2499,97'),
                  ],
                ),
                            ),
                            SizedBox(height: MediaQuery.sizeOf(context). height*0.03,),
                             ColouredContainer(paint: Color.fromARGB(255, 143, 201, 195), text: 'Select payment method', color: Colors.white).build(context),
                    ],
                  ),
                ),
              ),
            ],
            ),
            ],
        ),
      ),
    );
  }
}