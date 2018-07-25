import 'package:flutter/material.dart';
import 'package:flutter_kata_stocktracker/src/stock_bloc.dart';
import 'package:flutter_kata_stocktracker/src/stock_model.dart';
import 'package:flutter_kata_stocktracker/src/stock_provider.dart';

void main() {

final bloc = StocksBloc ();
   runApp(new MyApp(bloc:bloc));
}

class MyApp extends StatelessWidget {

  final  StocksBloc bloc;
  MyApp({Key key, this.bloc}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return StocksProvider(
          child: new MaterialApp(
        title: 'Kata - stock tracker',
        theme: new ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
          // counter didn't reset back to zero; the application is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: new MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
    
  }
}





class MyHomePage extends StatelessWidget {

  
  final String title;
   MyHomePage({Key key, this.title}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    final bloc = StocksProvider.of(context);

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return new Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text(title),
      ),
      body: StreamBuilder<List<stockModel>>(
                stream: bloc.stocks,
                initialData: List<stockModel>(),
                builder: (context, snapshot) {
                  if (snapshot.data != null &&
                      snapshot.data.isNotEmpty &&
                      snapshot.data.first != null) {
                    return Scrollbar(
                        child: ListView(
                            children: snapshot.data.map((_) {
                      return ListTile(
                          title: Text(_.stockName), subtitle: Text(_.price.toString()));
                    }).toList()));
                  }
                  return Text("Loading");
                }),
      floatingActionButton: new FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
