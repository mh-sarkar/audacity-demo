import 'package:audacity_demo/home/model/product.dart';
import 'package:audacity_demo/home/util/rest.dart';
import 'package:audacity_demo/home/util/storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class ProductEvent {}

class LoadProductEvent extends ProductEvent {}

abstract class ProductState {}

class LoadingProductState extends ProductState {}

class LoadedProductState extends ProductState {
  List<Product> products;
  LoadedProductState({required this.products});
}

class FailedToLoadProductState extends ProductState {
  Error? error;
  FailedToLoadProductState({this.error});
}

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(LoadingProductState());

  @override
  Stream<ProductState> mapEventToState(ProductEvent event) async* {
    //
    if (event is LoadProductEvent) {
      if (Storage.getKeyValue(Storage.keyProduct) != null) {
        final products =
            List<Product>.from(Storage.getKeyValue(Storage.keyProduct));
        yield LoadedProductState(products: products);
      } else
        yield LoadingProductState();

      try {
        final products = await Rest.getProductData();
        yield LoadedProductState(products: products);
      } catch (e) {
        yield FailedToLoadProductState(error: e as Error);
      }
    }
  }
}
