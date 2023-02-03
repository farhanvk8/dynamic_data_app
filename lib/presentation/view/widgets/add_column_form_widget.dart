import 'package:dynamic_data_app/domain/model/column_config_model.dart';
import 'package:dynamic_data_app/presentation/controller/data_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddColumnForm extends StatelessWidget {
  const AddColumnForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    String? label;
    String? key;
    String? selectedType;
    return Consumer(builder: (context, ref, _) {
      return Container(
        constraints: const BoxConstraints(maxWidth: 80),
        child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Label',
                  ),
                  onChanged: (value) => label = value,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter a label';
                    }
                    return null;
                  },
                  onSaved: (value) => label = value,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Key',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter a key';
                    }
                    return null;
                  },
                  onChanged: (value) => key = value,
                ),
                DropdownButtonFormField(
                  decoration: const InputDecoration(
                    labelText: 'Data Type',
                  ),
                  value: selectedType,
                  items: const [
                    DropdownMenuItem(
                      value: 'string',
                      child: Text('String'),
                    ),
                    DropdownMenuItem(
                      value: 'number',
                      child: Text('Number'),
                    ),
                    DropdownMenuItem(
                      value: 'date',
                      child: Text('Date'),
                    ),
                  ],
                  onChanged: (value) {
                    selectedType = value;
                  },
                  validator: (value) {
                    if (value == null) {
                      return 'Please select a data type';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate() &&
                        (label != null && key != null)) {
                      ref.read(columnProvider.notifier).state = [
                        ...ref.read(columnProvider),
                        ColumnConfig(
                            label: label!.trim(),
                            key: key!.trim(),
                            type: selectedType!.trim())
                      ];
                      Navigator.pop(context);
                    }
                  },
                  child: const Text('Add Column'),
                )
              ]),
            )),
      );
    });
  }
}
