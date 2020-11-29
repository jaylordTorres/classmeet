class UserModel {
  final String _fullName;
  final String _avatar;
  UserModel.fromJson(Map<String, String> json)
      : _fullName = json['fullName'],
        _avatar = json['avatar'];

  String get fullName => _fullName;
  String get avatar => _avatar;
}
