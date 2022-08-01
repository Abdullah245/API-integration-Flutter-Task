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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("ID: ${userModel.id}"),
                Text("Name: ${userModel.name}"),
                Text("UserName: ${userModel.username}"),
                Text("Email: ${userModel.email}"),
                Text("Location: ${userModel.phone}"),
                Text(
                  "Website: ${userModel.website}",
                ),
                Text(
                  "Address: ${userModel.address?.city},${userModel.address?.geo?.lat},${userModel.address?.geo?.lng}, ${userModel.address?.street},${userModel.address?.suite}, ${userModel.address?.zipcode}",
                ),
                Text(
                  "Company: ${userModel.company?.bs}, ${userModel.company?.catchPhrase}, ${userModel.company?.name}",
                ),
              ]),
        ),
      ),
    );
  }
}
