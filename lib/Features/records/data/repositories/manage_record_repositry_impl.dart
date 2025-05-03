import 'package:dartz/dartz.dart';

import 'package:test/Features/records/data/models/record_model.dart';

import 'manage_record_repositry.dart';

class ManageRecordRepositryImpl implements ManageRecordRepositry {
  @override
  Future<Either<String, RecordModel>> addNewRecord(RecordModel record) async {
    try {
      return Right(record);
    } catch (e) {
      return Left('Error to add new Record: $e');
    }
  }

  @override
  Future<Either<String, RecordModel>> deleteRecord(RecordModel record) async {
    try {
      return Right(record);
    } catch (e) {
      return Left('Error to add new Record: $e');
    }
  }

  // @override
  // Future<Either<String, List<RecordModel>>> getAllRecords() async {
  //   RecordModel record;
  //   try {
  //     print('soooooooooooooooooooooooooooooooooooooooooooooo');

  //     return Right(record);
  //   } catch (e) {
  //     return Left('Error to load Record: $e');
  //   }
  // }

  @override
  Future<Either<String, RecordModel>> updateRecord(RecordModel record) async {
    throw UnimplementedError();
  }
}
