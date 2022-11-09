import 'package:flutter/material.dart';
import 'package:stamp_rally_sample/Page/home_page.dart';

class RallyResultPage extends StatefulWidget {
  const RallyResultPage({super.key});

  @override
  State<RallyResultPage> createState() => _RallyResultPageState();
}

class _RallyResultPageState extends State<RallyResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('スタンプラリー結果'),
        leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
      ),
      body: Column(
        children: [
          Container(
            width: 450,
            height: 450,
            color: Colors.grey.shade400,
            child: const Center(
              child: Text('ここに何らかのリワードを表示'),
            ),
          ),
          const Divider(),
          const SizedBox(height: 10),
          const Text(
            'スタンプラリー完了！\n お疲れ様でした！',
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            child: const Text('結果を共有する'),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () => Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
                (_) => false),
            child: const Text('ホームへ戻る'),
          ),
        ],
      ),
    );
  }
}
