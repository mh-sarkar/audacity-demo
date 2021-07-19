import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.companyName,
    required this.companyLogo,
    required this.friendlyTimeDiff,
    required this.story,
    required this.storyImage,
    required this.availableStock,
    required this.price,
    required this.orderQty,
  }) : super(key: key);
  final String companyLogo;
  final String companyName;
  final String friendlyTimeDiff;
  final String story;
  final String storyImage;
  final int price;
  final int availableStock;
  final int orderQty;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.network(
                        companyLogo,
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
                  SizedBox(
                    width: 8.0,
                  ),
                  RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: '$companyName\n',
                          style: TextStyle(
                            fontSize: 13.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: friendlyTimeDiff,
                          style: TextStyle(
                            fontSize: 13.0,
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                story,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              height: 180,
              child: Image.network(
                storyImage,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconWithContent(
                  content: price.toString(),
                  icon: Icons.card_giftcard,
                  isContentPrice: true,
                ),
                IconWithContent(
                  content: "$availableStock Available Stock",
                  icon: Icons.menu,
                ),
                IconWithContent(
                  content: "$orderQty Order(s)",
                  icon: Icons.shopping_cart_outlined,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class IconWithContent extends StatelessWidget {
  IconWithContent({
    Key? key,
    required this.icon,
    required this.content,
    this.isContentPrice = false,
  }) : super(key: key);
  final IconData icon;
  final String content;
  final bool isContentPrice;

  final formatCurrency = new NumberFormat.currency(name: "BDT ");

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        Text(
          isContentPrice ? formatCurrency.format(int.parse(content)) : content,
          style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
