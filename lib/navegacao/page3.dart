import 'package:flutter/material.dart';
import 'package:flutter_maonamassa/navegacao/page4.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    settings: RouteSettings(name: 'Page4'),
                    builder: (context) => Page4(),
                  ),
                );
              },
              child: Text('Page 4 - Via pushReplacement na Page 3'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Pop'),
            ),
            ElevatedButton(onPressed: () {}, child: Text('Page 4 - Via NAMED')),
          ],
        ),
      ),
    );
  }
}
