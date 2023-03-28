import 'package:flutter/material.dart';
import 'package:flutter_application_1/class_drawer_test.dart';
import 'package:flutter_application_1/class_dropdown.dart';
import 'package:flutter_application_1/class_input.dart';
import 'package:flutter_application_1/class_text_form.dart';
import 'package:flutter_application_1/class_topbar.dart';

class AddCompany extends StatefulWidget {
  const AddCompany({super.key});
  @override
  State<AddCompany> createState() => _AddCompanyState();
}

class _AddCompanyState extends State<AddCompany> {
  // is variable for dropdown

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
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 4),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 2, vertical: 4),
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
                    child: Container(
                      child: FormFieldL(
                        titleInput: 'الاسم التجاري',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      child: FormFieldL(
                        titleInput: 'رقم السجل التجاري',
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
                    child: Container(
                      child: FormFieldL(
                        titleInput: 'عنوان الشركة',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      child: FormFieldL(
                        titleInput: 'اسم الشركة',
                      ),
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
                    child: Container(
                      child: FormFieldL(
                        titleInput: 'رقم الهوية ',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      child: FormFieldL(
                        titleInput: 'رقم الهاتف',
                      ),
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
                    child: Container(
                      child: FormFieldL(
                        titleInput: 'اختصاص الشركة',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      child: FormFieldL(
                        titleInput: 'الموقع الالكتروني',
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
                    child: Container(
                      child: FormFieldL(
                        titleInput: 'البريد الالكتروني',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      child: FormFieldL(
                        titleInput: 'الملاحظات',
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // employ name container

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
                    child: Container(
                      child: Container(
                        child: FormFieldL(
                          titleInput: 'كلمة المرور',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      child: // dropdown  employe name
                          // start
                          Container(
                        child: DropdownFC(
                          titledropdow: "اسم الدولة",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Second row inputs
            // dropdown end
            // sized box
            SizedBox(
              height: 0,
            ),
            // material button

            Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              padding: EdgeInsets.symmetric(vertical: 12),
              alignment: Alignment.center,
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                color: Colors.green[700],
                onPressed: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width / 3,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 8),
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
      ),
    );
  }
}
