import 'package:dynamic_data_app/presentation/view/widgets/add_column_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../controller/data_controller.dart';

class InitialPage extends StatelessWidget {
  InitialPage({
    Key? key,
  }) : super(key: key);

  final TextEditingController urlController = TextEditingController(
      text:
          'https://us-central1-fir-apps-services.cloudfunctions.net/transactions');

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      var columns = ref.watch(columnProvider);
      return Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: const InputDecoration(label: Text('URL')),
                controller: urlController,
              ),
              const SizedBox(
                height: 10,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: columns.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            columns[index].key,
                            style: const TextStyle(fontSize: 10),
                          )),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(columns[index].label),
                          Text(
                            columns[index].type,
                            style: const TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                      trailing: IconButton(
                          onPressed: () {
                            columns.remove(columns[index]);
                            ref.read(columnProvider.notifier).state = [
                              ...columns
                            ];
                          },
                          icon: const Icon(
                            Icons.delete,
                            color: Colors.red,
                          )),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (context) => const AddColumnForm());
                      },
                      icon: const Icon(Icons.add)),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  onPressed: () => ref
                      .read(dataStateProvider.notifier)
                      .getAllData(urlController.text.trim()),
                  child: const Text('Submit'))
            ],
          ),
        ),
      );
    });
  }
}
