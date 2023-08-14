import 'package:dio/dio.dart';
import 'package:vp_app/PostData/model/post_model.dart';

abstract class IService {
  final Dio dio;
  IService(this.dio);

  Future<List<PostModel>> fetchAllTask();
}
