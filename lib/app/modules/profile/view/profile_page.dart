import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ProfilePage extends StatefulWidget {
  final String title;
  const ProfilePage({Key? key, this.title = 'ProfilePage'}) : super(key: key);
  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  // final ProfileStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.blue.shade900,
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
