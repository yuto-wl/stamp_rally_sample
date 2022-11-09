import 'package:flutter/material.dart';

import 'play_rally_page.dart';

class SelectSpotPage extends StatefulWidget {
  const SelectSpotPage({super.key});

  @override
  State<SelectSpotPage> createState() => _SelectSpotPageState();
}

class _SelectSpotPageState extends State<SelectSpotPage> {
  final names = [
    '日枝神社',
    '豊川稲荷',
    '神田明神',
    '増上寺',
    '氷川神社',
    '愛宕神社',
  ];

  final images = [
    'assets/images/1667907190101.jpg',
    'assets/images/1667907195025.jpg',
    'assets/images/1667907201690.jpg',
    'assets/images/1667907206207.jpg',
    'assets/images/1667907215589.jpg',
    'assets/images/1667907221329.jpg',
  ];

  final flag = [
    true,
    false,
    false,
    true,
    true,
    true,
  ];

  final bottomWidgets = [
    const Divider(),
    Container(
      margin: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('少なくとも３つのスポットを選択してください。'),
          Text('現在、「４つ」のスポットを選択中です。'),
          Text('目安所要時間：４時間'),
          Text(
            '  ※ 各スポットに１５分程度滞在した場合の目安の計算です。',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('スポット選択'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 300,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  margin: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Checkbox(value: flag[index], onChanged: ((value) {})),
                          Text(names[index]),
                        ],
                      ),
                      Image.asset(
                        images[index],
                        width: 150,
                        height: 150,
                      ),
                    ],
                  ),
                );
              },
              childCount: 6,
            ),
          ),
          SliverList(delegate: SliverChildListDelegate(bottomWidgets)),
          SliverList(
              delegate: SliverChildListDelegate(<Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PlayRallyPage()),
                    (_) => false);
              },
              child: const Text('スタンプラリーを開始する'),
            ),
          ])),
        ],
      ),
    );
  }
}
