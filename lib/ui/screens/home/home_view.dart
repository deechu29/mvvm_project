import 'package:flutter/material.dart';

import 'package:mvvm_project/ui/screens/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
    required this.Uname,
  });
  final String Uname;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewmodel>.reactive(
      viewModelBuilder: () {
        return HomeViewmodel(Uname: Uname);
      },
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                  icon: Icon(Icons.logout),
                  onPressed: () {
                    viewModel.logout();
                  })
            ],
            title: Text("Welcome$Uname"),
          ),
          body: Column(
            children: [],
          ),
        );
      },
    );
  }
}
