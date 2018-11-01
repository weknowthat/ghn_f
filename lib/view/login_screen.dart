import 'package:flutter/material.dart';
import 'package:ghn_f/routes.dart';

class LoginScreen extends StatelessWidget {

  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.green,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 300.0,
              padding: EdgeInsets.only(top: 40.0, bottom: 30.0, left: 20.0, right: 20.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.white
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextField(
                    controller: _userNameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                      labelText: "User Name",
                    ),
                    style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black54
                    ),
                  ),
                  Container(
                    height: 10.0,
                  ),
                  TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                      labelText: "Password",
                    ),
                    style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black54
                    ),
                  ),
                  Container(
                    height: 20.0,
                  ),
                  RaisedButton(
                    padding: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 30.0, right: 30.0),
                    onPressed: (){
                      //todo : call api login
                      Navigator.pushReplacementNamed(context, AppRoutes.home);
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0
                      ),
                    ),
                    color: Colors.green,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
