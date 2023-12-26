import 'package:flutter/material.dart';

class LamaDrawer extends StatelessWidget {
  const LamaDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: SafeArea(
          child: AboutListTile(
            icon: const Icon(Icons.info),
            applicationIcon: SizedBox(
              width: 100,
              height: 100,
              child: Image.asset("assets/llama.png", fit: BoxFit.scaleDown),
            ),
            applicationName: 'Lama Gourmand',
            // TODO calcul de la version https://stackoverflow.com/questions/53672171/how-to-get-build-and-version-number-of-flutter-app
            applicationVersion: 'Décembre 2023',
            aboutBoxChildren: const [
              SizedBox(height: 24),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("L'application du site Lama Gourmand http://lamagourmand.free.fr/"),
                  Text("© Christelle Bros"),
                  SizedBox(height: 10),
                  Text("Icone créée par Freepik de www.flaticon.com")
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
