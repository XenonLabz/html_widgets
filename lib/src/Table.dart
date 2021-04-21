import 'package:flutter/material.dart';

class HTMLTable extends StatelessWidget {
  final List columns;
  final List rows;

  HTMLTable({
    @required this.columns,
    @required this.rows,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: DataTable(
            columns: [
              ...(columns).map((column) {
                return (DataColumn(
                  label: Text(
                    column['label'],
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                ));
              }).toList()
            ],
            dataRowColor: MaterialStateProperty.all<Color>(Color(0xFFfffff)),
            rows: [
              ...(rows).map((row) {
                return (DataRow(cells: [
                  ...(columns).map((col) {
                    return DataCell(Text(
                      row[col["id"]],
                    ));
                  }).toList()
                ]));
              }).toList()
            ],
          ),
        ),
      ),
    );
  }
}
