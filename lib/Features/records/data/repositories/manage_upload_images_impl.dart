import 'package:dartz/dartz.dart';
import 'package:test/Features/records/data/repositories/manage_upload_images.dart';


class ManageUploadImagesImpl implements ManageUploadImages {
 
  
  @override
  Future<Either<String, String>> uploadImage(String image) async {
   try {
      return Right(image);
    } catch (e) {
      return Left('Error to add new Record');
    }
  }

  
}
