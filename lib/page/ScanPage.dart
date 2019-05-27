import 'package:flutter/material.dart';
import '../widget/RippleButton.dart';

class ScanPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ScanState();
  }
}

class _ScanState extends State<ScanPage> {

  void _onClickScan() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 10,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Container();
              },
              itemCount: 10,
            ),
          ),
          Expanded(
            flex: 1,
            child: RippleButton(
              click: _onClickScan,
              text: '扫描设备',
              radius: 5,
            ),
          ),
        ],
      ),
    );
  }
}
