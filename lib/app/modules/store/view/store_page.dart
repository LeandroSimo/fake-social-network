import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class StorePage extends StatefulWidget {
  final String title;
  const StorePage({Key? key, this.title = 'StorePage'}) : super(key: key);
  @override
  StorePageState createState() => StorePageState();
}

class StorePageState extends State<StorePage> {
  // final StoreStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.yellow.shade900,
      ),
      body: Column(
        children: [
          Center(
            child: LottieBuilder.network(
                'https://assets3.lottiefiles.com/packages/lf20_M4t9nS.json'),
          ),
          const Text('UNDER DEVELOPMENT...')
        ],
      ),
    );
  }
}
