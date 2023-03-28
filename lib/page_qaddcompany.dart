import 'package:flutter/material.dart';
import 'package:flutter_application_1/class_dropdown.dart';
import 'package:flutter_application_1/class_input.dart';
import 'package:flutter_application_1/class_text_form.dart';

class QAddCompany extends StatefulWidget {
  const QAddCompany({super.key});
  @override
  State<QAddCompany> createState() => _QAddCompanyState();
}

class _QAddCompanyState extends State<QAddCompany> {
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
          "إضافة شركة",
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[600]),
        ),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 2, vertical: 14),
            padding: const EdgeInsets.symmetric(
              horizontal: 5,
            ),

            // buttins code
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    child: InkPut(
                      buttonTitle: 'لوغو الشركة    ',
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    child: InkPut(
                      buttonTitle: 'معلومات الشركة',
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Second row inputs
          Container(
            margin: EdgeInsets.symmetric(horizontal: 2, vertical: 4),
            padding: const EdgeInsets.symmetric(
              horizontal: 4,
            ),

            // buttins code
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        child: Text("الاسم التجاري"),
                      ),
                      Container(
                        child: FormFieldL(
                          titleInput: '',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        child: Text("رقم السجل التجاري"),
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
          ),

          // Second row inputs
          Container(
            margin: EdgeInsets.symmetric(horizontal: 2, vertical: 4),
            padding: const EdgeInsets.symmetric(
              horizontal: 4,
            ),

            // buttins code
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        child: Text("عنوان الشركة"),
                      ),
                      Container(
                        child: FormFieldL(
                          titleInput: '',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        child: Text("اسم الشركة"),
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
          ),
          // Second row inputs

          // Second row inputs
          Container(
            margin: EdgeInsets.symmetric(horizontal: 2, vertical: 4),
            padding: const EdgeInsets.symmetric(
              horizontal: 4,
            ),

            // buttins code
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        child: Text("رقم الهوية"),
                      ),
                      Container(
                        child: FormFieldL(
                          titleInput: '',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        child: Text("رقم الهاتف"),
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
          ),

          // Second row inputs

          // Second row inputs
          Container(
            margin: EdgeInsets.symmetric(horizontal: 2, vertical: 4),
            padding: const EdgeInsets.symmetric(
              horizontal: 4,
            ),

            // buttins code
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        child: Text("اختصاص الشركة"),
                      ),
                      Container(
                        child: FormFieldL(
                          titleInput: '',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        child: Text("الموقع الالكتروني"),
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
          ),

          // Second row inputs
          Container(
            margin: EdgeInsets.symmetric(horizontal: 2, vertical: 4),
            padding: const EdgeInsets.symmetric(
              horizontal: 4,
            ),

            // buttins code
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        child: Text("رقم الهوية"),
                      ),
                      Container(
                        child: FormFieldL(
                          titleInput: '',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        child: Text(
                          "كلمة المرور",
                        ),
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
          ),

          // employ name container

          // Second row inputs
          Container(
            margin: EdgeInsets.symmetric(horizontal: 28),
            alignment: Alignment.topRight,
            child: Text("الملاحظات"),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
            child: FormFieldL(
              titleInput: '',
            ),
          ),

          // employ name container

          Container(
            margin: EdgeInsets.symmetric(horizontal: 28),
            alignment: Alignment.topRight,
            child: Text("اسم الدولة"),
          ),
          // dropdown  employe name
          // start
          Container(
              margin: EdgeInsets.symmetric(horizontal: 6, vertical: 10),
              child: DropdownFC(titledropdow: "")),
          // dropdown end
          // sized box
          SizedBox(
            height: 20,
          ),
          // material button

          Container(
            margin: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            padding: EdgeInsets.symmetric(vertical: 12),
            alignment: Alignment.center,
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              color: Colors.green,
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      padding: EdgeInsets.symmetric(vertical: 4),
                      child: Text(
                        "تأكيد العملية ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Icon(
                      Icons.description,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
