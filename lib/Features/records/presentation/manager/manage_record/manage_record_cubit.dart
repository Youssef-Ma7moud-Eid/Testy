import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'manage_record_state.dart';

class ManageRecordCubit extends Cubit<ManageRecordState> {
  ManageRecordCubit() : super(ManageRecordInitial());
}
