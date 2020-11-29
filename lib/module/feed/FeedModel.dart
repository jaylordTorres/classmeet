import '../user/UserModel.dart';

class FeedModel {
  final String _title;
  final String _thumb;
  final String _content;
  final String _created;
  final UserModel _author;
  FeedModel.fromJson(Map<String, dynamic> json)
      : _title = json['title'],
        _thumb = json['thumb'],
        _content = json['content'],
        _created = json['created'],
        _author = UserModel.fromJson(json['author']);

  String get title => _title;
  String get content => _content;
  String get thumb => _thumb;
  String get created => _created;
  UserModel get author => _author;
}
