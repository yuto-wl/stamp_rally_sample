import 'package:flutter/material.dart';
import 'package:stamp_rally_sample/Page/rally_result_page.dart';

class ArriveAtSpotPage extends StatefulWidget {
  const ArriveAtSpotPage({super.key});

  @override
  State<ArriveAtSpotPage> createState() => _ArriveAtSpotPageState();
}

class _ArriveAtSpotPageState extends State<ArriveAtSpotPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('スポット到着'),
      ),
      body: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  '日枝神社へ到着しました！',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'スポットの写真を撮影するか、別のアプリで撮影した画像を登録してください。',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) =>
                            const CompletedImageRegistrationDialog());
                  },
                  child: const Text('カメラを起動する'),
                ),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) =>
                            const CompletedImageRegistrationDialog());
                  },
                  child: const Text('ギャラリーから登録する'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'このスポットでみんなが撮影した画像を見る',
              style: TextStyle(color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}

class CompletedImageRegistrationDialog extends StatelessWidget {
  const CompletedImageRegistrationDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('到着処理完了！'),
      content: const Text('画像の登録に成功しました。'),
      actions: [
        TextButton(
          child: const Text('次のスポットへ移動する'),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                    builder: (context) => const RallyResultPage()),
                (_) => false);
          },
        )
      ],
    );
  }
}
