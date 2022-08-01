import 'package:api_integration_practice/screens/user_details.dart';
import 'package:api_integration_practice/services/user_services.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Api Integration"),
      ),
      body: Center(
        child: FutureBuilder(
          future: getUsers(),
          builder: ((BuildContext context, AsyncSnapshot snapshot) {
            if (!snapshot.hasData) {
              return const CircularProgressIndicator();
            } else {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: ((context, index) {
                  return ListTile(
                    leading: Text(snapshot.data[index].id.toString()),
                    title: Text(snapshot.data[index].name),
                    subtitle: Text(snapshot.data[index].address.city),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              UserDetails(userModel: snapshot.data[index]),
                        ),
                      );
                    },
                  );
                }),
              );
            }
          }),
        ),
      ),
    );
  }
}
