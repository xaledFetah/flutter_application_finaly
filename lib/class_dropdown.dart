import 'package:flutter/material.dart';

class DropdownFC extends StatefulWidget {
  DropdownFC({super.key, required this.titledropdow});

  String? titledropdow;

  @override
  State<DropdownFC> createState() => _DropdownFCState();
}

class _DropdownFCState extends State<DropdownFC> {
  var SelectedCar;
  String hynt = 'Choose Any Car';

  // List Items
  List<String> itemsL = <String>["Hyundai", "Mercedes", "Audis"];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 56,
      padding: EdgeInsets.all(0),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            // enable border
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                borderSide: BorderSide(
                    color: Color.fromARGB(255, 185, 184, 184), width: 2)),
            // focus border
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                borderSide: BorderSide(color: Colors.blue, width: 2)),
            // dropdown title
            labelText: widget.titledropdow,
            labelStyle: TextStyle(color: Colors.grey[600]),
            prefixIcon: Icon(Icons.unfold_more)),
        icon: Container(),

        // hint: ;
        // the items drop dropdown
        items: itemsL
            .map((abc) => DropdownMenuItem(
                  child: Container(child: Text("$abc")),
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
    );
  }
}
