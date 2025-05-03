import 'package:dartz/dartz.dart';

abstract class ManageUploadImages {
  Future<Either<String, dynamic>> addImage(dynamic image);
    Future<Either<String, String>> deleteImage();
}