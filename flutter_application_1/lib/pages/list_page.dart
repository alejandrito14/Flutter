import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            _contenedor(title: "Popular Recipes"),
            _cards1(
              title: "Friday Night",
              path: "assets/fotocomida2.jpeg",
              title2: "20 populars food",
            ),
            _cards1(
              title: "Weekend Breakfast",
              path: "assets/fotocomida1.jpeg",
              title2: "20 populars food",
            ),
            _cards1(
              title: "Monday Dinner",
              path: "assets/fotocomida4.jpeg",
              title2: "20 populars food",
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('')),
            BottomNavigationBarItem(icon: Icon(Icons.search), title: Text('')),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark), title: Text('')),
            BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('')),
          ],
        ));
  }
}

Widget _contenedor({
  required String title,
}) {
  return Container(
    width: 100.0,
    height: 50.0,
    margin: EdgeInsets.only(left: 120.0, right: 15.0, top: 100.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Text(
              'Popular Recipes',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.expand_more,
              color: Colors.grey,
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _cards1({
  required String title,
  required String path,
  required String title2,
}) {
  return Container(
    width: 180.0,
    height: 250.0,
    margin: EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),

    // height: double.infinity,
    decoration: BoxDecoration(
      color: Colors.red,
      borderRadius: BorderRadius.circular(10.0),
      image: DecorationImage(
        image: AssetImage(path),
        fit: BoxFit.fitWidth,
      ),
    ),

    child: Padding(
      padding: const EdgeInsets.only(
        top: 100.0,
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          width: 200.0,
          height: 100.0,
          decoration: BoxDecoration(),
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 40.0,
            ),
          ),
        ),
        Spacer(),
        Container(
          padding: const EdgeInsets.only(right: 1.0),
          child: Container(
            width: 200.0,
            height: 50.0,
            decoration: BoxDecoration(),
            child: Text(
              title2,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 10.0,
              ),
            ),
          ),
        ),
      ]),
    ),
  );
}
