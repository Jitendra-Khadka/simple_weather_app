import "package:shared_preferences/shared_preferences.dart";

class LocalDataStorage{
  final SharedPreferences pref;
  LocalDataStorage(this.pref);

  Future<void> login(String email, String password)async{
    await pref.setBool("authState", true);
  }

  Future<void> logout()async{
    await pref.setBool("authState", false);
  }

  bool isLoggedIn(){
    return pref.getBool("authState")?? false;
  }
}