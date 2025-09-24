import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nggojeg/chat.dart';
import 'package:nggojeg/home_screen.dart';
import 'package:nggojeg/menu_lainnya.dart';
import 'package:nggojeg/order_screen.dart';
import 'package:nggojeg/promos_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarBrightness: Brightness.light,
    statusBarColor: Color(0xFF00880C),
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    HomeScreen(),
    PromosScreen(),
    OrderScreen(),
    ChatScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _pages[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/home-icon.png",
              width: 24,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/promos-icon.png",
              width: 24,
            ),
            label: 'Promos',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/orders-icon.png",
              width: 24,
            ),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/chat-icon.png",
              width: 24,
            ),
            label: 'Chat',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFF00880C),
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
