import 'dart:ui';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'home.dart';
import 'My2.dart';

class Mypage extends StatefulWidget {
  const Mypage({super.key});

  @override
  State<Mypage> createState() => _MypageState();
}

class _MypageState extends State<Mypage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Colors.white,
        titleSpacing: 0.0,
        title: Transform(
          transform: Matrix4.translationValues(-20.0, 0.0, 0.0),
          child: Text(
            '나의 당근',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 24),
          ),
        ),
        centerTitle: false,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
            },
            child: Text('로그아웃',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontSize: 14)),
          ),
          SizedBox(
            width: 35,
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(1,6,11,0),
        child: Column(
          children: [
            SizedBox(height:6),
            Row(
              children: <Widget>[
                SizedBox(width: 15),
                Image.asset('assets/profile.png', height: 125, width: 129,),
                SizedBox(width: 45),
                Text('본인이름', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black)),
                SizedBox(width: 76),
                IconButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => My2()));
                }, icon: Icon(Icons.arrow_forward_ios)),
                SizedBox(width: 12)
                ],
            ),
              Divider(thickness: 3.0, color: Color(0XFFF5F5F5),),
              Padding(
                padding: EdgeInsets.fromLTRB(60, 30, 60, 40),
                child: Row(children: [
                  _Buildcontainer(Icons.list, '판매내역'),
                  SizedBox(width: 50),
                  _Buildcontainer(Icons.shopping_bag, '구매내역'),
                  SizedBox(width: 50),
                  _Buildcontainer(Icons.favorite, '관심목록')]
                )
              ),
              Divider(thickness: 3.0, color: Color(0XFFF5F5F5),),
              Padding(padding: EdgeInsets.fromLTRB(128, 14, 128, 15),
                child: Text('최근판매내역', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black))
              ),
              Divider(thickness: 3.0, color: Color(0XFFF5F5F5),),
              Center(
                child: Stack(
                  children: <Widget> [
                    Container(child: Image.asset('assets/phone.png', height:300, width:337),),
                    Container(child: Text(
                       '갤럭시 S22', 
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white,), 
                      textAlign: TextAlign.center,
                        ),),
                      ]
                    )
                  )
                ]
        ),
        ),
        bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        selectedFontSize: 16,
        unselectedFontSize: 16,
        currentIndex: _selectedIndex,
        onTap: (index) {
          switch (index) {
            case 0:
              //Navigator.pushNamed(context, '/home');
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
              break;
            case 1:
              //Navigator.push(context, MaterialPageRoute(builder: (context) => Mypage()));
              //Navigator.pushNamed(context, 'Mypage');
              break;
          }
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30,
            ),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              size: 30,
            ),
            label: '나의 당근',
          ),
        ],
      ),
    );
  }
  Column _Buildcontainer(IconData icon, String label){
      return Column(
        children: [
          Container(
            height: 63,
            width: 63,
            child: Icon(icon, color: Color(0XFFFF7E36)),
                decoration: BoxDecoration(
              color: Color(0xFFFCEEE0),
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(height: 12),
          Text(label, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black))
        ],
      );
    }
}
