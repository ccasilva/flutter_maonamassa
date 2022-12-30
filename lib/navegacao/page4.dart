import 'package:flutter/material.dart';
import 'package:flutter_maonamassa/navegacao/page1.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 4'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context).pushAndRemoveUntil(
                //   MaterialPageRoute(
                //     settings: RouteSettings(name: 'page1'),
                //     builder: (context) => Page1(),
                //   ),
                //   ModalRoute.withName('page4'),
                // );
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                        settings: RouteSettings(name: 'page1'),
                        builder: (context) => Page1()),
                    (route) => route.isFirst); // retorn BOLLEAN
              },
              child: Text('Page 1 - Via pushAndRemoveUntil'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Pop'),
            ),
            ElevatedButton(onPressed: () {}, child: Text('Page 1 - Via NAMED')),
            ElevatedButton(onPressed: (){
              Navigator.of(context).pushNamedAndRemoveUntil('/page1', ModalRoute.withName('/page2'));
            }, child: Text('Page3 Via Named'))
          ],
        ),
      ),
    );
  }
}
