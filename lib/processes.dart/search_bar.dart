import 'package:flutter/material.dart';

// class Search extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Search & Delete Example',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: SearchDeleteScreen(),
//     );
//   }
// }

class Search extends StatefulWidget {
  @override
  _SearchDeleteScreenState createState() => _SearchDeleteScreenState();
}

class _SearchDeleteScreenState extends State<Search> {
  List<String> items = [
    'Iphone 12 promax',
    'Camera fujifilm',
    'Tripod mini',
    'Bluetooth speaker',
    'Drawing pad',
  ];

  List<String> filteredItems = [];

  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredItems = items; // Initially display all items
    _searchController.addListener(_filterItems);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _filterItems() {
    String query = _searchController.text.toLowerCase();
    setState(() {
      filteredItems = items
          .where((item) => item.toLowerCase().contains(query))
          .toList();
    });
  }

  void _deleteItem(String item) {
    setState(() {
      items.remove(item);
      filteredItems.remove(item); // Also remove from filtered list
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        title: Row(
          children: [
            // IconButton(onPressed: (){
            //   Navigator.pop(context);
            // }, icon: Icon(Icons.arrow_back),),
            // SizedBox(width: MediaQuery.sizeOf(context).width*0.01,),
            Expanded(
              child: Container(
                      height: 35, width: 250,
                      decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 1), borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,),
                        child: Row(
                          children: [
                            Icon(Icons.search, size: 35,color: Colors.grey,),
                            SizedBox(width: MediaQuery.sizeOf(context).width*0.03,),
                            Expanded(child: Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: TextField(
                                controller: _searchController,
                                decoration: InputDecoration(hintText: '', border: InputBorder.none, hintStyle: TextStyle(fontSize: 15)),),
                            )),
                            ],
                  ),
                ),
              ),
            ),
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
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Divider(thickness: 1, color: Colors.grey[200],),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Row(
                children: [
                  Text('Last search', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                  SizedBox(width: MediaQuery.sizeOf(context).width*0.42,),
                  Text('Clear All', style: TextStyle(color: Colors.red),)
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: filteredItems.length,
                itemBuilder: (context, index) {
                  final item = filteredItems[index];
                  return ListTile(
                    leading: Icon(Icons.timelapse_outlined),
                    title: Text(item),
                    trailing: IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () => _deleteItem(item),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}