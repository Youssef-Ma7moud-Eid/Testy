import 'package:dartz/dartz.dart';

abstract class ManageUploadImages {
  Future<Either<String, String>> uploadImage(String image);
}