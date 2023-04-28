import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'lacation.dart';
import 'home.dart';

class My2 extends StatelessWidget {
  const My2({super.key});

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.white,
      elevation: 1,
      leading: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () {Navigator.pop(context);},
            icon: const Icon(Icons.arrow_back_ios_new, size: 15),
            color: Colors.black
          ),
          const SizedBox(width: 131),
          Text('프로필수정', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black))
        ],)
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 6, 20, 397),
        child: Column(
          children: [
            Center(
              child: Image.asset('assets/profile.png', width: 177, height: 171), // 크기 이상해!ㅠㅠ
            ),
            SizedBox(height: 17),
            Container(alignment: Alignment.center,
              width: 360, height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0XFFDDDDDD), width:1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(child: Text('본인 이름을 써주세요!',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                  textAlign: TextAlign.center))),
            SizedBox(height: 28),
            Divider(thickness: 1.0, color: Color(0XFFDDDDDD)),
            Row(children: [
              SizedBox(width: 15),
              Text('사는곳',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18)),
              SizedBox(width: 275),
              IconButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => LocationPage()));},
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.black
               ),
            ],),
            Divider(thickness: 1.0, color: Color(0XFFDDDDDD)),
            SizedBox(height:350),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 91,
              child: ElevatedButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));},
                style: ElevatedButton.styleFrom(
                  primary: Color(0XFFFF7E36)
                ),
                child: Text('완료',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16, color: Colors.white))
              )
            )
        ],
        )
        )

    );
    return scaffold;
  }
}