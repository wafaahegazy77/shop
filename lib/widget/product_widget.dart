import 'package:flutter/material.dart';

class ProductWidget extends StatefulWidget {
  final String name, img;
  const ProductWidget(this.name, this.img, {Key? key}) : super(key: key);

  @override
  _ProductWidgetState createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  var _num = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15.0),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: Color(0xff495057), borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Icon(Icons.favorite_border),
                    style: TextButton.styleFrom(
                        backgroundColor: Color(0xff495057), elevation: 0),
                  )
                ],
              ),
              Column(
                children: [
                  Text(
                    '${widget.name}',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Icon(Icons.add_shopping_cart_outlined),
                    style: TextButton.styleFrom(
                        backgroundColor: Color(0xff495057), elevation: 0),
                  )
                ],
              ),
            ],
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.all(15.0),
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25.0),
                  child: Image.network(
                    '${widget.img}',
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => setState(() {
                  _num++;
                }),
                child: Icon(Icons.add),
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xff495057),
                  elevation: 0,
                  side: BorderSide(
                    width: 2.0,
                    color: Colors.white,
                  ),
                  shape: CircleBorder(),
                ),
              ),
              Text(
                '$_num',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              ElevatedButton(
                onPressed: () => _num > 1
                    ? setState(() {
                        _num--;
                      })
                    : _num == 1,
                child: Icon(Icons.remove),
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xff495057),
                  elevation: 0,
                  side: BorderSide(
                    width: 2.0,
                    color: Colors.white,
                  ),
                  shape: CircleBorder(),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
