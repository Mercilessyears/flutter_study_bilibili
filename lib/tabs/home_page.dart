import 'dart:convert';

// import 'package:bilibili_app/model/ListJson.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import '../service/service_methods.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../config/service_url.dart';
import '../model/ListItem.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(30.0),
          child: AppBar(
            backgroundColor: Colors.white,
            title: Row(
              children: <Widget>[
                Expanded(
                  child: TabBar(
                    indicatorColor: Colors.pinkAccent[100],
                    indicatorSize: TabBarIndicatorSize.label,
                    labelColor: Colors.pinkAccent[100],
                    unselectedLabelColor: Colors.black,
                    tabs: <Widget>[
                      Tab(
                        child: Text(
                          "直播",
                          style: TextStyle(color: Colors.black38, fontSize: 12),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "推荐",
                          style: TextStyle(color: Colors.black38, fontSize: 12),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "热门",
                          style: TextStyle(color: Colors.black38, fontSize: 12),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "追番",
                          style: TextStyle(color: Colors.black38, fontSize: 12),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "影视",
                          style: TextStyle(color: Colors.black38, fontSize: 12),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "70年",
                          style: TextStyle(color: Colors.black38, fontSize: 12),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("直播"),
                ),
                ListTile(
                  title: Text("直播"),
                ),
                ListTile(
                  title: Text("直播"),
                ),
                ListTile(
                  title: Text("直播"),
                ),
                RaisedButton(
                  child: Text("按钮"),
                  onPressed: () {
                    Navigator.pushNamed(context, '/swipertest');
                  },
                )
              ],
            ),
//            Container(
//              margin: EdgeInsets.all(5),
//              child: Column(
//                children: <Widget>[
//                  Row(
//                    children: <Widget>[
//                      SwiperDiy()
//                    ],
//                  ),
//                  Container(
//                    margin: EdgeInsets.only(top: 10),
//                  )
//                ],
//              ),
//            ),
            ListView(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(5),
                  decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: SwiperDiy(),
                ),
                Container(
                  alignment:Alignment(0, 0),
                  child: GetContentWrap(),
                )
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("热门"),
                ),
                ListTile(
                  title: Text("热门"),
                ),
                ListTile(
                  title: Text("热门"),
                ),
                ListTile(
                  title: Text("热门"),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("追番"),
                ),
                ListTile(
                  title: Text("追番"),
                ),
                ListTile(
                  title: Text("追番"),
                ),
                ListTile(
                  title: Text("追番"),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("影视"),
                ),
                ListTile(
                  title: Text("影视"),
                ),
                ListTile(
                  title: Text("影视"),
                ),
                ListTile(
                  title: Text("影视"),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("70年"),
                ),
                ListTile(
                  title: Text("70年"),
                ),
                ListTile(
                  title: Text("70年"),
                ),
                ListTile(
                  title: Text("70年"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

// 轮播图
class SwiperDiy extends StatelessWidget {
  List swiperDataList = [
    {
      "pic":
      "http://i0.hdslb.com/bfs/archive/28db966231deab0815b4a1b0eed8b335d152bf98.jpg"
    },
    {
      "pic":
      "http://i0.hdslb.com/bfs/archive/373c2fe417da4b55e958f91f334d36420ad40b8a.jpg"
    },
    {
      "pic":
      "http://i0.hdslb.com/bfs/archive/ecba289230a5dad5bac442e7a8dfd2fceb152fae.jpg"
    },
    {
      "pic":
      "http://i0.hdslb.com/bfs/archive/2470ca4ec894425a32b2d7a7213fa21ba826ec0b.jpg"
    }
  ];

//  const SwiperDiy({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 900.0, height: 1600.0)
      ..init(context);
    return Container(
      height: ScreenUtil().setHeight(280.0),
      width: ScreenUtil().setHeight(880.0),
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              "${swiperDataList[index]["pic"]}",
              fit: BoxFit.fill,
            ),
          );
        },
        itemCount: swiperDataList.length,
        pagination: SwiperPagination(
            alignment: Alignment.bottomRight, margin: EdgeInsets.all(5.0)),
//          autoplay: true,
        control: SwiperControl(),
        loop: true,
      ),
    );
  }
}

// 主要区域内容获取
class GetContentWrap extends StatefulWidget {
  @override
  _GetContentWrapState createState() => _GetContentWrapState();
}

class _GetContentWrapState extends State<GetContentWrap> {

  // List listData = [];

  // @override
  // void initState() { 
  //   super.initState();
  //   _getList();
  // }

  // _getList(){
  //   getHomeContent().then((val){
  //     listData = val['data']['list'];
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
     future: getHomeContent(),
     builder: (context, snapshot){
       if(snapshot.hasData){
         var data = snapshot.data;
         List swiper = data['data']['list'];
         return MContentWrap(listData:swiper);
       } else {
         return Container(
           child: Text("加载中....."),
         );
       }
     },
    );
  }
}

// 主要区域内容布局


class MainContentWrap extends StatefulWidget {
   @override
  _MainContentWrapState createState() => _MainContentWrapState();
}

class _MainContentWrapState extends State<MainContentWrap> {
  List listData = [];

  @override
  void initState() { 
    super.initState();
    _getList();
  }

  _getList(){
    getHomeContent().then((val){
      listData = val['data']['list'];
    });
  }

  List<Widget> _OneCard() {
    var tempList = listData.map((val) {
      return Card(
        child: Container(
          height: ScreenUtil().setHeight(390),
          width: ScreenUtil().setWidth(430),
          child: Column(
            children: <Widget>[
              Container(
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: <Widget>[
                    Image.network(val["pic"], fit: BoxFit.cover,),
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.video_library,color: Colors.white,size: 14,),
                              Text("5000",style: TextStyle(color: Colors.white,fontSize: 12),)
                            ],
                          ),
                        ),
//                        SizedBox(width: 3,),
                        Expanded(
                          flex: 1,
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.message,color: Colors.white,size: 14,),
                              Text("1.5万",style: TextStyle(color: Colors.white,fontSize: 12),)
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            alignment: Alignment.centerRight,
                            child: Text("4:50",style: TextStyle(color: Colors.white,fontSize: 12),),
                          ),
                        )
                      ],
                    )
                  ],

                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                height: ScreenUtil().setHeight(70),
                child: Text(val["title"], style: TextStyle(fontSize: 12),overflow: TextOverflow.ellipsis,maxLines: 2,),
              ),
              SizedBox(height: 2,),
              Container(
                padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(2)),
                      child: Text(
                        "8000点赞",
                        style: TextStyle(color: Colors.white, fontSize: 8),
                      ),
                    ),
                    Icon(Icons.dialpad, size: 12,)
                  ],
                ),
              )
            ],
          ),
        ),
      );
    });
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.end,

      children: this._OneCard(),
    );
  }
}



class MContentWrap extends StatelessWidget {
  final List listData;
  const MContentWrap({Key key,this.listData}) : super(key: key);

  List<Widget> _OneCard() {
    var tempList = listData.map((val) {
      return Card(
        child: Container(
          height: ScreenUtil().setHeight(390),
          width: ScreenUtil().setWidth(430),
          child: Column(
            children: <Widget>[
              Container(
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: <Widget>[
                    Image.network(val["pic"], fit: BoxFit.cover,),
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.video_library,color: Colors.white,size: 14,),
                              Text("5000",style: TextStyle(color: Colors.white,fontSize: 12),)
                            ],
                          ),
                        ),
//                        SizedBox(width: 3,),
                        Expanded(
                          flex: 1,
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.message,color: Colors.white,size: 14,),
                              Text("1.5万",style: TextStyle(color: Colors.white,fontSize: 12),)
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            alignment: Alignment.centerRight,
                            child: Text("4:50",style: TextStyle(color: Colors.white,fontSize: 12),),
                          ),
                        )
                      ],
                    )
                  ],

                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                height: ScreenUtil().setHeight(70),
                child: Text(val["title"], style: TextStyle(fontSize: 12),overflow: TextOverflow.ellipsis,maxLines: 2,),
              ),
              SizedBox(height: 2,),
              Container(
                padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(2)),
                      child: Text(
                        "8万点赞",
                        style: TextStyle(color: Colors.white, fontSize: 8),
                      ),
                    ),
                    Icon(Icons.dialpad, size: 12,)
                  ],
                ),
              )
            ],
          ),
        ),
      );
    });
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.end,

      children: this._OneCard(),
    );
  }
}