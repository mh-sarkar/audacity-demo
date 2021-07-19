import 'package:flutter/material.dart';

class TrendingSellerNewShopCard extends StatelessWidget {
  const TrendingSellerNewShopCard({
    Key? key,
    required this.sellerName,
    required this.imagePath,
    required this.logoImagePath,
  }) : super(key: key);
  final String imagePath;
  final String logoImagePath;
  final String sellerName;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 5.0).copyWith(left: 5.0),
          height: 150,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Colors.grey,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 3.0,
                offset: Offset(2, 2),
              )
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5.0),
            child: Image.network(
              imagePath,
              fit: BoxFit.cover,
              loadingBuilder: (BuildContext context, Widget child,
                  ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) return child;
                return Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded /
                            loadingProgress.expectedTotalBytes!
                        : null,
                  ),
                );
              },
            ),
          ),
        ),
        Positioned(
          top: 10,
          left: 10,
          child: Container(
            height: 30,
            width: 30,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.network(
                logoImagePath,
                fit: BoxFit.cover,
                loadingBuilder: (BuildContext context, Widget child,
                    ImageChunkEvent? loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 5,
          right: 0,
          child: Container(
            padding: EdgeInsets.all(4.0),
            width: 100,
            decoration: BoxDecoration(
              color: Colors.black12.withOpacity(.3),
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(5.0),
              ),
            ),
            child: Text(
              sellerName,
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        )
      ],
    );
  }
}
