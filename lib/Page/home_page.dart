import 'package:flutter/material.dart';
import 'package:stamp_rally_sample/Page/rally_detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ホーム'),
        leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          const Text(
            '参加中のスタンプラリー',
            style: TextStyle(
              color: Colors.blueGrey,
              fontWeight: FontWeight.w100,
            ),
          ),
          const Divider(),
          Card(
            color: Colors.white70,
            elevation: 4,
            margin: const EdgeInsets.all(10),
            child: Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Image.asset(
                  'assets/images/1667911402657.jpg',
                  width: 130,
                  height: 100,
                ),
                const SizedBox(width: 20),
                Column(
                  children: const [
                    Text(
                      '赤坂駅周辺スタンプラリー',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 15),
                    Text('開催場所：　東京都赤坂周辺'),
                    Text('所要時間：　２時間〜６時間'),
                  ],
                ),
              ],
            ),
          ),
          const Divider(),
          const Text(
            '開催中のスタンプラリー',
            style: TextStyle(
              color: Colors.blueGrey,
              fontWeight: FontWeight.w100,
            ),
          ),
          const Divider(),
          InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => const RallyDetailPage()),
                )),
            splashColor: Colors.grey,
            child: Card(
              color: Colors.white70,
              elevation: 4,
              margin: const EdgeInsets.all(10),
              child: Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    'assets/images/1667907190101.jpg',
                    width: 130,
                    height: 100,
                  ),
                  const SizedBox(width: 20),
                  Column(
                    children: const [
                      Text(
                        '赤坂寺社スタンプラリー',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 15),
                      Text('開催場所：　東京都赤坂周辺'),
                      Text('所要時間：　１時間〜２時間'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
