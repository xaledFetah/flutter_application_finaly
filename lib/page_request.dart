import 'package:flutter/material.dart';
import 'package:flutter_application_1/class_qdrop.dart';
import 'package:flutter_application_1/class_table.dart';
import 'package:flutter_application_1/class_text_form.dart';

class Requests extends StatefulWidget {
  const Requests({super.key});

  @override
  State<Requests> createState() => _RequestsState();
}

class _RequestsState extends State<Requests> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Lotus Blue"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "home");
              },
              icon: Icon(Icons.notifications))
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
            // text title center
            Container(
              alignment: Alignment.center,
              child: Text(
                "Ahmed F T Saleh Ahmed F T Saleh ",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.blue[900]),
              ),
            ),
            SizedBox(
              height: 25,
            ),

            // drop down buttons  list num 1
            DropdownC(
              dropDowntitle: 'إنشاء طلب',
              dropDownIcon: Icons.checklist_sharp,
            ),

            // drop down buttons  list num 2

            DropdownC(
              dropDowntitle: 'موجوداتي',
              dropDownIcon: Icons.storage_rounded,
            ),

            // drop down buttons  list num 3
            DropdownC(
              dropDowntitle: 'فلترة حسب الحالة',
              dropDownIcon: Icons.filter_alt_outlined,
            ),

            // drop down buttons  list num 4
            DropdownC(
              dropDowntitle: 'اخر 10 عمليات',
              dropDownIcon: Icons.schedule,
            ),

            // drop down buttons  list num 5
            DropdownC(
              dropDowntitle: 'فلترة حسب الدولة',
              dropDownIcon: Icons.filter_list,
            ),

            // drop down buttons  list num 6
            DropdownC(
              dropDowntitle: 'حساباتي',
              dropDownIcon: Icons.sticky_note_2,
            ),

            // sizedbox

            SizedBox(
              height: 20,
            ),
            // request button

            Center(
              child: MaterialButton(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                  Radius.circular(5),
                )),
                color: Color.fromARGB(255, 234, 232, 232),
                onPressed: () {},
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 26, vertical: 8),
                  child: Text(
                    'الطلبات',
                    // Style material button
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.orangeAccent),
                  ),
                ),
              ),
            ),
            // sizedbox
            SizedBox(
              height: 20,
            ),

            // text form field
            Container(
              margin: EdgeInsets.symmetric(horizontal: 14),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(255, 230, 228, 228),
                        blurRadius: 4,
                        spreadRadius: 1)
                  ]),
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 4),
              width: double.infinity,
              child: FormFieldL(titleInput: "البحث عن الطلبات"),
            ),

            // table
            Container(
              child: xxx(),
            )
          ],
        ),
      ),
    );
  }
}
