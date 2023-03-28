import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CGC extends StatelessWidget {
  final String companyName;
  final String datatime;
  final String country;
  final String Deliverycompany;
  final String myimages;

  CGC(
      {super.key,
      required this.myimages,
      required this.companyName,
      required this.datatime,
      required this.country,
      required this.Deliverycompany});
  double fontsizevar = 20;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
              color: Colors.blueGrey[50],
              borderRadius: BorderRadius.circular(12),
              // ignore: prefer_const_literals_to_create_immutables
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 211, 210, 210),
                  blurRadius: 6,
                  spreadRadius: 6,
                ),
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  flex: 2,
                  child: Container(
                      margin: EdgeInsets.symmetric(vertical: 6),
                      width: double.infinity,
                      height: double.infinity,
                      // color: Colors.blue,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(myimages),
                      ))),
              Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          // color: Colors.black26,
                          child: AutoSizeText(
                            companyName,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: fontsizevar,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          // color: Colors.grey,
                          child: AutoSizeText(
                            country,
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: fontsizevar),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          // color: Colors.green,
                          child: AutoSizeText(
                            datatime,
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: fontsizevar),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          // color: Colors.orange,
                          child: AutoSizeText(
                            Deliverycompany,
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: fontsizevar),
                          ),
                        ),
                      ),
                    ],
                  )),
              Expanded(
                  child: Container(
                margin: EdgeInsets.symmetric(horizontal: 4),
                padding: EdgeInsets.all(6),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  color: Colors.blueAccent,
                  onPressed: () {},
                  child: Container(
                      width: double.infinity,
                      child: AutoSizeText(
                        "أرشيف الشركة",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                ),
              ))
            ],
          )),
    );
  }
}
