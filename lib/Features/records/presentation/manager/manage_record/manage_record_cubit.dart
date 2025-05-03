import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:test/Features/records/data/models/record_model.dart';
import 'package:test/Features/records/data/repositories/manage_record_repositry.dart';

part 'manage_record_state.dart';

class ManageRecordCubit extends Cubit<ManageRecordState> {
  final ManageRecordRepositry repositry;
  ManageRecordCubit(this.repositry) : super(ManageRecordInitial());

  List<RecordModel> list = [];
  Future<void> loadingRecords() async {
    emit(LoadingRecordList());
    // final recordsResult = await repositry.getAllRecords();
    // recordsResult
    //     .fold((error) => emit(FauilreRecordList(message: 'No Found Records')),
    //         (records) {
    //   list = records;

    // });
    //   emit(SuccessRecordList(list: list));
  }

  Future<void> addNewRecords(RecordModel model) async {
    final recordsResult = await repositry.addNewRecord(model);
    recordsResult.fold(
        (error) =>
            emit( FauilreProcessOnRecord(message: 'Fauilre to add New Records')),
        (record) {
      list.add(record);
      emit(SuccessProcessOnRecord(list: list));
    });
  }

  Future<void> deleteRecords(RecordModel model) async {
    final recordsResult = await repositry.deleteRecord(model);
    recordsResult.fold(
        (error) =>
            emit(FauilreProcessOnRecord(message: 'Fauilre to delete  Record')),
        (record) {
      list.remove(record);
      emit(SuccessProcessOnRecord(list: list));
    });
  }
  Future<void> updateRecords(RecordModel model) async {
    final recordsResult = await repositry.updateRecord(model);
    recordsResult.fold(
        (error) =>
            emit(FauilreProcessOnRecord(message: 'Fauilre to Update  Record')),
        (record) {

      emit(SuccessProcessOnRecord(list: list));
    });
  }
}
