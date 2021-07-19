import 'package:audacity_demo/home/bloc/new_arrival_bloc.dart';
import 'package:audacity_demo/home/bloc/new_shop_bloc.dart';
import 'package:audacity_demo/home/bloc/product_bloc.dart';
import 'package:audacity_demo/home/bloc/trending_product_bloc.dart';
import 'package:audacity_demo/home/bloc/trending_seller_bloc.dart';
import 'package:audacity_demo/home/ui/page_home.dart';
import 'package:audacity_demo/home/util/storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Storage.setupHive();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TrendingSellerBloc>(
          create: (BuildContext context) => TrendingSellerBloc()
            ..add(
              LoadTrendingSellerEvent(),
            ),
        ),
        BlocProvider<TrendingProductBloc>(
          create: (BuildContext context) => TrendingProductBloc()
            ..add(
              LoadTrendingProductEvent(),
            ),
        ),
        BlocProvider<NewArrivalBloc>(
          create: (BuildContext context) => NewArrivalBloc()
            ..add(
              LoadNewArrivalEvent(),
            ),
        ),
        BlocProvider<NewShopBloc>(
          create: (BuildContext context) => NewShopBloc()
            ..add(
              LoadNewShopEvent(),
            ),
        ),
        BlocProvider<ProductBloc>(
          create: (BuildContext context) => ProductBloc()
            ..add(
              LoadProductEvent(),
            ),
        ),
      ],
      child: MaterialApp(
        title: 'Audacity Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      ),
    );
  }
}
