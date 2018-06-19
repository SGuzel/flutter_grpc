import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';

import 'proto/helloworld.pbgrpc.dart';

class MainPage extends StatefulWidget {
  final String title;

  MainPage({Key key, this.title}) : super(key: key);

  @override
  MainPageState createState() => new MainPageState();
}

class MainPageState extends State<MainPage> {
  final _biggerFont = const TextStyle(fontSize: 18.0);
  String _displayedJoke = 'beginning...';

  GreeterClient _client;
  ClientChannel _channel;

  MainPageState() {
    _channel = new ClientChannel('localhost',
      port: 50051,
      options: const ChannelOptions(
          credentials: const ChannelCredentials.insecure()));
    _client = new GreeterClient(_channel);   
  }

  @override
  initState() {
    super.initState();
    _refreshAction();
  }

  @override
  dispose() {
    _closeChannel();
    super.dispose();
  }

  _closeChannel() async {
    await _channel.shutdown();
  }

   _refreshAction() async {
      var joke = await _client.sayHello(new Empty() );
      setState(() {
       _displayedJoke = joke.toString();
      });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body:
        new Center (
         child : new Container(
            padding: new EdgeInsets.all(18.0),
            child:  new Text('$_displayedJoke', style: _biggerFont),           
         )),
          floatingActionButton: new FloatingActionButton(
          onPressed: _refreshAction,
          tooltip: 'Echo',
          child: new Icon(Icons.refresh),
        ),

    );
  }
}

