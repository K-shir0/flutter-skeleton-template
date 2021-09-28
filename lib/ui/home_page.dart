import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_skeleton_template/foundation/constants.dart';
import 'package:flutter_skeleton_template/model/product.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8),
        // TODO(k-shir0): 端末のサイズによって変更する.
        child: LayoutBuilder(
          builder: (context, constraints) {
            final size = constraints.maxWidth / 2;

            // TODO(k-shir0): 動的に生成するようになったら削除する.
            final productCard = ProductCard(
                product: const Product(
                  id: '1',
                  name: '商品名 本',
                  value: 1980,
                  image: testImageUrl,
                ),
                height: size,
                width: size);

            // TODO(k-shir0): スクロールできるようにする.
            return Wrap(
              children: [
                productCard,
                productCard,
                productCard,
                productCard,
                productCard,
                productCard,
                productCard,
                productCard,
              ],
            );
          },
        ),
      ),
    );
  }
}

// TODO(k-shir0): 別のファイルに移動させる.
/// クリックすると商品詳細ページに推移する。
class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.product,
    required this.height,
    required this.width,
  }) : super(key: key);

  final Product product;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    image: product.image == null
                        ? null
                        : DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: NetworkImage(
                              product.image!,
                            ),
                          ),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(product.name),
              // TODO(k-shir0): コンマを付けるようにする.
              Text('¥${product.value}'),
            ],
          ),
        ),
      ),
    );
  }
}
