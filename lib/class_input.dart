import 'package:flutter/material.dart';

class InkPut extends StatefulWidget {
  const InkPut({super.key, required this.buttonTitle});
  final String buttonTitle;

  @override
  State<InkPut> createState() => _InkPutState();
}

class _InkPutState extends State<InkPut> {
  final double borraduisV = 4;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width / 2.1,
        margin: EdgeInsets.symmetric(horizontal: 0),
        padding: EdgeInsets.all(0),
        child: MaterialButton(
          elevation: 2,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(borraduisV),
                  bottomRight: Radius.circular(borraduisV))),
          padding: EdgeInsets.all(0),
          color: Colors.white,
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // browse
              Expanded(
                flex: 1,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blueGrey[50],
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(borraduisV),
                            bottomRight: Radius.circular(borraduisV))),
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 14),
                    child: Text(
                      "Browse",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey[600]),
                    )),
              ),
              // title
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 4),
                  // title variable buttonTitle
                  child: Text(
                    widget.buttonTitle,
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
