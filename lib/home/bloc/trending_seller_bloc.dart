import 'package:audacity_demo/home/config/global.dart';
import 'package:audacity_demo/home/model/trending_seller.dart';
import 'package:audacity_demo/home/util/rest.dart';
import 'package:audacity_demo/home/util/storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class TrendingSellerEvent {}

class LoadTrendingSellerEvent extends TrendingSellerEvent {}

abstract class TrendingSellerState {}

class LoadingTrendingSellerState extends TrendingSellerState {}

class LoadedTrendingSellerState extends TrendingSellerState {
  List<TrendingSeller> trendingSellers;
  LoadedTrendingSellerState({required this.trendingSellers});
}

class FailedToLoadTrendingSellerState extends TrendingSellerState {
  Error? error;
  FailedToLoadTrendingSellerState({this.error});
}

class TrendingSellerBloc
    extends Bloc<TrendingSellerEvent, TrendingSellerState> {
  TrendingSellerBloc() : super(LoadingTrendingSellerState());

  @override
  Stream<TrendingSellerState> mapEventToState(
      TrendingSellerEvent event) async* {
    //
    if (event is LoadTrendingSellerEvent) {
      if (Storage.getKeyValue(Storage.keyTrendingSeller) != null) {
        final trendingSellers = List<TrendingSeller>.from(
            Storage.getKeyValue(Storage.keyTrendingSeller));
        yield LoadedTrendingSellerState(trendingSellers: trendingSellers);
      } else
        yield LoadingTrendingSellerState();

      try {
        final trendingSellers = await Rest.getTrendingSellerData();
        globalLogger.d(trendingSellers.length);
        yield LoadedTrendingSellerState(trendingSellers: trendingSellers);
      } catch (e) {
        yield FailedToLoadTrendingSellerState(error: e as Error);
      }
    }
  }
}
