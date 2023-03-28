import 'package:flutter/material.dart';

class xxx extends StatefulWidget {
  xxx({super.key});

  @override
  State<xxx> createState() => _xxxState();
}

class _xxxState extends State<xxx> {
  // title table style
  final titlestyle =
      TextStyle(fontWeight: FontWeight.bold, color: Colors.black54);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.all(4),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Colors.black12,
                  width: 3.5,
                )),
            headingRowColor: MaterialStateColor.resolveWith((states) {
              return Color.fromARGB(255, 245, 250, 250);
            }),
            dataRowColor: MaterialStateColor.resolveWith((states) {
              return Color.fromARGB(255, 251, 254, 254);
            }),
            columns: [
              DataColumn(
                label: Text(
                  '#',
                  style: titlestyle,
                ),
              ),
              DataColumn(
                label: Text(
                  'رقم الوصل',
                  style: titlestyle,
                ),
              ),
              DataColumn(
                label: Text(
                  'اسم الزبون',
                  style: titlestyle,
                ),
              ),
              DataColumn(
                label: Text(
                  'رقم الهاتف',
                  style: titlestyle,
                ),
              ),
              DataColumn(
                label: Text(
                  'التاريخ',
                  style: titlestyle,
                ),
              ),
              DataColumn(
                label: Text(
                  'الدولة',
                  style: titlestyle,
                ),
              ),
              DataColumn(
                label: Text(
                  'المدينة',
                  style: titlestyle,
                ),
              ),
              DataColumn(
                label: Text(
                  'نوع الصفحة',
                  style: titlestyle,
                ),
              ),
              DataColumn(
                label: Text(
                  'اسم الصفحة',
                  style: titlestyle,
                ),
              ),
              DataColumn(
                label: Text(
                  'اسم الشركة',
                  style: titlestyle,
                ),
              ),
              DataColumn(
                label: Text(
                  'أخر تحديث',
                  style: titlestyle,
                ),
              ),
              DataColumn(
                label: Text(
                  'حالة الطلب',
                  style: titlestyle,
                ),
              ),
              DataColumn(
                label: Text(
                  'قيمة المبلغ',
                  style: titlestyle,
                ),
              ),
            ],
            rows: [
              DataRow(
                cells: [
                  DataCell(Text('1')),
                  DataCell(Text('Arshik')),
                  DataCell(Text('5644645')),
                  // icon yellow color start
                  DataCell(Row(children: [
                    Text(
                      "Khaled",
                    ),
                    Icon(
                      Icons.lens,
                      color: Colors.amber,
                      size: 16,
                    )
                  ])),
                  // icon yellow color end
                  DataCell(Text('265\$')),
                  DataCell(Text('1')),
                  DataCell(Text('Arshik')),
                  DataCell(Text('265\$')),
                  DataCell(Text('1')),
                  DataCell(Text('Arshik')),
                  DataCell(Text('5644645')),
                  DataCell(Text('3')),
                  DataCell(Text('265\$')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('1')),
                  DataCell(Text('Arshik')),
                  DataCell(Text('5644645')),
                  // icon yellow color start
                  DataCell(Row(children: [
                    Text(
                      "Khaled",
                    ),
                    Icon(
                      Icons.lens,
                      color: Colors.amber,
                      size: 16,
                    )
                  ])),
                  // icon yellow color end
                  DataCell(Text('265\$')),
                  DataCell(Text('1')),
                  DataCell(Text('Arshik')),
                  DataCell(Text('265\$')),
                  DataCell(Text('1')),
                  DataCell(Text('Arshik')),
                  DataCell(Text('5644645')),
                  DataCell(Text('3')),
                  DataCell(Text('265\$')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('1')),
                  DataCell(Text('Arshik')),
                  DataCell(Text('5644645')),
                  // icon yellow color start
                  DataCell(Row(children: [
                    Text(
                      "Khaled",
                    ),
                    Icon(
                      Icons.lens,
                      color: Colors.amber,
                      size: 16,
                    )
                  ])),
                  // icon yellow color end
                  DataCell(Text('265\$')),
                  DataCell(Text('1')),
                  DataCell(Text('Arshik')),
                  DataCell(Text('265\$')),
                  DataCell(Text('1')),
                  DataCell(Text('Arshik')),
                  DataCell(Text('5644645')),
                  DataCell(Text('3')),
                  DataCell(Text('265\$')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('1')),
                  DataCell(Text('Arshik')),
                  DataCell(Text('5644645')),
                  // icon yellow color start
                  DataCell(Row(children: [
                    Text(
                      "Khaled",
                    ),
                    Icon(
                      Icons.lens,
                      color: Colors.amber,
                      size: 16,
                    )
                  ])),
                  // icon yellow color end
                  DataCell(Text('265\$')),
                  DataCell(Text('1')),
                  DataCell(Text('Arshik')),
                  DataCell(Text('265\$')),
                  DataCell(Text('1')),
                  DataCell(Text('Arshik')),
                  DataCell(Text('5644645')),
                  DataCell(Text('3')),
                  DataCell(Text('265\$')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

extension on Text {
  Text get boldCardTitle {
    return Text(this.data!,
        style: const TextStyle(
            fontWeight: FontWeight.bold, color: Colors.black54));
  }
}
