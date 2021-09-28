import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// 商品を個別に表示する画面.
class ProductPage extends StatelessWidget {
  const ProductPage({
    Key? key,
    @PathParam('id') required this.id,
  }) : super(key: key);

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Text('id: $id'),
    );
  }
}
