import 'package:flutter/material.dart';
import 'package:flutter_application_1/class_dropdown.dart';
import 'package:flutter_application_1/class_text_form.dart';

class EmployPage extends StatefulWidget {
  const EmployPage({super.key});

  @override
  State<EmployPage> createState() => _EmployPageState();
}

class _EmployPageState extends State<EmployPage> {
  // is variable for dropdown
  var SelectedCar;
  String hynt = 'Choose Any Car';

  // List Items
  List<String> itemsL = <String>["Hyundai", "Mercedes", "Audi"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        // app bar icons

        actions: [
          // leading icon
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "home");
              },
              icon: Icon(
                Icons.home_work,
                color: Colors.grey[600],
              ))
        ],
        // title fetuers
        backgroundColor: Colors.white,
        shadowColor: Colors.black54,
        elevation: 2,
        centerTitle: true,
        title: Text(
          // page title
          "تدقيق حسابات الموظفين",
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[600]),
        ),
      ),
      //drawer class extend

      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            // sizedbox
            SizedBox(
              height: 20,
            ),

            // employ name container

            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.topRight,
              child: Text("اسم الموظف"),
            ),
            // dropdown  employe name
            // start
            Container(
                padding: EdgeInsets.symmetric(horizontal: 2, vertical: 10),
                child: DropdownFC(titledropdow: '')),
            // dropdown end

            // Row inputs Num 1

            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        alignment: Alignment.centerRight,
                        child: Text("الخصم"),
                      ),
                      Container(
                        child: FormFieldL(
                          titleInput: '',
                        ),
                      ),
                    ],
                  ),
                ),
                // sized box
                SizedBox(
                  width: 5,
                ),
                // 2 expanded
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        alignment: Alignment.centerRight,
                        child: Text("سبب الخصم"),
                      ),
                      Container(
                        child: FormFieldL(
                          titleInput: '',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // Row inputs Num 2

            // Row inputs Num 1

            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        alignment: Alignment.centerRight,
                        child: Text("السلفة"),
                      ),
                      Container(
                        child: FormFieldL(
                          titleInput: '',
                        ),
                      ),
                    ],
                  ),
                ),
                // sized box
                SizedBox(
                  width: 5,
                ),
                // 2 expanded
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        alignment: Alignment.centerRight,
                        child: Text("سبب السلفة"),
                      ),
                      Container(
                        child: FormFieldL(
                          titleInput: '',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // Row inputs Num 2

            // Row inputs Num 1

            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        alignment: Alignment.centerRight,
                        child: Text("المكافأة"),
                      ),
                      Container(
                        child: FormFieldL(
                          titleInput: '',
                        ),
                      ),
                    ],
                  ),
                ),
                // sized box
                SizedBox(
                  width: 5,
                ),
                // 2 expanded
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        alignment: Alignment.centerRight,
                        child: Text("سبب المكافأة"),
                      ),
                      Container(
                        child: FormFieldL(
                          titleInput: '',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // Row inputs Num 2

            // Sized Box
            SizedBox(
              height: 20,
            ),

            // Material Button

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 100),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)),
                color: Colors.blue,
                onPressed: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        " حفظ ",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.save,
                        color: Colors.white,
                      )
                    ],
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
