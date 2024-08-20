import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';

part 'jsonplaceholder_datasource.g.dart';

@RestApi(baseUrl: 'https://jsonplaceholder.typicode.com')
abstract class JsonplaceholderDatasource {
  factory JsonplaceholderDatasource(Dio dio, {String baseUrl}) =
      _JsonplaceholderDatasource;

  @GET('/posts')
  Future<List<Post>> getPosts();
}

@JsonSerializable()
class Post {
  const Post({this.id, this.userId, this.title, this.body});

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  final int? id;
  final int? userId;
  final String? title;
  final String? body;

  Map<String, dynamic> toJson() => _$PostToJson(this);
}
