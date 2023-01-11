import 'package:flutter/material.dart';

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
        primarySwatch: Colors.purple,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Group Profile"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                context: context,
                color: Colors.blue,
                name: "กฤตเมธ มุ้ยกระโทก",
                nickname: 'พุฒ',
                descrip: 'Its high noon',
                facebook: 'Kritameth Muikrathok',
                pic: "assets/images/puth.jpg",
                stuid: '633410005-5',
              ),
              Card(
                  context: context,
                  color: Colors.green,
                  name: "พรชัย หอมพรมมา",
                  descrip: 'เช้าง่วง เที่ยงหิว เย็น นอน',
                  facebook: 'Phornchai Hompromma',
                  nickname: 'มิตร',
                  pic: 'assets/images/mite.jpg',
                  stuid: '63410021-7'),
              Card(
                  context: context,
                  color: Colors.yellow,
                  name: "สุรราม พิมานคำ",
                  descrip: 'ทางที่ดีคือทางราดยาง',
                  facebook: 'RAM N O RAM',
                  nickname: 'ราม',
                  pic: 'assets/images/ram.jpg',
                  stuid: '633410034-8'),
              Card(
                  context: context,
                  color: Colors.red,
                  name: "สุรสิทธิ์ เลาหวิโรจน์",
                  descrip: 'Praise The Snail',
                  facebook: 'Surasit Laohawiroj',
                  nickname: 'มาร์ค',
                  pic: 'assets/images/mark.jpg',
                  stuid: '633410035-6'),
            ],
          ),
        ),
      ),
    );
  }

  Widget Card(
      {required BuildContext context,
      required Color color,
      required String pic,
      required String name,
      required String nickname,
      required String stuid,
      required String facebook,
      required String descrip}) {
    return Container(
      width: 250,
      color: Colors.black12,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailScreen(
                        name: name,
                        pic: pic,
                        nickname: nickname,
                        stuid: stuid,
                        facebook: facebook,
                        descrip: descrip,
                      )));
        },
        child: Column(
          children: [
            Image.asset(
              pic,
              width: 200,
              fit: BoxFit.cover,
            ),
            Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                //margin: EdgeInsets.all(10),
                color: color,
                child: Text(name)),
          ],
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  DetailScreen(
      {required this.name,
      required this.pic,
      required this.nickname,
      required this.stuid,
      required this.facebook,
      required this.descrip});
  String name;
  String pic;
  String nickname;
  String stuid;
  String facebook;
  String descrip;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Group Profile"),
        ),
        body: Column(
          children: [
            Text(name),
            Text(nickname),
            Text(stuid),
            Text(facebook),
            Text(descrip)
          ],
        ));
  }
}
