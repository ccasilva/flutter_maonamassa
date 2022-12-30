import 'package:flutter/material.dart';
import 'package:flutter_maonamassa/navegacao/page2.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  settings: RouteSettings(name: 'Page2'),
                  builder: (context) => Page2(),
                ),
              );
            }, child: Text('Page 2 - Via PAGE')),
            ElevatedButton(onPressed: (){
              Navigator.of(context).pushNamed(Page2.routeName);
            }, child: Text('Page 2 - Via NAMED')),
          ],
        ),
      ),
    );
  }
}
