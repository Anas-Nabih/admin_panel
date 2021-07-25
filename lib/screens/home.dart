import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  final String userName;
  final String email;

  Home({this.userName,this.email});
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool switchVal = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              color: Colors.lightBlueAccent,
              height: 200,
              width: 40,
              child: Padding(
                padding: EdgeInsets.only(top: 150, left: 20),
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: "Anas Nabih \n",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    TextSpan(
                      text: "anas7nabih@gmail.com",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ]),
                ),
              ),
            ),
            ListTile(
              title: Text("Home"),
              leading: Icon(
                Icons.home,
                color: Colors.purple,
              ),
              onTap: () {},
            ),
            Divider(
              color: Colors.blueGrey,
              height: 0,
              indent: 50,
            ),
            ListTile(
              title: Text("Add User"),
              leading: Icon(
                Icons.add_circle_outline,
                color: Colors.pink,
              ),
              onTap: () {},
            ),
            Divider(
              color: Colors.blueGrey,
              height: 0,
              indent: 50,
            ),
            ListTile(
              title: Text("Remove User"),
              leading: Icon(
                Icons.remove_circle_outline,
                color: Colors.teal,
              ),
              onTap: () {},
            ),
            Divider(
              color: Colors.blueGrey,
              height: 0,
              indent: 50,
            ),
            ListTile(
              title: Text("Change Password"),
              leading: Icon(
                Icons.settings,
                color: Colors.green,
              ),
              onTap: () {},
            ),
            Divider(
              color: Colors.blueGrey,
              height: 0,
              indent: 50,
            ),
            ListTile(
              title: Text("Log out"),
              leading: Icon(
                Icons.logout,
                color: Colors.amber,
              ),
              onTap: () {
                Navigator.pushNamed(context, "sign_in");
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text("Admin Panel"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        children: [
          Text(
            "Welcome Admin",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Container(
            child: Column(
              children: [
                Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            blurRadius: 15,
                            offset: Offset(2, 5))
                      ]),
                  child: ListTile(
                    title: Text(
                      "Automatic Mode",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                    trailing: Switch(
                      value: switchVal,
                      onChanged: (bool val) => setState(() {
                        switchVal = val;
                      }),
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(22),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 15,
                              offset: Offset(2, 5),
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.ac_unit,
                            color: Colors.cyan,
                            size: 40,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Sensor Status",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black26,
                              blurRadius: 15,
                              offset: Offset(2, 5))
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.widgets,
                            color: Colors.purpleAccent,
                            size: 40,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Sensor Readings",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(22),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 15,
                              offset: Offset(2, 5),
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.lightbulb_outline,
                            color: Colors.green,
                            size: 40,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Appliance Status",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black26,
                              blurRadius: 15,
                              offset: Offset(2, 5))
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.handyman_outlined,
                            color: Colors.orange,
                            size: 40,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Handel Manually",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
