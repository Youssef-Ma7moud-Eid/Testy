import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:test/Features/records/data/repositories/manage_upload_images.dart';

part 'manage_upload_image_state.dart';

class ManageUploadImageCubit extends Cubit<ManageUploadImageState> {
  ManageUploadImageCubit(this.repositry) : super(ManageUploadImageInitial());
  final ManageUploadImages repositry;
  Future<void> addimage(dynamic image) async {
    if (image == null) {
      emit(FauilreProcessImage(error: 'error'));
    } else {
      final recordsResult = await repositry.addImage(image);
      emit(LoadingImage());
      recordsResult.fold((error) => emit(FauilreProcessImage(error: error)),
          (record) {
        emit(SuccessProcessImage(image: record));
      });
    }
  }

  Future<void> deleteimage() async {
    final recordsResult = await repositry.deleteImage();
    emit(LoadingImage());
    recordsResult.fold((error) => emit(FauilreProcessImage(error: error)),
        (record) {
      emit(SuccessDeleteImage());
    });
  }
}
