import 'dart:io';

import 'package:vp_app/PostData/model/post_model.dart';

import 'IService.dart';

part 'service_endpoints.dart';

class Service extends IService{
  Service(super.dio);

  @override
  Future<List<PostModel>> fetchAllTask() async {
    final response = await dio.get(_ServiceEndPoints.POSTS.rawValue);
      if (response.statusCode == HttpStatus.ok) {
        final data = response.data;
        if (data is List)  return data.map((e) => PostModel.fromJson(e)).toList();
      }
    return [];
  }

}