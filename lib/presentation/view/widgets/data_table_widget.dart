import 'package:dynamic_data_app/domain/model/column_config_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DataTableWidget extends StatelessWidget {
  const DataTableWidget({Key? key, required this.columns, required this.data})
      : super(key: key);
  final List<ColumnConfig> columns;
  final List<dynamic> data;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: columns
              .map((col) => DataColumn(
                    label: Text(col.label),
                  ))
              .toList(),
          rows: data
              .map((row) => DataRow(
                    cells: columns
                        .map((col) => DataCell(
                              Text(col.type == 'date'
                                  ? DateFormat.yMMMd()
                                      .format(DateTime.parse(row[col.key]))
                                  : row[col.key].toString()),
                            ))
                        .toList(),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
