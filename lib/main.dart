import 'package:block_sample/module/search/search_bloc.dart';
import 'package:provider/provider.dart';

import 'module/search/search_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text("Bloc Sample"),
          ),
          body: Provider<SearchBloc>.value(
            value: SearchBloc(),
            child: SearchView(),
          )),
    );
  }
}
