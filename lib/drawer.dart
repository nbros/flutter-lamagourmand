import 'package:flutter/material.dart';

class LamaDrawer extends StatelessWidget {
  const LamaDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: SafeArea(
          child: AboutListTile(
            icon: Icon(Icons.info),
            applicationIcon: SizedBox(
              width: 100,
              height: 100,
              child: Image.asset("assets/llama.png", fit: BoxFit.scaleDown),
            ),
            applicationName: 'Lama Gourmand',
            applicationVersion: 'Décembre 2019',
            aboutBoxChildren: [
              SizedBox(height: 24),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text("L'application du site Lama Gourmand http://lamagourmand.free.fr/"),
                Text("© Christelle Bros"),
                SizedBox(height: 10),
                Text("Icone créée par Freepik de www.flaticon.com")
              ],)
            ],
          ),
        ),
      ),
    );
  }
}
