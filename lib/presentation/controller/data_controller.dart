import 'package:dynamic_data_app/data/repository.dart';
import 'package:dynamic_data_app/domain/model/column_config_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod/riverpod.dart';
import '../state/state.dart';

final columnProvider = StateProvider<List<ColumnConfig>>((_) => [
      ColumnConfig(label: 'Name', key: 'name', type: 'string'),
      ColumnConfig(label: 'Date', key: 'date', type: 'date'),
      ColumnConfig(label: 'Amount', key: 'amount', type: 'number'),
      ColumnConfig(label: 'Category', key: 'category', type: 'string'),
      ColumnConfig(label: 'Created At', key: 'created_at', type: 'date'),
    ]);

final titleKeyProvider =
    StateProvider<String>((ref) => ref.read(columnProvider)[0].key);
final subTitleKeyProvider =
    StateProvider<String>((ref) => ref.read(columnProvider)[1].key);
final dataStateProvider =
    StateNotifierProvider.autoDispose<DataController, DataState>((ref) {
  return DataController(
    ref,
  );
});

class DataController extends StateNotifier<DataState> {
  DataController(this.ref) : super(const DataState.initial());

  final Ref ref;
  Future<void> getAllData(String url) async {
    try {
      state = const DataState.loading();
      final response = await Reposirtory().getData(url);
      state = DataState.success(response['data']);
    } catch (err) {
      state = DataState.error(err.toString());
    }
  }

  backToInitial() async {
    state = const DataState.initial();
  }
}
