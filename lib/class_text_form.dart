import 'package:flutter/material.dart';

class FormFieldL extends StatefulWidget {
  FormFieldL({super.key, required this.titleInput});
  final String titleInput;

  @override
  State<FormFieldL> createState() => _FormFieldLState();
}

class _FormFieldLState extends State<FormFieldL> {
  double borderRadiusV = 10;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.1,
      margin: EdgeInsets.symmetric(horizontal: 0, vertical: 6),
      child: Column(
        children: [
          Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              height: 56,
              child: TextFormField(
                // style text f f
                decoration: InputDecoration(
                    hintText: widget.titleInput,

                    // enable border
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(borderRadiusV),
                        borderSide: BorderSide(
                          color: Colors.black26,
                          width: 2,
                        )),
                    //    focused Border

                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(borderRadiusV),
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 2,
                        ))),

                // Cursor Color
                cursorColor: Colors.blue,
              )),
        ],
      ),
    );
  }
}
