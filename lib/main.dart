import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:priodic_table/model/model.dart';
import 'package:priodic_table/pages/pages.dart';
import 'package:priodic_table/services/services.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
    .then((_){
      runApp(MyApp());
    });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: FutureBuilder<ElementList>(
          future: loadElements(),
          builder: (context, snapshot){
            ElementList elementList = snapshot.data;
            if(snapshot.connectionState == ConnectionState.done){
              return TableView(elementList: elementList,);
            }
            else{
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}