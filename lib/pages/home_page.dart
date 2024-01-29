// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Color primary = Color(0xFF67FFF0);
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          // Add a button to open the Drawer
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        // ... (unchanged)
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: primary,
              ),
              child: Text(
                'DATAIDEA',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/');
              },
            ),
            ListTile(
              title: Text('About'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/about');
              },
            ),
            ListTile(
              title: Text('Services'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/services');
              },
            ),
            ListTile(
              title: Text('Courses'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/courses');
              },
            ),
            ListTile(
              title: Text('Learning Materials'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/resources');
              },
            ),
            ListTile(
              title: Text('Blog'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/blog');
              },
            ),

            // Add additional menu items for other pages
          ],
        ),
      ),
    );
  }
}
