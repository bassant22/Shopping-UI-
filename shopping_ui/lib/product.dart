import 'package:flutter/material.dart';

class CardProduct extends StatelessWidget {
  String title ;
  double price;
  String imgUrl;
  double prePrice;


 CardProduct(this.title,this.imgUrl,this.prePrice,this.price);

 @override
  Widget build(BuildContext context) {
    return   Container(
      width: double.infinity,
      height: 250,
      //color: Color(0xffb7ddc8),
      decoration: BoxDecoration(
        color: Color(0xfffaecfb),
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(color: Colors.grey, width: 0.2),
      ),
      child: Column(
        children: <Widget>[
          Image.network(
            imgUrl,
            width: 250,
            height: 160.0,
          ),
          Text(title,style: TextStyle(fontSize: 20.0,fontStyle:FontStyle.italic,fontFamily: "Times New Roman"),),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Icon(Icons.favorite),
              Column(
                children: <Widget>[
                  Text('$prePrice \$',style: TextStyle(color: Colors.grey,fontSize: 14.0),),
                  Text('$price \$',style: TextStyle(color: Colors.black,fontSize: 18.0),),
                ],
              ),
              Icon(Icons.add_shopping_cart),
            ],
          )
        ],
      ),
    );
  }
}
