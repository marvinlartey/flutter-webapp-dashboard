import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

import '../../../constants/style.dart';
import '../../../widgets/custom_text.dart';

class ClientsTable extends StatelessWidget {
  const ClientsTable();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 6),
              color: lightGrey.withOpacity(.1),
              blurRadius: 12)
        ],
        border: Border.all(color: lightGrey, width: .5),
      ),
      padding: const EdgeInsets.all(16),
      child: DataTable2(
          columnSpacing: 12,
          horizontalMargin: 12,
          minWidth: 600,
          columns: const [
            DataColumn2(
              label: Text('Name'),
              size: ColumnSize.L,
            ),
            DataColumn(
              label: Text('Purpose'),
            ),
            DataColumn(
              label: Text('Amount'),
            ),
            DataColumn(
              label: Text('Stage'),
            ),
          ],
          rows: List<DataRow>.generate(
              7,
              (index) => DataRow(cells: [
                    const DataCell(CustomText(
                      text: "User Name",
                    )),
                    const DataCell(CustomText(
                      text: "Lorem Ipsum Loret ",
                    )),
                    DataCell(Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(width: 5),
                        CustomText(text: "4.$index"),
                      ],
                    )),
                    DataCell(Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 6),
                      child: Row(
                        children: const [
                          Icon(Icons.star, color: Colors.deepOrange, size: 18),
                          CustomText(
                            text: "pending",
                          ),
                        ],
                      ),
                    )),
                  ]))),
    );
  }
}
