import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:vp_app/PostData/service/service.dart';

import '../../core/network/networkManager.dart';
import '../model/post_model.dart';
import '../service/IService.dart';

part 'post_view_model.g.dart';

class PostViewModel = _PostViewModelBase with _$PostViewModel;

abstract class _PostViewModelBase with Store {
  BuildContext? viewContext;
  late IService postService;

  @observable
  List<PostModel> postItems = [];

  @observable
  LifeState pageLifes = LifeState.IDDLE;

  _PostViewModelBase({this.viewContext}) {
    postService = Service(NetworkManager.instance.dio);
  }

  void setContext(BuildContext? context) {
    this.viewContext = context;
    fetchItems();
  }

  @action
  Future<void> fetchItems() async {
    pageLifes = LifeState.LOADING;
    postItems = await postService.fetchAllTask();
    pageLifes = LifeState.DONE;
  }
}

enum LifeState {
  IDDLE,
  LOADING,
  DONE,
}
