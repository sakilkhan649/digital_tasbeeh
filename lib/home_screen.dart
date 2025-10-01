import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _value = 0;
  //Add Method........
  Add() {
    setState(() {
      _value++;
    });
  }

  //Sub Method.........
  Sub() {
    setState(() {
      if (_value > 0) {
        _value--;
      }
      if (_value == 0) {
        MySnackBar(" Value 0", context);
      }
    });
  }

  //Reset Method..........
  Reset() {
    setState(() {
      _value = 0;
      if (_value == 0) {
        MySnackBar(" Value 0", context);
      }
    });
  }

  //SnackBar Method.............
  MySnackBar(message, context) {
    return ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      //AppBar...........................................
      appBar: AppBar(
        title: Text(
          "Tasbeeh",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
        elevation: 10,
        shadowColor: Colors.red,
        backgroundColor: Colors.blue[400],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(5)),
        ),
        actions: [
          IconButton(
            onPressed: () {
              MySnackBar("I am List", context);
            },
            icon: Icon(Icons.list_alt_outlined, color: Colors.black),
          ),
          IconButton(
            onPressed: () {
              MySnackBar("I am Settings", context);
            },
            icon: Icon(Icons.settings, color: Colors.black),
          ),
        ],
      ),
      //Drawer...........................................................
      drawer: Drawer(
        elevation: 10,
        shadowColor: Colors.red,
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.blue[400],
                ),
                accountName: Text(
                  "Md Sakil Hossion",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                accountEmail: Text(
                  "mdsakilkhan649@gmail.com",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                currentAccountPicture: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("images/myimage.jpeg"),
                ),
                onDetailsPressed: () {
                  MySnackBar("Thank you", context);
                },
              ),
            ),
            ListTile(
              title: Text("Home", style: TextStyle(color: Colors.black)),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.black),
              title: Text("Home", style: TextStyle(color: Colors.black)),
              onTap: () {
                MySnackBar("I am Home", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.account_box_sharp, color: Colors.black),
              title: Text("Account Box", style: TextStyle(color: Colors.black)),
              onTap: () {
                MySnackBar("I am Account", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite, color: Colors.black),
              title: Text("Favorite", style: TextStyle(color: Colors.black)),
              onTap: () {
                MySnackBar("I am Favorite", context);
              },
            ),
          ],
        ),
      ),
      //Body................................................................
      body: Center(
        child: Card(
          elevation: 10,
          shadowColor: Colors.red,
          child: Container(
            height: double.infinity,
            width: double.infinity,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // 3 Card Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Card(
                        color: Colors.blue[400],
                        elevation: 10,
                        shadowColor: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.12,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Subhan Allah",
                                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,),
                              ),
                              Text(
                                "سُبْحَانَ ٱللَّٰهِ ",
                                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Expanded(
                      child: Card(
                        color: Colors.blue[400],
                        elevation: 10,
                        shadowColor: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.12,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Alhamdulillah",
                                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,),
                              ),
                              Text(
                                " ٱلْحَمْدُ لِلَّٰهِِ ",
                                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Expanded(
                      child: Card(
                        color: Colors.blue[400],
                        elevation: 10,
                        shadowColor: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.12,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Allahu Akbar",
                                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,),
                              ),
                              Text(
                                "ٱللَّٰهُ أَكْبَرُ",
                                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20),

                //Counter display.......
                Card(
                  color: Colors.blue[400],
                  elevation: 10,
                  shadowColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.20,
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Center(
                      child: Text(
                        _value.toString(),
                        style: TextStyle(fontSize: 50),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20),

                // Buttons Row................
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Tooltip(
                        message: "Decrement",
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue[400],
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                10,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                              vertical: 20,
                            ),
                            elevation: 10,
                            shadowColor: Colors.red,
                          ),
                          onPressed: () {
                            Sub();
                          },
                          child: Text(
                            "Sub",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 10),

                    Expanded(
                      child: Tooltip(
                        message: "Increment",
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue[400],
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                10,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                              vertical: 20,
                            ),
                            elevation: 10,
                            shadowColor: Colors.red,
                          ),
                          onPressed: () {
                            Add();
                          },
                          child: Text(
                            "Add",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 10),

                    Expanded(
                      child: Tooltip(
                        message: "Reset",
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue[400],
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                10,
                              ), // গোলাকার কোণা
                            ),
                            padding: EdgeInsets.symmetric(
                              vertical: 20,
                            ),
                            elevation: 10,
                            shadowColor: Colors.red,
                          ),
                          onPressed: () {
                            Reset();
                          },
                          child: Text(
                            "Reset",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        currentIndex: 0,
        elevation: 10,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.alarm), label: "Alarm"),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_customize_sharp),
            label: "Custom",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        onTap: (int index) {
          if (index == 0) {
            MySnackBar("I am Alarm", context);
          }
          if (index == 1) {
            MySnackBar("I am Custom", context);
          }
          if (index == 2) {
            MySnackBar("I am Profile", context);
          }
        },
      ),
    );
  }
}
