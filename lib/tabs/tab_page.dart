import 'package:bilibili_app/model/drawerList.dart';
import '../model/drawerList.dart';
import 'package:bilibili_app/tabs/chanel_page.dart';
import 'package:bilibili_app/tabs/home_page.dart';
import 'package:bilibili_app/tabs/member_page.dart';
import 'package:bilibili_app/tabs/news_page.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class TabPage extends StatefulWidget {
//  List<Widget> drawerList;
  TabPage({Key key}) : super(key: key);

  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  List _pageList = [HomePage(), ChanelPage(), NewsPage(), MemberPage()];
  int _currentIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKye = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKye,
      appBar: _BiliBiliAppBar(),
      body: this._pageList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            this._currentIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页")),
          BottomNavigationBarItem(
              icon: Icon(Icons.bubble_chart), title: Text("频道")),
          BottomNavigationBarItem(icon: Icon(Icons.loop), title: Text("动态")),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), title: Text("会员购")),
        ],
      ),
      drawer: Drawer(
        child: Stack(
          alignment: Alignment(0, 1),
          children: <Widget>[
            Container(
              color: Colors.black12,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: UserAccountsDrawerHeader(
                            currentAccountPicture: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1564572548608&di=f7e9b4091c679aa9b60b71d1aa8f0227&imgtype=0&src=http%3A%2F%2Fhbimg.huabanimg.com%2F39dd322a48cfee86a9b23f5c4d49f2d3610ce0b115472-cB9sq9_fw658"),
                            ),
                            accountName: Text("大会员",
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        print("我是大会员");
                      },
                      child: Container(
                        margin: EdgeInsets.all(0),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black12)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      "我的大会员",
                                      style: TextStyle(
                                          color: Colors.pinkAccent[100],
                                          fontSize: 11),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "了解更多",
                                      style: TextStyle(
                                          color: Colors.black38, fontSize: 10),
                                    )
                                  ],
                                ),
                                Text("开通大会员畅看国产剧",
                                    style: TextStyle(
                                        color: Colors.black38, fontSize: 10)),
                              ],
                            ),
                            Icon(
                              Icons.keyboard_arrow_right,
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                      decoration: BoxDecoration(color: Colors.white),
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              Toast.show("动态", context, gravity: Toast.CENTER);
                            },
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "10",
                                  style: TextStyle(
                                      color: Colors.black38, fontSize: 12),
                                ),
                                Text(
                                  "动态",
                                  style: TextStyle(
                                      color: Colors.black38, fontSize: 12),
                                )
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Toast.show("关注", context, gravity: Toast.CENTER);
                            },
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "100",
                                  style: TextStyle(
                                      color: Colors.black38, fontSize: 12),
                                ),
                                Text(
                                  "关注",
                                  style: TextStyle(
                                      color: Colors.black38, fontSize: 12),
                                )
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Toast.show("粉丝", context, gravity: Toast.CENTER);
                            },
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "150",
                                  style: TextStyle(
                                      color: Colors.black38, fontSize: 12),
                                ),
                                Text(
                                  "粉丝",
                                  style: TextStyle(
                                      color: Colors.black38, fontSize: 12),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      margin: EdgeInsets.only(top: 5),
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            leading: Icon(Icons.home),
                            title: Text("首页"),
                            dense: true,
                          ),
                          ListTile(
                            leading: Icon(Icons.history),
                            title: Text("历史记录"),
                            dense: true,
                          ),
                          ListTile(
                            leading: Icon(Icons.cloud_download),
                            title: Text("下载管理"),
                            dense: true,
                          ),
                          ListTile(
                            leading: Icon(Icons.star),
                            title: Text("我的收藏"),
                            dense: true,
                          ),
                          ListTile(
                            leading: Icon(Icons.video_call),
                            title: Text("稍后再看"),
                            dense: true,
                          ),
                          Divider(),
                          ListTile(
                            leading: Icon(Icons.file_upload),
                            title: Text("投稿"),
                            dense: true,
                          ),
                          ListTile(
                            leading: Icon(Icons.center_focus_weak),
                            title: Text("创作中心"),
                            dense: true,
                          ),
                          ListTile(
                            leading: Icon(Icons.hot_tub),
                            title: Text("热门活动"),
                            dense: true,
                          ),
                          Divider(),
                          ListTile(
                            leading: Icon(Icons.video_library),
                            title: Text("直播"),
                            dense: true,
                          ),
                          ListTile(
                            leading: Icon(Icons.free_breakfast),
                            title: Text("免流量服务"),
                            dense: true,
                          ),
                          ListTile(
                            leading: Icon(Icons.text_rotate_up),
                            title: Text("青少年模式"),
                            dense: true,
                          ),
                          ListTile(
                            leading: Icon(Icons.bookmark_border),
                            title: Text("我的订单"),
                            dense: true,
                          ),
                          ListTile(
                            leading: Icon(Icons.shopping_basket),
                            title: Text("会员购物中心"),
                            dense: true,
                          ),
                          ListTile(
                            leading: Icon(Icons.phone_android),
                            title: Text("联系客服"),
                            dense: true,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black38,width: 0.5)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      IconButton(
                          icon: Icon(Icons.settings_applications, color: Colors.black38,),
                          onPressed: () {
                            Toast.show("设置", context, gravity: Toast.CENTER);
                          }),
                      Text("设置",style: TextStyle(color: Colors.black38,fontSize: 12),)
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      IconButton(
                          icon: Icon(Icons.scanner, color: Colors.black38,),
                          onPressed: () {
                            Toast.show("主题", context, gravity: Toast.CENTER);
                          }),
                      Text("主题",style: TextStyle(color: Colors.black38,fontSize: 12),)
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      IconButton(
                          icon: Icon(Icons.exit_to_app, color: Colors.black38,),
                          onPressed: () {
                            Toast.show("退出", context, gravity: Toast.CENTER);
                          }),
                      Text("退出",style: TextStyle(color: Colors.black38,fontSize: 12),)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _BiliBiliAppBar() {
    return AppBar(
      leading: Row(
        children: <Widget>[
          IconButton(
            icon: Container(
              padding: EdgeInsets.all(1),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1564572548608&di=f7e9b4091c679aa9b60b71d1aa8f0227&imgtype=0&src=http%3A%2F%2Fhbimg.huabanimg.com%2F39dd322a48cfee86a9b23f5c4d49f2d3610ce0b115472-cB9sq9_fw658"),
              ),
            ),
            onPressed: () => _scaffoldKye.currentState.openDrawer(),
          ),
        ],
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.games,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(
            Icons.arrow_downward,
            color: Colors.white,
          ),
          onPressed: () {},
        )
      ],
      title: Container(
        padding: EdgeInsets.all(5),
        width: 300,
        height: 30,
        alignment: Alignment(-1, 0),
        decoration: BoxDecoration(
          color: Colors.blueGrey[100],
          borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        child: Icon(Icons.search,color: Colors.white,),
      ),
      centerTitle: true,
    );
  }
}
