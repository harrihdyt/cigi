import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'coolspot_state.dart';

class CoolspotCubit extends Cubit<CoolspotState> {
  CoolspotCubit() : super(CoolspotInitial());
}
