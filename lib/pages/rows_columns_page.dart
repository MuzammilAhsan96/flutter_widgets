import 'package:flutter/material.dart';

class RowsColumnsPage extends StatelessWidget {
  const RowsColumnsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rows and Columns"),
        centerTitle: true,
      ),
      body: Center(
          child: Container(
              alignment: Alignment.center,
              color: Colors.white,
              margin: EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Expanded(
                        child: Text(
                          "Spice Jet",
                          style: TextStyle(
                              fontFamily: "Raleway",
                              fontSize: 35,
                              color: Colors.green,
                              fontStyle: FontStyle.italic),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "from lucknow to bangalore via delhi, mumbai",
                          style: TextStyle(
                              fontFamily: "Raleway",
                              fontSize: 20,
                              color: Colors.black,
                              fontStyle: FontStyle.italic),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Expanded(
                        child: Text(
                          "Air India",
                          style: TextStyle(
                              fontFamily: "Raleway",
                              fontSize: 35,
                              color: Colors.deepOrange,
                              fontStyle: FontStyle.italic),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "from lucknow to bangalore via delhi, mumbai",
                          style: TextStyle(
                              fontFamily: "Raleway",
                              fontSize: 20,
                              color: Colors.black,
                              fontStyle: FontStyle.italic),
                        ),
                      ),
                    ],
                  )
                ],
              ))),
    );
  }
}
