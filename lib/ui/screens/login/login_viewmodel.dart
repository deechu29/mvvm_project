import 'package:flutter/widgets.dart';
import 'package:mvvm_project/app/app.router.dart';
import 'package:mvvm_project/app/utils.dart';
import 'package:stacked/stacked.dart';

// import '../../../app/app.router.dart';
// import '../../../app/utils.dart';

class loginviewmodel extends BaseViewModel {
  final formkey = GlobalKey<FormState>();
  TextEditingController Uname = TextEditingController();
  TextEditingController pass = TextEditingController();
  void login() {
    if (formkey.currentState!.validate()) {
      navigationService.navigateTo(Routes.homeView,
          arguments: HomeViewArguments(Uname: Uname.text));
    }
  }
}
