import 'package:flutter/material.dart';

import '../widget/product_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('My Shop'),
      ),
      body: Container(
        color: Theme.of(context).accentColor,
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              ProductWidget(
                'Product name3',
                'https://images.pexels.com/photos/3685523/pexels-photo-3685523.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
              ),
              ProductWidget(
                'Product 2',
                'https://images.pexels.com/photos/2633986/pexels-photo-2633986.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
              ),
              ProductWidget(
                'Product 1',
                'https://i.pinimg.com/564x/a0/ac/a6/a0aca69c7d5745e0aded5a52bee62816.jpg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
