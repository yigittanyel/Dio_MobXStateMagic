import 'package:flutter/material.dart';

import '../../PostData/model/post_model.dart';

class PostCards extends StatelessWidget {
  final PostModel postModel;

  const PostCards({Key? key, required this.postModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Scaffold(
              appBar: AppBar(),
            ),
          ));
        },
        title: Text(postModel.title ?? 'No Title'),
        subtitle: Text(postModel.body ?? 'No Body'),
      ),
    );
  }
}
