import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:caakl/UI/addBudget/addbudgetmodel.dart';
import 'package:caakl/UI/budget/budget_model.dart';
import 'package:caakl/UI/budget/budget_provider.dart';
import 'package:caakl/UI/items/model.dart';
import 'package:caakl/UI/items/provider.dart';
import 'package:caakl/UI/addBudget/addbudgetprovider.dart';
import 'LOGIN.dart';
import 'REGISTRATION.dart';
import 'HOMEPAGE.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(BudgetModelAdapter().typeId)) {
    Hive.registerAdapter(BudgetModelAdapter());
  }
  if (!Hive.isAdapterRegistered(AddBudgetModelAdapter().typeId)) {
    Hive.registerAdapter(AddBudgetModelAdapter());
  }
  if (!Hive.isAdapterRegistered(ValueOfTextFormAdapter().typeId)) {
    Hive.registerAdapter(ValueOfTextFormAdapter());
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AddListProvider()),
        ChangeNotifierProvider(create: (_) => BudgetProvider()),
        ChangeNotifierProvider(create: (_) => AddBudgetProvider()),
      ],
      child: MaterialApp(
        title: 'COVER PAGE', // Application name
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
        initialRoute: '/',
        routes: {
          '/Sign_in': (context) => Sign_in(),
          '/Register': (context) => Register(),
          '/HomePage': (context) => HomePage(),
          '/Notification': (context) => HomePage(),
        },
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.topCenter,
              child: const Image(image: AssetImage('images/LOGO.png')),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: const Color(0xffffffff),
              backgroundColor: const Color(0xff3CA77D),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/Sign_in');
            },
            child: const SizedBox(
              width: 150.0,
              height: 50.0,
              child: Center(
                child: Text(
                  'GET STARTED',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
          ),
          const SizedBox(height: 80),
        ],
      ),
    );
  }
}
