import 'package:flutter/material.dart';
import 'package:caakl/UI/budget/budgetpage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomeContent(), // Main home content
    ChatBot(), // ChatBot page
    Notifications(), // Notifications page
    BillReminder(),
  ];

  final List<String> _titles = [
    'HOME',
    'CHATBOT',
    'NOTIFICATION',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Text(
          _titles[_selectedIndex],
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Roboto',
            fontSize: 30,
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff7FECC2),
                Color(0xff268A63),
                Color(0xff52A585),
              ],
              stops: [0.0, 0.0, 0.2],
            ),
          ),
        ),
      ),
      drawer: Drawer(),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
            label: 'ChatBot',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        Container(
          color: Color(0xffD0FFED),
          width: 200,
          height: 200,
          child: Image.asset('images/PERCENTS.png', fit: BoxFit.contain),
        ),
        SizedBox(height: 10),
        Container(
          color: Color(0xffD0FFED),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 400,
                        child: Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            Image.asset('images/BUTTON1.png',
                                fit: BoxFit.cover),
                            Text(
                              'Category Manager',
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 19,
                                fontFamily: "Roboto",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              Stack(
                alignment: Alignment.center,
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BudgetPage()),
                          );
                        },
                        child: Container(
                          width: 400,
                          child: Stack(
                            alignment: Alignment.centerRight,
                            children: [
                              Image.asset('images/BUTTON2.png',
                                  fit: BoxFit.cover),
                              Text(
                                'Budget Planner',
                                style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 19,
                                  fontFamily: "Roboto",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              Stack(
                alignment: Alignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 400,
                        child: Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            Image.asset('images/BUTTON3.png',
                                fit: BoxFit.cover),
                            Text(
                              'Expense Tracker',
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 19,
                                fontFamily: "Roboto",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              Stack(
                alignment: Alignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 400,
                        child: Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            InkWell(
                              onTap: () {
                                // Handle the image tap
                                print('Image tapped');
                              },
                              child: Image.asset('images/BUTTON4.png',
                                  fit: BoxFit.cover),
                            ),
                            Positioned(
                              right: 10,
                              child: Text(
                                'Share Expenses',
                                style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 19,
                                  fontFamily: "Roboto",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              Stack(
                alignment: Alignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 400,
                        child: Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            InkWell(
                              onTap: () {
                                // Handle the tap event
                                print('Image tapped');

                                // Navigate to another screen
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BillReminder()),
                                );
                              },
                              child: Stack(
                                children: [
                                  Image.asset('images/BUTTON6.png',
                                      fit: BoxFit.cover),
                                  Positioned(
                                    right: 10,
                                    child: Text(
                                      'Bill Reminder',
                                      style: TextStyle(
                                        color: Color(0xff000000),
                                        fontSize: 19,
                                        fontFamily: "Roboto",
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ChatBot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Chat with our bot!'),
    );
  }
}

class BillReminder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Bill Reminder Page'),
    );
  }
}

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
            height: 80,
            color: Color(0xffF3F3F3),
            child: const Center(child: Text('You have utilized 30 pesos.')),
          ),
          SizedBox(height: 5.0),
          Container(
            height: 80,
            color: Color(0xffF3F3F3),
            child: const Center(child: Text('You have utilized 100 pesos.')),
          ),
          SizedBox(height: 5.0),
          Container(
            height: 80,
            color: Color(0xffF3F3F3),
            child: const Center(child: Text('You have utilized 200 pesos.')),
          ),
          SizedBox(height: 5.0),
          Container(
            height: 80,
            color: Color(0xffF3F3F3),
            child: const Center(child: Text('You have utilized 150 pesos.')),
          ),
          SizedBox(height: 5.0),
          Container(
            height: 80,
            color: Color(0xffF3F3F3),
            child: const Center(child: Text('You have utilized 100 pesos.')),
          ),
          SizedBox(height: 5.0),
          Container(
            height: 80,
            color: Color(0xffF3F3F3),
            child: const Center(child: Text('You have utilized 100 pesos.')),
          ),
          SizedBox(height: 5.0),
          Container(
            height: 80,
            color: Color(0xffF3F3F3),
            child: const Center(
                child: Text('You have exceeded your budget limit!')),
          ),
          SizedBox(height: 5.0),
          Container(
            height: 80,
            color: Color(0xffF3F3F3),
            child: const Center(
                child: Text('You have utilized 50 pesos.',
                    style: TextStyle(fontSize: 20))),
          ),
        ],
      ),
    );
  }
}
