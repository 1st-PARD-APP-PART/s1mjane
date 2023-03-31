import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget { 
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      title: 'Flutter Demo', // 앱 이름
      theme: ThemeData(
        primarySwatch: Colors.pink, // 상단바 색
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> { // 기본 페이지 상태
  bool _switchValue = false; // true면 켜져있음. 지금은 꺼져있게 설정해놓은 상태.
  String? _radioValue = "A"; // A, B, C 중 A로 설정해놓은 상태
  final _textFieldController = TextEditingController();
  bool _checkBoxValue = false; // true면 체크박스에 체크 되어 있음. 지금은 체크되어있지 않도록 설정해놓은 상태.

  void _showSnackBar() { // 함수 (snackbar를 보여주는 함수)
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("This is a snackbar!"), // snackbar에서 보여주는 text
        duration: Duration(seconds: 2), // snackbar가 켜져있는 시간(초)
      ),
    );
  }

  void _showAlertDialog() { // 함수 (AlertDialog 보여주는 함수)
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Alert"), // alertdialog의 타이틀 text
          content: Text("This is an alert dialog!"), // alertdialog의 내용
          actions: [
            TextButton( // alertdialog 내의 text button
              onPressed: () => Navigator.pop(context), // 눌렀을 때 pop(사라지기) 실행
              child: Text("OK"), // TextButton의 text 내용 : OK
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( // 상단바 위젯
        title: Text("Flutter Demo"), // 상단바의 text
      ),
      drawer: Drawer( // 서랍 모양 위젯 (왼쪽 상단 서랍 모양 누르면 열림)
        child: ListView( // listview 위젯 (drawer 내부에 listveiw 위젯 넣음)
          padding: EdgeInsets.zero, // 사이사이 여백 - zero상태
          children: [
            DrawerHeader( // 서랍 열었을 때 나온 화면의 상단
              child: Text("21900412 심재인", style: TextStyle(fontSize : 50),),
              decoration: BoxDecoration( // drawerHeader 꾸미기
                color: Colors.pink,
              ),
            ),
            ListTile( // ListView 내부 DrawerHeader 밑 부분
              title: Text("Drawer Item 1"),
              onTap: () => Navigator.pop(context), // 누르면 사라짐(pop)
            ),
            ListTile( // ListView 내부 DrawerHeader 밑 ListTile 밑 부분
              title: Text("Drawer Item 2"),
              onTap: () => Navigator.pop(context), // 누르면 사라짐(pop)
            ),
          ],
        ),
      ),
      body: ListView( // appbar 밑에 body에 Listview 위젯
        children: [
          Center(
            child: Column( // 세로로 나열
              mainAxisAlignment: MainAxisAlignment.center, // 중앙에 위치
              children: [
                Switch( // switch 위젯
                  value: _switchValue, // value에 true or flase 값 받기
                  onChanged: (value) => setState(() => _switchValue = value), // setState 함수 기능 추가
                ),
                Row( // 가로로 나열
                  mainAxisAlignment: MainAxisAlignment.center, // 중앙에 위치
                  children: [
                    Radio( // 가로로 나열할 때 첫 번째
                      value: "A",
                      groupValue: _radioValue, // 27번째 줄에서 값 받아옴
                      onChanged: (value) =>
                          setState(() => _radioValue = value as String),
                    ),
                    Text("A"), // 가로로 나열할 때 두 번째
                    Radio( // 가로로 나열할 때 세 번째
                      value: "B",
                      groupValue: _radioValue, // 27번째 줄에서 값 받아옴
                      onChanged: (value) =>
                          setState(() => _radioValue = value as String),
                    ),
                    Text("B"), // 가로로 나열할 때 네 번째
                    Radio( // 가로로 나열할 때 다섯 번째
                      value: "C",
                      groupValue: _radioValue, // 27번째 줄에서 값 받아옴
                      onChanged: (value) =>
                          setState(() => _radioValue = value as String),
                    ),
                    Text("C"), // 가로로 나열할 때 여섯 번째
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: TextField( // TextFiled 위젯
                    controller: _textFieldController,
                    decoration: const InputDecoration(
                      hintText: "Hint text",
                      ),
                  ),
                ),
                Checkbox( // checkbox 위젯
                  value: _checkBoxValue, // 29번째 줄에서 값 받아옴
                  onChanged: (value) => setState(() => _checkBoxValue = value!),
                ),
                Row( // 가로로 나열
                  mainAxisAlignment: MainAxisAlignment.center, // 중앙에 위치
                  children: [
                    IconButton( // 아이콘 버튼 위젯
                      icon: Icon(
                        Icons.favorite, // 하트 모양 아이콘
                        color: Colors.pink,
                      ),
                      onPressed: (){ // 눌렀을 때 실행되는 것
                        _showAlertDialog(); // alert dialog 보여주는 실행 함수
                      }
                    ),
                    Switch( // 스위치 위젯
                      value: _switchValue, // 26번째 줄 보면 지금 false 상태 (이 값 받아옴)
                      onChanged: (value) =>
                          setState(() => _switchValue = value), // setState 함수
                    ),
                    TextButton( // text로 된 버튼 위젯
                      onPressed: () { // 눌렀을 때 실행되는 것
                        _showAlertDialog(); // alert dialog 보여주는 실행 함수
                      },
                      child: const Text("Show Alert Dialog", style: TextStyle(color: Colors.pink,),),
                    ),
                    ElevatedButton( // 튀어나와보이는 버튼 위젯
                      onPressed: () { // 눌렀을 때 실행되는 것
                        _showSnackBar(); // snackbar 보여주는 실행 함수
                      },
                      child: Text("Show Snack Bar"), // ElevatedButton의 text 내용
                      style: ElevatedButton.styleFrom( // ElevatedButton의 스타일 설정
                        shape: RoundedRectangleBorder( // 테두리 둥근 정도
                          borderRadius: BorderRadius.circular(30),
                        ),
                        backgroundColor: Colors.pink,
                      ),
                    ),
                  ],
                ),
                SizedBox( // SizedBox 위젯
                  height: 500,
                  child: ListView.builder( // listview : 세로
                    itemCount: 20, // item 20개
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text("Item ${index+1}", style: const TextStyle(fontWeight: FontWeight.bold)),
                        subtitle: Text("Subtitle ${index+1}"),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 5000,
                  child: GridView.count( // gridview : 가로
                    crossAxisCount: 3, // 가로에 3개씩
                    children: List.generate(9, (index) { // 총 9개
                      return Card( // 카드 형태
                        child: Center( // 중앙에 위치
                          child: Text("Item ${index+1}"),
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}