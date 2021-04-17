import 'package:flutter/material.dart';
import 'package:html_widgets/html_widgets.dart';


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
                  ...(columns).map((column){
                        return (
                         DataColumn(
                          label: H3(text :column['label']),
                        )
                        );
                   }).toList()
                ],
                dataRowColor: MaterialStateProperty.all<Color>(Color(0xFFfffff)),
                rows: [
                  ...(rows as List).map((row){
                     return(
                       DataRow(
                          cells:[
                            ...(columns).map((col){
                                return DataCell(P(
                                  text: row[col["id"]],
                                  margin: 10,)
                                  
                                  );
                            }).toList()
                          ]
                      )
                    );
                  }).toList()
                ],
            )
      )),
    );  
  }
}