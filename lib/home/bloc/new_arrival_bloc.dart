import 'package:audacity_demo/home/model/new_arrival.dart';
import 'package:audacity_demo/home/util/rest.dart';
import 'package:audacity_demo/home/util/storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class NewArrivalEvent {}

class LoadNewArrivalEvent extends NewArrivalEvent {}

abstract class NewArrivalState {}

class LoadingNewArrivalState extends NewArrivalState {}

class LoadedNewArrivalState extends NewArrivalState {
  List<NewArrival> newArrivals;
  LoadedNewArrivalState({required this.newArrivals});
}

class FailedToLoadNewArrivalState extends NewArrivalState {
  Error? error;
  FailedToLoadNewArrivalState({this.error});
}

class NewArrivalBloc extends Bloc<NewArrivalEvent, NewArrivalState> {
  NewArrivalBloc() : super(LoadingNewArrivalState());

  @override
  Stream<NewArrivalState> mapEventToState(NewArrivalEvent event) async* {
    //
    if (event is LoadNewArrivalEvent) {
      if (Storage.getKeyValue(Storage.keyNewArrival) != null) {
        final newArrivals =
            List<NewArrival>.from(Storage.getKeyValue(Storage.keyNewArrival));
        yield LoadedNewArrivalState(newArrivals: newArrivals);
      } else
        yield LoadingNewArrivalState();

      try {
        final newArrivals = await Rest.getNewArrivalData();
        yield LoadedNewArrivalState(newArrivals: newArrivals);
      } catch (e) {
        yield FailedToLoadNewArrivalState(error: e as Error);
      }
    }
  }
}
