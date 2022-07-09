import 'package:flutter/material.dart';
import 'package:rick_and_morty_app/myApp/pages/Home/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

HomeController controller = HomeController();

class _HomePageState extends State<HomePage> {
  final route = '/homePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        width: 200,
        backgroundColor: Colors.black,
        child: NavigationRail(
          onDestinationSelected: (value) {
            setState(() {
              controller.selectedIndex = value;
            });
          },
          selectedIndex: controller.selectedIndex,
          extended: true,
          destinations: const [
            NavigationRailDestination(
              icon: Icon(Icons.person),
              label: Text('Personagens'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.image),
              label: Text('Episódios'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.add),
              label: Text('Adicionar'),
            ),
          ],
        ),
      ),
    );
  }
}
