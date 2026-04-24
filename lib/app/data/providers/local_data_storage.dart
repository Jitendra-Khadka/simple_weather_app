import "package:shared_preferences/shared_preferences.dart";

class LocalDataStorage{
  final SharedPreferences pref;
  LocalDataStorage(this.pref);

  Future<void> login(String email, String password)async{
    try{
      await pref.setBool("authState", true);
    }catch(e){
      throw "Something went wrong";
    }
  }

  Future<void> logout()async{
    try{
      await pref.setBool("authState", false);
    }catch(e){
      throw "Something went wrong";
    }
  }

  bool isLoggedIn(){
    return pref.getBool("authState")?? false;
  }

  Future<void> signUp(String email, String password)async{
    try{
      await pref.setString("email",email);
      await pref.setString("password", password);
    }catch(e){
      throw "Couldn't signup, Please try again";
    }
  }
}