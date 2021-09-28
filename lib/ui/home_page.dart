import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: LayoutBuilder(
          builder: (context, constraints) {
            final size = constraints.maxWidth / 2;

            return Wrap(
              children: [
                ProductCard(height: size, width: size),
                ProductCard(height: size, width: size),
                ProductCard(height: size, width: size),
                ProductCard(height: size, width: size),
              ],
            );
          },
        ),
      ),
    );
  }
}

/// クリックすると商品詳細ページに推移する。
class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

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
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: NetworkImage('https://picsum.photos/200/300'),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text('商品名 本'),
              const Text('¥ 1,980'),
            ],
          ),
        ),
      ),
    );
  }
}
