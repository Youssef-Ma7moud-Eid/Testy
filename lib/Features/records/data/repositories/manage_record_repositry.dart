import 'package:dartz/dartz.dart';
import 'package:test/Features/records/data/models/record_model.dart';

abstract class ManageRecordRepositry {

    // Future<Either<String, RecordModel>> getAllRecords();
    Future<Either<String, RecordModel>> addNewRecord(RecordModel record);
    Future<Either<String, RecordModel>> updateRecord(RecordModel record);
    Future<Either<String, RecordModel>> deleteRecord(RecordModel record);
}