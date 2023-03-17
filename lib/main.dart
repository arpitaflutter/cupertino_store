import 'package:cupertino_store/screens/product2/view/product2_screen.dart';
import 'package:cupertino_store/screens/products1/provider/product1_provider.dart';
import 'package:cupertino_store/screens/products1/view/product1_screen.dart';
import 'package:cupertino_store/screens/shoping/view/shopping_screen.dart';
import 'package:cupertino_store/screens/tab_bar/view/tabbar_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => product1_provider(),)
      ],
      child: CupertinoApp(
        debugShowCheckedModeBanner: false,
        // initialRoute: '3',
        routes: {
          '/':(p0) => tabbar_screen(),
          '1':(p0) => product1_screen(),
          '2':(p0) => product2_screen(),
          '3':(p0) => shopping_screen(),

        },
      ),
    ),
  );
}