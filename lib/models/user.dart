import 'package:shared_preferences/shared_preferences.dart';

class User {
  String _name;
  String _email;
  String _avatar;
  String _firebaseID;

  final SharedPreferences preferences;

  User(this.preferences) {
    init();
  }

  String get name => _name;
  String get email => _email;
  String get avatar => _avatar;
  String get uid => _firebaseID;

  void init() {
    _name = preferences.getString('name');
    _email = preferences.getString('email');
    _avatar = preferences.getString('avatar');
    _firebaseID = preferences.getString('firebaseID');

    print('--------------------------------');
    print(_name);
    print(_email);
    print(_avatar);
    print('--------------------------------');
  }

  void create(String name, String email, String avatar, String firebaseID) {
    _name = name;
    _email = email;
    _avatar = avatar;
    _firebaseID = firebaseID;
    store();
  }

  void store() {
    preferences.setString('name', _name);
    preferences.setString('email', _email);
    preferences.setString('avatar', _avatar);
    preferences.setString('firebaseID', _firebaseID);
  }

  void clear() {
    _name = null;
    _email = null;
    _avatar = null;
    preferences.clear();
  }
}
