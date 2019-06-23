import 'package:shared_preferences/shared_preferences.dart';

class User {
  String _name;
  String _email;
  String _avatar;

  final SharedPreferences preferences;

  User(this.preferences) {
    init();
  }

  String get name => _name;
  String get email => _email;
  String get avatar => _avatar;

  void init() {
    _name = preferences.getString('name');
    _email = preferences.getString('email');
    _avatar = preferences.getString('avatar');

    print('--------------------------------');
    print(_name);
    print(_email);
    print(_avatar);
    print('--------------------------------');
  }

  void create(String name, String email, String avatar) {
    _name = name;
    _email = email;
    _avatar = avatar;
    store();
  }

  void store() {
    preferences.setString('name', _name);
    preferences.setString('email', _email);
    preferences.setString('avatar', _avatar);
  }

  void clear() {
    _name = null;
    _email = null;
    _avatar = null;
    preferences.clear();
  }
}
