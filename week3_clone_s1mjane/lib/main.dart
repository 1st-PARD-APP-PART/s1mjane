import 'package:flutter/material.dart';
import 'login.dart';
import 'signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 180,
            ),
            Image.asset(
              'assets/carrot.png',
              height: 193,
              width: 193,
            ),
            SizedBox(height: 8),
            Text(
              '당신 근처의 당근마켓',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
              ),
            SizedBox(
              height: 14,
              ),
            Text(
              textAlign: TextAlign.center,
              '중고 거래부터 동네 정보까지,\n지금 내 동네를 선택하고 시작해보세요!',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
            ),
            SizedBox(
              height: 239,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(354, 56), primary: Color(0XFFFF7E36),
              ),
              onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => signup()));
              },
              child: Text('시작하기')),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 30),
                  Text(
                    '이미 계정이 있나요?',
                    style: TextStyle(color: Colors.black)),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => loginPage()));
                    },
                    child: Text(
                      '로그인',
                      style: TextStyle(color: Color(0XFFFF7E36)),
                      )
                  )
                ]
              ,)
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
