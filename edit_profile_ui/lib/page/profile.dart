import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../widgets/cover.dart';
import '../widgets/details.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Edit Profile",
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Theme.of(context).backgroundColor,
        leading: IconButton(
          onPressed: () {
            print("back button"); //....
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
        ),
        elevation: 0.5,
      ),
      body: Container(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Cover(),
              Details(),
            ],
          ),
        ),
      ),
    );
  }
}
