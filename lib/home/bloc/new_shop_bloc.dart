import 'package:audacity_demo/home/model/new_shop.dart';
import 'package:audacity_demo/home/util/rest.dart';
import 'package:audacity_demo/home/util/storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class NewShopEvent {}

class LoadNewShopEvent extends NewShopEvent {}

abstract class NewShopState {}

class LoadingNewShopState extends NewShopState {}

class LoadedNewShopState extends NewShopState {
  List<NewShop> newShops;
  LoadedNewShopState({required this.newShops});
}

class FailedToLoadNewShopState extends NewShopState {
  Error? error;
  FailedToLoadNewShopState({this.error});
}

class NewShopBloc extends Bloc<NewShopEvent, NewShopState> {
  NewShopBloc() : super(LoadingNewShopState());

  @override
  Stream<NewShopState> mapEventToState(NewShopEvent event) async* {
    //
    if (event is LoadNewShopEvent) {
      if (Storage.getKeyValue(Storage.keyNewShop) != null) {
        final newShops =
            List<NewShop>.from(Storage.getKeyValue(Storage.keyNewShop));
        yield LoadedNewShopState(newShops: newShops);
      } else
        yield LoadingNewShopState();

      try {
        final newShops = await Rest.getNewShopData();
        yield LoadedNewShopState(newShops: newShops);
      } catch (e) {
        yield FailedToLoadNewShopState(error: e as Error);
      }
    }
  }
}
