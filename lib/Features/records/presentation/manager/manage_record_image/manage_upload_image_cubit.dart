import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:test/Features/records/data/repositories/manage_upload_images.dart';

part 'manage_upload_image_state.dart';

class ManageUploadImageCubit extends Cubit<ManageUploadImageState> {
  ManageUploadImageCubit(this.repositry) : super(ManageUploadImageInitial());
  final ManageUploadImages repositry;
  Future<void> loadimage(String image) async {
    final recordsResult = await repositry.uploadImage(image);
    recordsResult.fold((error) => emit(FauilreRecordList()), (record) {
      emit(SuccessImage(image: image));
    });
  }
}
