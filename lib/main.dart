import 'package:flutter/material.dart';

import 'design.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'durar hr ',
      home: design(),
    );
  }
}

//-----------------------news api-----------------------------------
//import 'dart:convert';

//import 'package:flutter/material.dart';
//import 'package:http/http.dart'
//    as http; //here we import this package only if it's already define in pub spec file
//
//void main() => runApp(MyApp());
//
//class MyApp extends StatelessWidget {
//  Future<List> getUser() async {
//    http.Response response = await http.get(
//        "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=60a4fca097174660b6a485a6beae35ab");
//    var data = jsonDecode(response.body);
//    return data['articles'];
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: Scaffold(
//        appBar: AppBar(
//          title: Text("News Feed"),
//          actions: <Widget>[
//            IconButton(
//              icon: Icon(
//                Icons.call_to_action,
//                color: Colors.white,
//              ),
//              onPressed: () {
//                // do something
//              },
//            )
//          ],
//          backgroundColor: Colors.cyan,
//        ),
//        body: FutureBuilder(
//          builder: (BuildContext context, snapshot) {
//            if (snapshot.connectionState == ConnectionState.done) {
//              return Container(
//                child: ListView.builder(
//                  itemBuilder: (context, index) {
//                    return Column(
//                      children: <Widget>[
//                        NewsView(
//                          imageUrl: '${snapshot.data[index]['urlToImage']}',
//                          textdata1: '${snapshot.data[index]['title']}',
//                          textdata2: '${snapshot.data[index]['content']}',
//                          more: '${snapshot.data[index]['content']}',
//                        ),
//                        SizedBox(
//                          height: 10,
//                        )
//                      ],
//                    );
//                  },
//                  itemCount: snapshot.data.length,
//                ),
//              );
//            } else {
//              return Center(
//                child: CircularProgressIndicator(),
//              );
//            }
//          },
//          future: getUser(),
//        ),
//      ),
//    );
//  }
//}
//
//class NewsView extends StatefulWidget {
//  final String imageUrl;
//  final String textdata1;
//  final String textdata2;
//  final String more;
//
//  NewsView({
//    Key key,
//    this.imageUrl,
//    this.textdata1,
//    this.textdata2,
//    this.more,
//  });
//
//  @override
//  _NewsViewState createState() => _NewsViewState();
//}
//
//class _NewsViewState extends State<NewsView> {
//  @override
//  Widget build(BuildContext context) {
//    return Card(
//      elevation: 15,
//      child: Container(
//        //height: 300,
//        //width: 100,
//        child: Column(
//          children: <Widget>[
//            Image.network(widget.imageUrl),
//            Container(
//              child: Text(
//                widget.textdata1,
//                style: TextStyle(fontSize: 24.0),
//              ),
//            ),
//            SizedBox(
//              height: 5,
//            ),
//            Container(
//              child: Text(
//                widget.textdata2,
//                style: TextStyle(fontSize: 16),
//              ),
//            ),
//            FlatButton(
//              child: Text("read more"),
//              onPressed: () {
//                Navigator.push(
//                    context,
//                    MaterialPageRoute(
//                        builder: (context) => Demo(
//                              newsView: widget.more,
//                            )));
////                print("read more clicked");
////                widget.more;
//              },
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}
//
//class Demo extends StatefulWidget {
//  String newsView;
//  Demo({this.newsView});
//  @override
//  _DemoState createState() => _DemoState();
//}
//
//class _DemoState extends State<Demo> {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//        body: Column(
//      children: [
//        Container(
//          child: Padding(
//            padding: const EdgeInsets.only(top: 50.0),
//            child: Text(widget.newsView),
//          ),
//        ),
//        Padding(
//          padding: const EdgeInsets.only(top: 100.0),
//          child: Center(
//            child: SizedBox(
//              height: 20.0,
//              width: 100.0,
//              child: FlatButton(
//                child: Center(child: Text("Home")),
//                color: Colors.cyan,
//                onPressed: () {
//                  Navigator.pop(context);
//                },
//              ),
//            ),
//          ),
//        ),
//      ],
//    ));
//  }
//}

//--------------------API Calling(First Example)-----------------------------

//import 'dart:convert';
//
//import 'package:flutter/material.dart';
//import 'package:http/http.dart' as http;//here we import this package only if it's already define in pub spec file
//
//void main() => runApp(MyApp());
//
//class MyApp extends StatelessWidget {
//  Future<Map> getUser() async {
//    http.Response response =
//        await http.get("https://reqres.in/api/users?page=2");
//
//    var data = jsonDecode(response.body);
//    return data;
//  }
//
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: Scaffold(
//        appBar: AppBar(
//          title: Text("API Calling"),
//          backgroundColor: Colors.cyan,
//        ),
//        body: FutureBuilder(
//          builder: (context, snapshot) {
//            if (snapshot.connectionState == ConnectionState.done) {
//              return ListView.builder(
//                itemBuilder: (context, index) {
//                  return Column(
//                    children: <Widget>[
//                      ListTile(
//                        leading: CircleAvatar(
//                          backgroundColor: Colors.grey,
//                          backgroundImage: NetworkImage(
//                              '${snapshot.data['data'][index]['avatar']}'),
//                        ),
//                        title: Text(
//                          '${snapshot.data['data'][index]['first_name']} ${snapshot.data['data'][index]['last_name']}',
//                        ),
//                        subtitle:
//                            Text('${snapshot.data['data'][index]['email']}'),
//                      ),
//                      Divider(
//                        indent: 60,
//                      ),
//                    ],
//                  );
//                },
//                itemCount: snapshot.data['data'].length,
//              );
//            } else {
//              return Center(
//                child: CircularProgressIndicator(),
//              );
//            }
//          },
//          future: getUser(),
//        ),
//      ),
//    );
//  }
//}
