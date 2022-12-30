import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).devicePixelRatio);
    return Scaffold(
      appBar: AppBar(
        title: Text('Images'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/1.jpeg')),
              ),
              child: const Text('Paisagem',style: TextStyle(fontSize: 20),),
            ),
            Container(
              width: 200,
              height: 200,
              child: Image.network(
                  'https://miro.medium.com/proxy/1*szmA2b5DQS_U5wAGgHiPQg.png'),
            ),
          ],
        ),
      ),
    );
  }
}
