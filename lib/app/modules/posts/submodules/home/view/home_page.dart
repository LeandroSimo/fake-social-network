import 'package:esig/app/modules/posts/submodules/home/controller/home_store.dart';
import 'package:esig/app/modules/posts/view/posts_page.dart';
import 'package:esig/app/modules/profile/view/profile_page.dart';
import 'package:esig/app/modules/publication/view/publication_page.dart';
import 'package:esig/app/modules/search/view/search_page.dart';
import 'package:esig/app/modules/store/view/store_page.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = 'HomePage'}) : super(key: key);
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final HomeStore store = Modular.get();
  final HomeStore homeStore = HomeStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: homeStore.pageViewController,
        children: const [
          PostsPage(),
          SearchPage(),
          PublicationPage(),
          StorePage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: AnimatedBuilder(
        animation: homeStore.pageViewController,
        builder: (context, snapshot) => BottomNavigationBar(
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          currentIndex: homeStore.pageViewController.page?.round() ?? 0,
          onTap: (index) {
            homeStore.pageViewController.jumpToPage(index);
          },
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home_filled),
            ),
            BottomNavigationBarItem(
              label: 'Search',
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              label: 'New',
              icon: Icon(Icons.add_box_outlined),
            ),
            BottomNavigationBarItem(
              label: 'Store',
              icon: Icon(Icons.card_travel),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(Icons.account_circle_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
