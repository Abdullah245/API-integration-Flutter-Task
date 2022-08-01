import 'package:flutter/material.dart';
import '../model/user_model.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({Key? key, required this.userModel}) : super(key: key);
  final UserModel userModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Id ${userModel.id}"),
      ),
      body: Center(
        child: Column(children: [
          Text("ID: ${userModel.id}"),
          Text("Name: ${userModel.name}"),
          Text("UserName: ${userModel.username}"),
          Text("Email: ${userModel.email}"),
          Text("Address: ${userModel.address}"),
          Text("ID: ${userModel}"),
          Text("ID: ${userModel.id}"),
          Text("ID: ${userModel.id}"),
          Text("ID: ${userModel.id}"),
          Text("ID: ${userModel.id}"),
          Text("ID: ${userModel.id}"),
          Text("ID: ${userModel.id}"),
        ]),
      ),
    );
  }
}
