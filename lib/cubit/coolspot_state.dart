part of 'coolspot_cubit.dart';

abstract class CoolspotState extends Equatable {
  const CoolspotState();

  @override
  List<Object> get props => [];
}

class CoolspotInitial extends CoolspotState {}

class CoolspotLoading extends CoolspotState {}
