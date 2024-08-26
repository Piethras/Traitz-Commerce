import 'package:flutter/material.dart';
import 'package:e_commerce_app/resources.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  bool _isToggled = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: Row(
          children: [
            Text('Payment Method', style: TextStyle(fontSize: 16,),),
            SizedBox(width: MediaQuery.sizeOf(context).width*0.28,),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(thickness: 1, color: Color.fromARGB(255, 230, 227, 227),),
            SizedBox(height: MediaQuery.sizeOf(context). height*0.03,),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text('Select existing card', style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: MediaQuery.sizeOf(context). height*0.01,),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: MediaQuery.sizeOf(context).height*0.07,
                width: double.infinity,
                decoration: BoxDecoration(border: Border.all(width: 1, color: Color.fromARGB(255, 230, 227, 227),)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Icon(Icons.card_membership, color: Color.fromARGB(255, 213, 211, 211),),
                      SizedBox(width: MediaQuery.sizeOf(context).width*0.02,),
                      Expanded(child: TextField(decoration: InputDecoration(hintText: '**** **** **** 1934', border: InputBorder.none),)),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Icon(Icons.delete_outline, color: Color.fromARGB(255, 213, 211, 211),),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.sizeOf(context). height*0.02,),
            Divider(thickness: 1, color: Color.fromARGB(255, 230, 227, 227),),
            SizedBox(height: MediaQuery.sizeOf(context). height*0.03,),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text('Or Input New Card', style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: MediaQuery.sizeOf(context). height*0.02,),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text('Card number', style: TextStyle(color: Color.fromARGB(255, 230, 227, 227),),),
            ),
            SizedBox(height: MediaQuery.sizeOf(context). height*0.01,),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: MediaQuery.sizeOf(context).height*0.07,
                width: double.infinity,
                decoration: BoxDecoration(border: Border.all(width: 1, color: Color.fromARGB(255, 230, 227, 227),)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Expanded(child: TextField(keyboardType: TextInputType.number,
                        decoration: InputDecoration(hintText: '1234 1234 1234 1234', border: InputBorder.none),)),
                      Image.asset('assets/visa.jpg', height: MediaQuery.sizeOf(context).height*0.06, width: MediaQuery.sizeOf(context).width*0.06,),
                      SizedBox(width: MediaQuery.sizeOf(context).width*0.02,),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Image.asset('assets/master.jpg', height: MediaQuery.sizeOf(context).height*0.06, width: MediaQuery.sizeOf(context).width*0.06,),
                      ),
                      
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.sizeOf(context). height*0.02,),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text('Exp date                               Security code', style: TextStyle(color: Color.fromARGB(255, 230, 227, 227),),),
            ),
            SizedBox(height: MediaQuery.sizeOf(context). height*0.02,),
            Row(
              children: [
                ShortContainer(text: 'mm/yy').build(context),
                SizedBox(width: MediaQuery.sizeOf(context).width*0.004,),
                ShortContainer(text: 'ccv/csv').build(context),
              ],
            ),
            SizedBox(height: MediaQuery.sizeOf(context). height*0.02,),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text('Card holder', style: TextStyle(color: Color.fromARGB(255, 230, 227, 227),),),
            ),
            SizedBox(height: MediaQuery.sizeOf(context). height*0.01,),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Container(
                height: MediaQuery.sizeOf(context).height*0.07,
                width: double.infinity,
                decoration: BoxDecoration(border: Border.all(width: 1, color: Color.fromARGB(255, 230, 227, 227),), borderRadius: BorderRadius.circular(8)),
                child: Expanded(child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextField(decoration: InputDecoration(hintText: 'Enter card holder name', border: InputBorder.none),),
                )),
              ),
            ),
            SizedBox(height: MediaQuery.sizeOf(context). height*0.1,),
            Divider(thickness: 1, color: Color.fromARGB(255, 230, 227, 227),),
            SizedBox(height: MediaQuery.sizeOf(context). height*0.01,),
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
                Text('Totals'),
                SizedBox(width: MediaQuery.sizeOf(context).width*0.62,),
                Text('\$2499,97'),
              ],
            ),
          ),
           SizedBox(height: MediaQuery.sizeOf(context). height*0.03,),
           Padding(
             padding: const EdgeInsets.only(left: 15, right: 15),
             child: Container(
              height: MediaQuery.sizeOf(context).height*0.073,
              width: double.infinity,
              decoration: BoxDecoration(color: Color.fromARGB(255, 143, 201, 195), borderRadius: BorderRadius.circular(8)),
              child: TextButton(onPressed: (){
                ShowBox(context);
              }, 
              child: Text('Select payment method', style: TextStyle(color: Colors.white),)),
             ),
           ),

          ],
        ),
      ),
    );
  }
}
