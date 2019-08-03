import 'package:flutter/material.dart';
import '../service/service_methods.dart';

class ChanelPage extends StatefulWidget {
  ChanelPage({Key key}) : super(key: key);

  _ChanelPageState createState() => _ChanelPageState();
}

class _ChanelPageState extends State<ChanelPage> {

  @override
  void initState() { 
    super.initState();
    _getList();
  }

  List listData = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: listData.length,
        itemBuilder: (BuildContext context, int index){
          var listItem = listData[index];
          return Text(listItem['title']);
        },
      ),
    );
  }

  _getList(){
    getHomeContent().then((val){
      listData = val['data']['list'];
    });
  }


}
