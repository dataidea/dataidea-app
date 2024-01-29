// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

import 'pages/blog_page.dart';
import 'pages/home_page.dart';
import 'pages/about_page.dart';
import 'pages/courses_page.dart';
import 'pages/profile_page.dart';
import 'pages/services_page.dart';
import 'pages/resources_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Color primary = Color(0xFF67FFF0);

    return MaterialApp(
      title: 'Your App',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/about': (context) => AboutPage(),
        '/services': (context) => ServicesPage(),
        '/courses': (context) => CoursesPage(),
        '/resources': (context) => ResourcesPage(),
        '/blog': (context) => BlogPage(),
        '/profile': (context) => ProfilePage(),
        // Add routes for other pages here
      },
    );
  }
}
