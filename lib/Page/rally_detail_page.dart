import 'package:flutter/material.dart';

import 'select_spot_page.dart';

class RallyDetailPage extends StatefulWidget {
  const RallyDetailPage({super.key});

  @override
  State<RallyDetailPage> createState() => _RallyDetailPageState();
}

class _RallyDetailPageState extends State<RallyDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('スタンプラリー詳細'),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(8),
            child: Image.asset('assets/images/1667907190101.jpg'),
          ),
          Container(
            margin: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  '赤坂寺社スタンプラリー',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                Text(
                  'チェックポイント数：３〜６箇所（選択式）',
                ),
                Text(
                  '所要時間：２時間〜６時間',
                ),
              ],
            ),
          ),
          const Divider(),
          Container(
            margin: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('赤坂エリアにある寺社を巡るスタンプラリーです。'),
                Text('赤坂付近には、日枝神社をはじめ数々の有名な寺院や神社があります。'),
                Text('赤坂にお越しの際は、是非こちらのスタンプラリーを利用して巡ってみてください。'),
                Text('だいぶ遠目のところがあるのは内緒', style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
          const Divider(),
          ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: ((context) => const SelectSpotPage()),
              ),
            ),
            child: const Text('参加する'),
          ),
        ],
      ),
    );
  }
}
