import 'package:kiwi/kiwi.dart';
import 'package:redshift/models/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future initKiwi() async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  Container().registerFactory((c) => preferences);
  Container().registerFactory((c) => User(c.resolve<SharedPreferences>()));
}
