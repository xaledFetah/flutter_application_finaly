import 'package:flutter/material.dart';
import 'package:flutter_application_1/class_drawer_test.dart';
import 'package:flutter_application_1/class_dropdown.dart';
import 'package:flutter_application_1/class_text_form.dart';

class addCityshipPage extends StatefulWidget {
  addCityshipPage({super.key});

  @override
  State<addCityshipPage> createState() => _addCityshipPageState();
}

class _addCityshipPageState extends State<addCityshipPage> {
  final textS = TextStyle(
    color: Colors.grey[600],
    fontWeight: FontWeight.bold,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50),
        padding: EdgeInsets.all(10),
        color: Colors.white,
        child: Card(
          child: Container(
            height: MediaQuery.of(context).size.height / 1.5,
            padding: EdgeInsets.all(0),
            // decoration card
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12, blurRadius: 4, spreadRadius: 2)
                ],
                color: Colors.white,
                border: Border.all(width: 2, color: Colors.black12)),
            child: Column(
              children: [
                // Row items
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "home");
                          },
                          child: Text(
                            "تراجع",
                            style: textS,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          "نحديد سعر التوصيل ",
                          style: textS,
                        ),
                      ),
                      Container(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "home");
                          },
                          child: Text(
                            "انتهى",
                            style: textS,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Divider
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6.0),
                  child: Divider(
                    thickness: 2,
                    color: Colors.black38,
                  ),
                ),
                // dropdownformfield (city,price)
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      // container title the first dropdown
                      Container(
                        child: Text("المدينة و السعر", style: textS),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 6),
                        width: MediaQuery.of(context).size.width / 2,
                        child: DropdownFC(titledropdow: ""),
                      )
                    ],
                  ),
                ),
                // Row 2 items
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 6),
                          child: Column(
                            children: [
                              // container title the first dropdown
                              Container(
                                child: Text("اسم الدولة", style: textS),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 6),
                                child: DropdownFC(titledropdow: ""),
                              )
                            ],
                          ),
                        ),
                      ),
                      //sized box
                      SizedBox(
                        width: 6,
                      ),
                      // seconde container
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 6),
                          child: Column(
                            children: [
                              // container title the first dropdown
                              Container(
                                child: Text("اسم المدينة", style: textS),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 6),
                                child: FormFieldL(titleInput: ""),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // threy container (سعر التوصيل)
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      // container title the first dropdown
                      Container(
                        child: Text("سعر التوصيل", style: textS),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 6),
                        width: MediaQuery.of(context).size.width / 2,
                        child: FormFieldL(titleInput: ""),
                      )
                    ],
                  ),
                ),

                // Matireal Button (تأكيد العملية)
                Container(
                  margin: EdgeInsets.only(top: 10),
                  width: MediaQuery.of(context).size.width / 3,
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    color: Colors.green[700],
                    onPressed: () {},
                    child:
                        // button features
                        Container(
                            padding: EdgeInsets.symmetric(vertical: 12),
                            child: Text(
                              "تأكيد العملية",
                              // text style
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
