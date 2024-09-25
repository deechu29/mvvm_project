import 'package:mvvm_project/app/app.router.dart';
import 'package:mvvm_project/app/utils.dart';
import 'package:stacked/stacked.dart';

class HomeViewmodel extends BaseViewModel {
  final String Uname;
  HomeViewmodel({required this.Uname});

  void logout() {
    navigationService.pushNamedAndRemoveUntil(Routes.loginView);
  }
}
