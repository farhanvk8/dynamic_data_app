import 'package:dynamic_data_app/presentation/controller/data_controller.dart';
import 'package:dynamic_data_app/presentation/view/initial_page.dart';
import 'package:dynamic_data_app/presentation/view/widgets/data_table_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class DataGridPage extends StatelessWidget {
  const DataGridPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Consumer(builder: (context, ref, _) {
          final dataState = ref.watch(dataStateProvider);
          var columns = ref.watch(columnProvider);

          return dataState.when(
            initial: () => InitialPage(),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            success: (data) => Scaffold(
              appBar: AppBar(
                leading: IconButton(
                    onPressed: () =>
                        ref.read(dataStateProvider.notifier).backToInitial(),
                    icon: const Icon(Icons.arrow_back_ios)),
              ),
              body: LayoutBuilder(builder: (context, constraints) {
                var titleKey = ref.watch(titleKeyProvider);
                var subtitleKey = ref.watch(subTitleKeyProvider);
                if (constraints.maxWidth < 600) {
                  return OrientationBuilder(builder: (context, orientation) {
                    if (orientation == Orientation.portrait) {
                      return Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              DropdownButton<String>(
                                value: titleKey,
                                items: columns.map((item) {
                                  return DropdownMenuItem<String>(
                                    value: item.key,
                                    child: Text(item.label),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  ref.read(titleKeyProvider.notifier).state =
                                      value!;
                                },
                              ),
                              DropdownButton<String>(
                                value: subtitleKey,
                                items: columns.reversed.map((item) {
                                  return DropdownMenuItem<String>(
                                    value: item.key,
                                    child: Text(item.label),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  ref.read(subTitleKeyProvider.notifier).state =
                                      value!;
                                },
                              ),
                            ],
                          ),
                          Expanded(
                            child: ListView.builder(
                              itemCount: data.length,
                              itemBuilder: (BuildContext context, int index) {
                                var titleColumn = columns
                                    .firstWhere((col) => col.key == titleKey);
                                var subtitleColumn = columns.firstWhere(
                                    (col) => col.key == subtitleKey);
                                return Card(
                                  child: ListTile(
                                    title: Text(titleColumn.type == 'date'
                                        ? DateFormat.yMMMd().format(
                                            DateTime.parse(
                                                data[index][titleColumn.key]))
                                        : '${data[index][titleColumn.key]}'),
                                    subtitle: Text(subtitleColumn.type == 'date'
                                        ? DateFormat.yMMMd().format(
                                            DateTime.parse(data[index]
                                                [subtitleColumn.key]))
                                        : '${data[index][subtitleColumn.key]}'),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      );
                    } else {
                      return DataTableWidget(
                        columns: columns,
                        data: data,
                      );
                    }
                  });
                } else {
                  return DataTableWidget(
                    columns: columns,
                    data: data,
                  );
                }
              }),
            ),
            error: (error) => SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Please Check Your URL'),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () =>
                          ref.read(dataStateProvider.notifier).backToInitial(),
                      child: const Text('back'))
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
