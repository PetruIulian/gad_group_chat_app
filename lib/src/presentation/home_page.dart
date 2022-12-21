import 'package:chat_app/src/actions/index.dart';
import 'package:chat_app/src/models/index.dart';
import 'package:chat_app/src/presentation/containers/user_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return UserContainer(
      builder: (BuildContext context, AppUser? vm) {
        return Scaffold(
          backgroundColor: Colors.grey[300],
          appBar: AppBar(
            backgroundColor: Colors.grey[300],
            title: Center(
              child: Text(
                '${vm?.displayName}',
                style: const TextStyle(color: Colors.black),
              ),
            ),
            actions: <Widget>[
              IconButton(
                onPressed: () {
                  StoreProvider.of<AppState>(context).dispatch(const Logout());
                },
                icon: const Icon(
                  Icons.logout_outlined,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
