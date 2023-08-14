import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../components/card/postCard.dart';
import '../viewmodel/post_view_model.dart';

final PostViewModel _viewModel = PostViewModel();

class PostView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: buildObserverTitle()),
      body: buildObserverBody(),
    );
  }

  Observer buildObserverTitle() {
    return Observer(builder: (_) {
      return Visibility(
        visible: _viewModel.pageLifes == LifeState.LOADING,
        child: const CircularProgressIndicator(),
      );
    });
  }

  Observer buildObserverBody() {
    return Observer(builder: (_) {
      return ListView.builder(
        itemCount: _viewModel.postItems.length,
        itemBuilder: (context, index) => PostCards(postModel: _viewModel.postItems[index]),
      );
    });
  }
}
