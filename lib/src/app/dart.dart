import 'package:flutter/material.dart';
import 'package:flutter_app/src/app/pages/contador_page.dart';
import 'package:flutter_app/src/app/pages/home_page.dart';

class myApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(home: Center(child: CounterPage()) ,debugShowCheckedModeBanner: false,  );
    }

}

