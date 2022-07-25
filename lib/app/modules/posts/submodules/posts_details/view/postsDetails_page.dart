import 'package:esig/app/model/post.dart';
import 'package:flutter/material.dart';

class PostsDetailsPage extends StatelessWidget {
  final Post post;
  const PostsDetailsPage({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Usuário ${post.id.toString()}'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 1.3,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(post.thumbnailUrl.toString()),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Divider(),
          Row(
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
                padding: const EdgeInsets.all(6),
                child: Text(
                  'Usuário ${post.id.toString()}',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(child: Text(post.title.toString()))
            ],
          ),
        ],
      ),
    );
  }
}
