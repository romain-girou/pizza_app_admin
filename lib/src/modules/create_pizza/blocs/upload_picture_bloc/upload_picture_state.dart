part of 'upload_picture_bloc.dart';

sealed class UploadPictureState extends Equatable {
  const UploadPictureState();

  @override
  List<Object?> get props => [];
}

final class UploadPictureLoading extends UploadPictureState {}
final class UploadPictureFailure extends UploadPictureState {}
final class UploadPictureSuccess extends UploadPictureState {
  final String url;

  const UploadPictureSuccess(this.url);

  @override
  List<Object?> get props => [];
}