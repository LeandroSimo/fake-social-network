import 'package:esig/app/model/post.dart';
import 'package:esig/app/service/service_controller.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mobx/mobx.dart';

class PostsPage extends StatefulWidget {
  final String title;
  const PostsPage({Key? key, this.title = 'Esig Social'}) : super(key: key);
  @override
  PostsPageState createState() => PostsPageState();
}

class PostsPageState extends State<PostsPage> {
  // final PostsStore store = Modular.get();
  final ServiceController serviceController = ServiceController();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    autorun((_) {
      serviceController.callAPI();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 130),
              child: Text(widget.title),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add_box_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.chat),
            ),
          ],
        ),
      ),
      body: Observer(
        builder: (_) => FutureBuilder<List<Post>>(
          future: serviceController.callAPI(),
          builder: (BuildContext context, AsyncSnapshot<List<Post>> snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
              case ConnectionState.waiting:
                return Center(
                  child: LottieBuilder.network(
                      'https://assets2.lottiefiles.com/packages/lf20_2hsqyqkr.json'),
                );
              case ConnectionState.active:
              case ConnectionState.done:
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: serviceController.posts.length,
                    itemBuilder: (BuildContext context, int index) {
                      var post = serviceController.posts[index];
                      return Card(
                        color: Colors.white70,
                        margin: const EdgeInsets.all(0),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 18, bottom: 3),
                              child: Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(left: 4),
                                    width: 40.0,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: NetworkImage(
                                          post.url.toString(),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 4, right: 265),
                                      child: Text(
                                        'Usuário ${post.id.toString()}',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )),
                                  const Icon(Icons.more_vert)
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () => Modular.to.pushNamed("/details",
                                  arguments: serviceController.posts[index]),
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height / 1.3,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        post.thumbnailUrl.toString()),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                } else {
                  return Center(
                    child: Text('${snapshot.connectionState}'),
                  );
                }
              default:
                return SizedBox();
            }
          },
        ),
      ),
    );
  }
}
