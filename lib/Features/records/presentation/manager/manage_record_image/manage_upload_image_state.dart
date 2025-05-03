part of 'manage_upload_image_cubit.dart';

@immutable
sealed class ManageUploadImageState {}

final class ManageUploadImageInitial extends ManageUploadImageState {}

final class SuccessProcessImage extends ManageUploadImageState {
  final dynamic image;

  SuccessProcessImage({required this.image});
}

final class FauilreProcessImage extends ManageUploadImageInitial {
  final String error;

  FauilreProcessImage({required this.error});
}

final class LoadingImage extends ManageUploadImageInitial {}

final class SuccessDeleteImage extends ManageUploadImageState {}
