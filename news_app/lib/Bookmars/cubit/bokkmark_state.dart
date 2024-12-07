part of 'bokkmark_cubit.dart';

@immutable
sealed class BokkmarkState {}

final class BokkmarkInitial extends BokkmarkState {}
final class DatabookLoding extends BokkmarkState {}
final class DatabookLodid extends BokkmarkState {}
final class DatabookFiald extends BokkmarkState {}
