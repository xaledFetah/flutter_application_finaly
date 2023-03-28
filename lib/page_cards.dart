import 'package:flutter/material.dart';
import 'package:flutter_application_1/class_grid_card_data.dart';

class GridCardC extends StatefulWidget {
  const GridCardC({super.key});

  @override
  State<GridCardC> createState() => _GridCardCState();
}

class _GridCardCState extends State<GridCardC> {
  final carddata = [
    ["images/ll.jpg", "شركة صندوق", "العراق", "20-08-2022", "شركة توصيل داخلي"],
    ["images/m.jpg", "شركة صندوق", "العراق", "20-08-2022", "شركة توصيل داخلي"],
    ["images/t.jpg", "شركة صندوق", "العراق", "20-08-2022", "شركة توصيل داخلي"],
    ["images/w.jpg", "شركة صندوق", "العراق", "20-08-2022", "شركة توصيل داخلي"],
    ["images/p.jpg", "شركة صندوق", "العراق", "20-08-2022", "شركة توصيل داخلي"],
    ["images/c.jpg", "شركة صندوق", "العراق", "20-08-2022", "شركة توصيل داخلي"],
    ["images/r.jpg", "شركة صندوق", "العراق", "20-08-2022", "شركة توصيل داخلي"],
    ["images/z.jpg", "شركة صندوق", "العراق", "20-08-2022", "شركة توصيل داخلي"],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // app bar icons
        leading: Container(
            margin: EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
                onTap: () {
                  // click
                  Navigator.pushNamed(context, "home");
                },
                child: Image.asset('images/s.jpg'))),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "home");
              },
              icon: Icon(
                Icons.home_work,
                color: Colors.grey[600],
              ))
        ],
        backgroundColor: Colors.white,
        shadowColor: Colors.black54,
        elevation: 2,
        centerTitle: true,
        title: Text(
          "إدارة شركات التوصيل",
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[600]),
        ),
      ),
      drawer: Drawer(),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: GridView.builder(
              itemCount: carddata.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
              ),
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(2),
                  child: CGC(
                    myimages: carddata[index][0].toString(),
                    companyName: carddata[index][1].toString(),
                    country: carddata[index][2].toString(),
                    datatime: carddata[index][3].toString(),
                    Deliverycompany: carddata[index][4].toString(),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
