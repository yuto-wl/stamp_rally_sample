import 'package:flutter/material.dart';
import 'package:stamp_rally_sample/Page/arrived_at_spot_page.dart';

class PlayRallyPage extends StatefulWidget {
  const PlayRallyPage({super.key});

  @override
  State<PlayRallyPage> createState() => _PlayRallyPageState();
}

class _PlayRallyPageState extends State<PlayRallyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('スタンプラリープレイ'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: Column(
        children: [
          Container(
            width: 450,
            height: 450,
            color: Colors.grey.shade400,
            child: const Center(child: Text('ここにMAP画像')),
          ),
          const Divider(),
          const Text(
            '取得スタンプ数：０/６',
            style: TextStyle(fontSize: 18),
          ),
          const Text('次の目標地点：　日枝神社'),
          const SizedBox(height: 50),
          const Divider(),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => const ArriveAtSpotPage()),
                )),
            child: const Text('到着！'),
          ),
          const SizedBox(height: 10),
          const Text(
            '＊スポットの近くに到着したら、その場を離れる前に上記ボタンを押してください。',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
