import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(myApp);
}

Widget myApp = MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Scaffold(
    appBar: AppBar(
      title: Text("Home"),
      centerTitle: false,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            "assets/notification.png",
            width: 24,
            height: 24,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            "assets/bag.png",
            width: 24,
            height: 24,
          ),
        ),
      ],
    ),
    body: Column(
      children: [
        SizedBox(height: 24),
        Padding(
          padding: EdgeInsets.all(16.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search Anything...",
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                borderSide: BorderSide(
                  color: Color(0xFFD1D5DB),
                  width: 1,
                ),
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              Text(
                "Categories",
                style: TextStyle(
                  color: Color(0xFF1F2937),
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  height: 0.11,
                  letterSpacing: 0.07,
                ),
              ),
              Spacer(),
              Text(
                "View All ->",
                textAlign: TextAlign.right,
                style: TextStyle(
                    color: Color(0xFF6B7280),
                    fontSize: 12,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0.12),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (int i = 0; i < 10; i++)
                Column(
                  children: [
                    if (i % 2 == 0)
                      Image.asset('assets/fashion.png')
                    else
                      Image.asset("assets/electronic.png"),
                    Text(i % 2 == 0 ? "Fashion" : "Electronic"),
                  ],
                )
            ],
          ),
        ),
        Text("Hello world"),
      ],
    ),
    drawer: Drawer(),
  ),
);
