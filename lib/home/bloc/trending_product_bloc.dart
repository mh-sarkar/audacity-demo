import 'package:audacity_demo/home/model/trending_product.dart';
import 'package:audacity_demo/home/util/rest.dart';
import 'package:audacity_demo/home/util/storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class TrendingProductEvent {}

class LoadTrendingProductEvent extends TrendingProductEvent {}

abstract class TrendingProductState {}

class LoadingTrendingProductState extends TrendingProductState {}

class LoadedTrendingProductState extends TrendingProductState {
  List<TrendingProduct> trendingProducts;
  LoadedTrendingProductState({required this.trendingProducts});
}

class FailedToLoadTrendingProductState extends TrendingProductState {
  Error? error;
  FailedToLoadTrendingProductState({this.error});
}

class TrendingProductBloc
    extends Bloc<TrendingProductEvent, TrendingProductState> {
  TrendingProductBloc() : super(LoadingTrendingProductState());

  @override
  Stream<TrendingProductState> mapEventToState(
      TrendingProductEvent event) async* {
    //
    if (event is LoadTrendingProductEvent) {
      if (Storage.getKeyValue(Storage.keyTrendingProduct) != null) {
        final trendingProducts = List<TrendingProduct>.from(
            Storage.getKeyValue(Storage.keyTrendingProduct));
        yield LoadedTrendingProductState(trendingProducts: trendingProducts);
      } else
        yield LoadingTrendingProductState();

      try {
        final trendingProducts = await Rest.getTrendingProductData();
        yield LoadedTrendingProductState(trendingProducts: trendingProducts);
      } catch (e) {
        yield FailedToLoadTrendingProductState(error: e as Error);
      }
    }
  }
}
