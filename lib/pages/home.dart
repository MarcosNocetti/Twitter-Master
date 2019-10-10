import 'package:flutter/material.dart';
import 'package:Twitter-Master/pages/card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            brightness: Brightness.dark,
            primarySwatch: Colors.indigo,
            accentColor: Colors.indigo),
        home: DefaultTabController(
          length: 4,

          child: Scaffold(
            drawer: Drawer(
              child: ListView(

              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Text('Marcos Gabriel Nocetti Santos'),
                  decoration: BoxDecoration(
                    color: Colors.black87,
                  ),
                ),
                ListTile(
                  title: Text('Item 1'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  title: Text('Item 2'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
              ],
            ),
            ),
            appBar: AppBar(
              title: Container(
                  width: double.maxFinite,
                  height: 50,
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.all(0),
                    child: Row(
                      children: <Widget>[
                        // Expanded(
                        //     flex: 2,
                        //     child: ),
                        Container(
                          width: 35,
                          height: 35,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                              'https://avatars2.githubusercontent.com/u/28612356?s=400&u=43048ac96e0db59efd8a4f0791754b925640588d&v=4',
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          flex: 8,
                          child: Text(
                            'Pagina inicial',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Expanded(
                            flex: 2,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.star_half),
                            )),
                      ],
                    ),
                  )),
              bottom: TabBar(tabs: <Widget>[
                Container(
                  height: 50,
                  child: Icon(
                    Icons.home,
                    color: Colors.blueAccent,
                  ),
                ),
                Container(
                  height: 50,
                  child: Icon(Icons.search),
                ),
                Container(
                  height: 50,
                  child: Icon(Icons.notifications),
                ),
                Container(
                  height: 50,
                  child: Icon(Icons.mail_outline),
                ),
              ]),
            ),
            body: TabBarView(
              children: <Widget>[
                Container(
                  child: ListView.separated(
                    itemCount: 4,
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return Divider();
                    },
                    itemBuilder: (context, index) {
                      return CardTwitter();
                    },
                  ),
                ),
                Container(),
                Container(),
                Container(),
              ],
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.edit),
            ),
          ),
        ));
  }
}
