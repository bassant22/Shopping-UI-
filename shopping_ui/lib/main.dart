import 'package:flutter/material.dart';

import 'product.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _ShoppingHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class _ShoppingHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ShoppingHomeState();
  }
}

class _ShoppingHomeState extends State<_ShoppingHome> {
  List <Widget> iconList =[
    Icon(Icons.search),
    Icon(Icons.favorite_border),
    Icon(Icons.add_shopping_cart),
    Icon(Icons.person_outline),
  ];
  int currentIndex=-1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
        child: ListView(
          children: <Widget>[
            Center(
              child: Image.network(
                'https://raw.githubusercontent.com/devefy/Flutter-Minimal-Shopping-App-UI/master/assets/logo.png',
                width: 60.0,
                height: 35.0,
                // alignment: Alignment.center,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            CardProduct(
                "Hypired Rocket bink",
                'http://pngimg.com/uploads/running_shoes/running_shoes_PNG5816.png',
                700.0,
                650),
            SizedBox(
              height: 15.0,
            ),
            CardProduct(
                "Hypired Rocket bink",
                'https://github.com/devefy/Flutter-Minimal-Shopping-App-UI/blob/master/assets/shoes_01.png?raw=true',
                669.0,
                500.0),
            SizedBox(
              height: 15.0,
            ),
            CardProduct(
                "Hypired Rocket Black",
                'https://github.com/devefy/Flutter-Minimal-Shopping-App-UI/blob/master/assets/shoes_02.png?raw=true',
                889.0,
                600.0),

          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 50.0,
        color: Colors.grey[100],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:
           iconList.map((item){
             var index=iconList.indexOf(item);
             return InkWell(child: bottomSelectedItem(item, index==currentIndex), onTap: (){
               setState(() {
                 currentIndex=index;
               });
             },);}).toList(),
        ),
      ),
    );
  }
}

bottomSelectedItem(Widget item,bool isSelected)
{
return Container(decoration: BoxDecoration(
  boxShadow: isSelected ? [
    BoxShadow(
      color: Colors.grey,
      offset: Offset(0.0, 0.5),
      blurRadius: 10.0
    ),
  ]:[],
),
child: item,);
}
