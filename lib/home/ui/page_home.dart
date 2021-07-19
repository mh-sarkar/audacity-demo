import 'package:audacity_demo/home/bloc/new_arrival_bloc.dart';
import 'package:audacity_demo/home/bloc/new_shop_bloc.dart';
import 'package:audacity_demo/home/bloc/product_bloc.dart';
import 'package:audacity_demo/home/bloc/trending_product_bloc.dart';
import 'package:audacity_demo/home/bloc/trending_seller_bloc.dart';
import 'package:audacity_demo/home/widget/horizontal_list_view.dart';
import 'package:audacity_demo/home/widget/product_card.dart';
import 'package:audacity_demo/home/widget/trending_product_new_shop_card.dart';
import 'package:audacity_demo/home/widget/trending_seller_new_shop_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            HorizontalView(
              sectionName: "Trending Seller",
              child: BlocBuilder<TrendingSellerBloc, TrendingSellerState>(
                builder: (context, state) {
                  if (state is LoadingTrendingSellerState) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (state is LoadedTrendingSellerState) {
                    return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: state.trendingSellers.length,
                        itemBuilder: (context, index) {
                          return TrendingSellerNewShopCard(
                              sellerName:
                                  state.trendingSellers[index].sellerName!,
                              logoImagePath: state
                                  .trendingSellers[index].sellerProfilePhoto!,
                              imagePath: state
                                  .trendingSellers[index].sellerItemPhoto!);
                        });
                  } else if (state is FailedToLoadTrendingSellerState) {
                    return Center(
                      child: Text("Error Occurred: ${state.error}"),
                    );
                  } else {
                    return SizedBox();
                  }
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            HorizontalView(
              sectionName: "Trending Products",
              child: BlocBuilder<TrendingProductBloc, TrendingProductState>(
                builder: (context, state) {
                  if (state is LoadingTrendingProductState) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (state is LoadedTrendingProductState) {
                    return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: state.trendingProducts.length,
                        itemBuilder: (context, index) {
                          return TrendingProductNewArrivalCard(
                            imagePath:
                                state.trendingProducts[index].productImage!,
                            productName:
                                state.trendingProducts[index].productName!,
                            shortDetails:
                                state.trendingProducts[index].shortDetails!,
                          );
                        });
                  } else if (state is FailedToLoadTrendingProductState) {
                    return Center(
                      child: Text("Error Occurred: ${state.error}"),
                    );
                  } else {
                    return SizedBox();
                  }
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            BlocBuilder<ProductBloc, ProductState>(
              builder: (context, state) {
                if (state is LoadingProductState) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is LoadedProductState) {
                  return ListView.builder(
                      physics: ClampingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        final product = state.products[index];
                        return ProductCard(
                          companyName: product.companyName!,
                          companyLogo: product.companyLogo!,
                          friendlyTimeDiff: product.friendlyTimeDiff!,
                          story: product.story!,
                          storyImage: product.storyImage!,
                          availableStock: product.availableStock!,
                          price: product.unitPrice!,
                          orderQty: product.orderQty!,
                        );
                      });
                } else if (state is FailedToLoadProductState) {
                  return Center(
                    child: Text("Error Occurred: ${state.error}"),
                  );
                } else {
                  return SizedBox();
                }
              },
            ),
            SizedBox(
              height: 10,
            ),
            HorizontalView(
              sectionName: "New Arrivals",
              child: BlocBuilder<NewArrivalBloc, NewArrivalState>(
                builder: (context, state) {
                  if (state is LoadingNewArrivalState) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (state is LoadedNewArrivalState) {
                    return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: state.newArrivals.length,
                        itemBuilder: (context, index) {
                          return TrendingProductNewArrivalCard(
                            imagePath: state.newArrivals[index].productImage!,
                            productName: state.newArrivals[index].productName!,
                            shortDetails:
                                state.newArrivals[index].shortDetails!,
                          );
                        });
                  } else if (state is FailedToLoadNewArrivalState) {
                    return Center(
                      child: Text("Error Occurred: ${state.error}"),
                    );
                  } else {
                    return SizedBox();
                  }
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            BlocBuilder<ProductBloc, ProductState>(
              builder: (context, state) {
                if (state is LoadingProductState) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is LoadedProductState) {
                  return ListView.builder(
                      physics: ClampingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        final product = state.products[index + 3];
                        return ProductCard(
                          companyName: product.companyName!,
                          companyLogo: product.companyLogo!,
                          friendlyTimeDiff: product.friendlyTimeDiff!,
                          story: product.story!,
                          storyImage: product.storyImage!,
                          availableStock: product.availableStock!,
                          price: product.unitPrice!,
                          orderQty: product.orderQty!,
                        );
                      });
                } else if (state is FailedToLoadProductState) {
                  return Center(
                    child: Text("Error Occurred: ${state.error}"),
                  );
                } else {
                  return SizedBox();
                }
              },
            ),
            SizedBox(
              height: 10,
            ),
            HorizontalView(
              sectionName: "New Shops",
              child: BlocBuilder<NewShopBloc, NewShopState>(
                builder: (context, state) {
                  if (state is LoadingNewShopState) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (state is LoadedNewShopState) {
                    return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: state.newShops.length,
                        itemBuilder: (context, index) {
                          return TrendingSellerNewShopCard(
                              sellerName: state.newShops[index].sellerName!,
                              logoImagePath:
                                  state.newShops[index].sellerProfilePhoto!,
                              imagePath:
                                  state.newShops[index].sellerItemPhoto!);
                        });
                  } else if (state is FailedToLoadNewShopState) {
                    return Center(
                      child: Text("Error Occurred: ${state.error}"),
                    );
                  } else {
                    return SizedBox();
                  }
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            BlocBuilder<ProductBloc, ProductState>(
              builder: (context, state) {
                if (state is LoadingProductState) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is LoadedProductState) {
                  return ListView.builder(
                      physics: ClampingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: state.products.length - 6,
                      itemBuilder: (context, index) {
                        final product = state.products[index + 6];
                        return ProductCard(
                          companyName: product.companyName!,
                          companyLogo: product.companyLogo!,
                          friendlyTimeDiff: product.friendlyTimeDiff!,
                          story: product.story!,
                          storyImage: product.storyImage!,
                          availableStock: product.availableStock!,
                          price: product.unitPrice!,
                          orderQty: product.orderQty!,
                        );
                      });
                } else if (state is FailedToLoadProductState) {
                  return Center(
                    child: Text("Error Occurred: ${state.error}"),
                  );
                } else {
                  return SizedBox();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
