import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_and_navigator/providerfile.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => CountProvider(),
      child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    CountProvider counterProvider = Provider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(counterProvider.value.toString(), style: TextStyle(fontSize: 30),),
            ElevatedButton(
                onPressed: (){
                    counterProvider.Increment();
                },
                child: Icon(Icons.add, size: 30,)
            ),
            ElevatedButton(
                onPressed: (){

                },
                child: Icon(Icons.send, size: 30,)
            ),
          ],
        ),
      ),
    );
  }
}



