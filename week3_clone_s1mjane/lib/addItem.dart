import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'home.dart';

class addItem extends StatefulWidget {
  const addItem({Key? key}) : super(key: key);

  @override
  State<addItem> createState() => _addItemState();
}

class _addItemState extends State<addItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.close, color: Colors.black)),
        title: Text(
          '중고거래 글쓰기',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w400, fontSize: 20),
        ),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('완료', style: TextStyle(color: Colors.orange)))
        ],
      ),
      body: Center(
        child: Row(
          children: [
            Image.asset(
              'assets/camera.png',
              width: 131,
              height: 130,
            ),
            SizedBox(
              height: 22,
            ),
            Divider(),
            ListTile(
              onTap: () {},
              leading: Text(
                '제목',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(),
            ListTile(
              onTap: () {},
              leading: Text(
                '카테고리',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(),
            ListTile(
              onTap: () {},
              leading: Text(
                '가격',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
