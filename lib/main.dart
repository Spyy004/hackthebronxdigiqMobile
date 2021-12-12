
import 'package:digiq/all_queues.dart';
import 'package:digiq/createlinepage.dart';
import 'package:digiq/scanner_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'join_line.dart';
import 'splashscreen.dart';
import 'constants.dart';
import 'sign_up.dart';
import 'login_sreen.dart';
import 'my_queues.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  var x = await getToken(key: 'name');
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: x==null?('/splash'):('/allqueues'),
        routes: {
          '/splash':(context)=> SplashScreen(),
          '/':(context)=>SignUpScreen(),
          '/login':(context)=> LoginScreen(),
          '/allqueues':(context)=> MainMenu(),
          '/myqueues': (context)=> MyQueues(),
          '/createline':(context)=>CreateLinePage(),
          '/joinlines':(context)=>JoinLine(),
          '/scanner':(context)=>Scanner()
        },
       // home: x == null ? SignUpScreen() : MainMenu(),
      )
  );
}
