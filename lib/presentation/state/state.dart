import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class DataState with _$DataState {
  const factory DataState.initial() = DataStateInitial;
  const factory DataState.loading() = DataStateLoading;
  const factory DataState.success(List<dynamic> data) = DataStateSuccess;
  const factory DataState.error(String error) = DataStateError;
}
