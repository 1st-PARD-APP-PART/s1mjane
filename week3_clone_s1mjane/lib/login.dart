import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'signup.dart';
import 'Mypage.dart';
import 'home.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
       appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {Navigator.pop(context);},
        color: Colors.black,
        icon: Icon(Icons.arrow_back_ios),
        )),
        body: Center(
          child: Padding(
            padding: EdgeInsets.fromLTRB(35, 0, 35, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 40
                ),
                Text(
                  '안녕하세요!\n휴대폰 번호로 로그인 해주세요.',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black), 
                ),
                SizedBox(height: 11),
                 Text(
                  '휴대폰 번호는 안전하게 보관되며 이웃들에게 공개되지 않아요',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: Colors.grey),),
                SizedBox(height: 23),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '휴대폰 번호 (- 없이 숫자만 입력)',
                  )
                ),
                SizedBox(height: 13),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '비밀번호',
                  )
                ),
                SizedBox(height: 23),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(358, 91),
                    primary: Color(0XFFFF7E36),
                  ),
                  onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                   },
                  child: Text(
                    '로그인',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                  )
                )
              ]
            )
          )
          )
    );
  }
}

