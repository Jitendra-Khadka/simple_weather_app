import 'package:weather_app/app/data/providers/local_data_storage.dart';

class AuthRepository{
  final LocalDataStorage provider;
  AuthRepository(this.provider);

  Future<void> login(String email,String password)async{
    if(email == "abcd" && password == "1234"){
      await provider.login(email, password);
    }else{
      throw "Invalid credential";
    }
  }

  Future<void> logout()async{
    await provider.logout();
  }

  bool isLoggedIn(){
    return provider.isLoggedIn();
  }
}