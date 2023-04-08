import 'package:flutter/material.dart';
import 'data.dart'; // data.dart의 정보를 import 한다.

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
        primarySwatch: Colors.pink,
      ),
      home:  MyPage(),
    );
  }
}


class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  Future<List<String>> _getData() async { // 비동기 선언
    // 1. Future를 통해 data.dart의 리스트 정보를 가져올 때 async, await와 Future.delayed를 활용하여 10초의 정지 시간을 갖도록 한다.
    return await Future.delayed(const Duration(seconds:10), () {
      return myData; // 10초 후 데이터 출력
    }).then((val) { // 2. 10초가 지난 후 리스트 정보를 가져왔다면 then()을 활용하여 console창에 ‘출력 완료’ 라는 text가 출력하도록 만들어준다.
      print('출력완료');
      return val;
    });

  }
      

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Page'),
      ),
      body: FutureBuilder<List<String>>(
        future: _getData(), // data를 List형태로 불러오는 함수 실행
        // 3. FutureBuilder<List<String>>와 Listview.Builder를 활용하여 아래 ListTile 코드를 통해 결과 화면과 같은 화면을 출력한다.
        builder: (BuildContext context, AsyncSnapshot<List<String>> snapshot) {
          if (snapshot.hasData) { //snapshot으로 데이터 받은 경우
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(snapshot.data![index]),
                );
              }
            );
          } else { // snapshot으로 data 받을 때 없는 경우
          // 다뤄야 할 총 4가지 경우 : hasData, hasError, 기다리는 중, 데이터 없을 때
          // 여기서 else는 hasData 빼고 3개 되는 중으로 코딩되었음
          // 나중엔 hasError, wating?, 데이터없을 때 이렇게 자세하게 나누기!
            return const Center(child: CircularProgressIndicator(),); // 로딩중 모양
          }
        }
      ),
    );
  }
}