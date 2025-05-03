part of 'manage_record_cubit.dart';

@immutable
sealed class ManageRecordState {}

final class ManageRecordInitial extends ManageRecordState {}

final class SuccessProcessOnRecord extends ManageRecordState {
  final List<RecordModel> list;

  SuccessProcessOnRecord({required this.list});

}

final class FauilreProcessOnRecord extends ManageRecordState {
  final String message;

  FauilreProcessOnRecord({required this.message});
}

final class LoadingRecordList extends ManageRecordState {}
