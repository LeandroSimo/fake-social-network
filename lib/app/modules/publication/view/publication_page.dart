import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PublicationPage extends StatefulWidget {
  final String title;
  const PublicationPage({Key? key, this.title = 'PublicationPage'})
      : super(key: key);
  @override
  PublicationPageState createState() => PublicationPageState();
}

class PublicationPageState extends State<PublicationPage> {
  // final PublicationStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.purple.shade900,
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
