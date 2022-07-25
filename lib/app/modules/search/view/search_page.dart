import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SearchPage extends StatefulWidget {
  final String title;
  const SearchPage({Key? key, this.title = 'SearchPage'}) : super(key: key);
  @override
  SearchPageState createState() => SearchPageState();
}

class SearchPageState extends State<SearchPage> {
  // final SearchStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.green.shade900,
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
