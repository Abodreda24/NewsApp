part of 'news_cubit.dart';

@immutable
sealed class NewsState {}

final class NewsInitial extends NewsState {}
final class MainChangeIndex extends NewsState {}
final class CIndexh extends NewsState {}
final class fetchdataa extends NewsState {}
final class fetchdataabycatgory extends NewsState {}
final class DataExploreLoding extends NewsState {}
final class DataExploreLodid extends NewsState {}
final class DataExploreFiald extends NewsState {}
final class DataJustLoding extends NewsState {}
final class DataJustLodid extends NewsState {}
final class DataJustFiald extends NewsState {}
final class DatabookLoding extends NewsState {}
final class DatabookLodid extends NewsState {}
final class DatabookFiald extends NewsState {}
