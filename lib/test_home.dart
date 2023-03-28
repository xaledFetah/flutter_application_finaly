import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            SizedBox(
              height: 50,
            ),

            // ship page button
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width / 2,
                child: MaterialButton(
                  color: Colors.green[50],
                  onPressed: () {
                    Navigator.pushNamed(context, "ship");
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Text("ship"),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 20,
            ),

            //add ship page button
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width / 2,
                child: MaterialButton(
                  color: Colors.blue[50],
                  onPressed: () {
                    Navigator.pushNamed(context, "addship");
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Text("add ship"),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 20,
            ),

            //add city ship page button
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width / 2,
                child: MaterialButton(
                  color: Colors.pink[50],
                  onPressed: () {
                    Navigator.pushNamed(context, "addcityship");
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Text("add city ship"),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 20,
            ),

            //add city ship page button
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width / 2,
                child: MaterialButton(
                  color: Colors.yellow[50],
                  onPressed: () {
                    Navigator.pushNamed(context, "qaddcompany");
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Text("qadd company"),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 20,
            ),

            //add city ship page button
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width / 2,
                child: MaterialButton(
                  color: Colors.blueGrey[50],
                  onPressed: () {
                    Navigator.pushNamed(context, "employes");
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Text("employs"),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 20,
            ),

            //add city ship page button
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width / 2,
                child: MaterialButton(
                  color: Colors.deepPurple[50],
                  onPressed: () {
                    Navigator.pushNamed(context, "request");
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Text("request"),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
