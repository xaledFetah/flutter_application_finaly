import 'dart:math';

import 'package:flutter/material.dart';

class DropdownC extends StatefulWidget {
  DropdownC(
      {super.key, required this.dropDowntitle, required this.dropDownIcon});
  final String dropDowntitle;
  final IconData dropDownIcon;

  @override
  State<DropdownC> createState() => _DropdownCState();
}

class _DropdownCState extends State<DropdownC> {
  var SelectedCar;
  String hynt = 'Choose Any Car';

  // List Items
  List<String> itemsL = <String>["Hyundai", "Mercedes", "Audi"];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // width: MediaQuery.of(context).size.width / 2,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 2),

        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Color.fromARGB(255, 213, 212, 212),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(8),
            // shadowsh
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(255, 230, 228, 228),
                  blurRadius: 6,
                  spreadRadius: 2)
            ]),
        // shadow

        child: DropdownButton<String>(
          icon: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Icon(Icons.expand_more)),
          iconSize: 25,
          isExpanded: true,
          underline: Divider(
            thickness: 0,
            color: Colors.transparent,
          ),
          hint: Row(
            children: [
              // drop down icon

              Container(
                  margin: EdgeInsets.all(8),
                  child: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 16, 46, 91),
                    child: Icon(
                      widget.dropDownIcon,
                      color: Colors.white,
                    ),
                  )),

              // dropdown title

              Text(
                widget.dropDowntitle,
                textAlign: TextAlign.center,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              )
            ],
          ),
          // the items drop dropdown
          items: itemsL
              .map((abc) => DropdownMenuItem(
                    child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: Text("$abc")),
                    value: abc,
                  ))
              .toList(),
          // on change
          onChanged: (newValue) {
            setState(() {
              SelectedCar = newValue!;
            });
          },
          // defualt value dropdown
          value: SelectedCar,
        ),
      ),
    );
  }
}
