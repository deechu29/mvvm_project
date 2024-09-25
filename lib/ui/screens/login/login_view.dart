import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'login_viewmodel.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<loginviewmodel>.reactive(
      onViewModelReady: (viewModel) {},
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Login screen"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: model.formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: model.Uname,
                    validator: (value) {
                      if (value!.length == 0) {
                        return " enter valid username";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: "Username",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: model.pass,
                    validator: (value) {
                      if (value!.length == 0) {
                        return " enter valid password";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: "Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(onTap: () {}, child: Text("Forgot password"))
                    ],
                  ),
                  ElevatedButton(
                      onPressed: () {
                        model.login();
                      },
                      child: Text("Login")),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Create an account?"),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          "Signup",
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
      viewModelBuilder: () => loginviewmodel(),
    );
  }
}
