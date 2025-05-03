part of 'manage_upload_image_cubit.dart';

@immutable
sealed class ManageUploadImageState {}

final class ManageUploadImageInitial extends ManageUploadImageState {}

final class SuccessImage extends ManageUploadImageState {
  final String image;

  SuccessImage({required this.image});
}

final class FauilreRecordList extends ManageUploadImageInitial {
}
