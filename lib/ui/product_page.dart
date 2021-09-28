import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_skeleton_template/foundation/constants.dart';
import 'package:flutter_skeleton_template/model/product.dart';

/// 商品を個別に表示する画面.
/// 商品IDごと
class ProductPage extends StatelessWidget {
  const ProductPage({
    Key? key,
    @PathParam('id') required this.id,
  }) : super(key: key);

  /// 商品ID
  final String id;

  // TODO(k-shir0): 商品情報を取得する処理.
  // TODO(k-shir0): 商品情報を表示する画面.
  @override
  Widget build(BuildContext context) {
    // TODO(k-shir0): 動的に生成するようになったら削除する.
    const product = Product(
      id: '1',
      name: '商品名 本',
      value: 1980,
      image: testImageUrl,
    );

    // TODO(k-shir0): 商品名, 写真, 価格, 数量（プルダウン？）, カートに入れるボタン
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: SizedBox.expand(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// 商品名
              // TODO(k-shir0): 太字にする.
              Text(product.name),

              // TODO(k-shir0): 複数の画像をスクロール出来るようにする.
              /// 商品画像
              SizedBox(
                width: double.infinity,
                // TODO(k-shir0): nullを分岐させる.
                child: Image.network(product.image!, fit: BoxFit.fitWidth),
              ),

              // TODO(k-shir0): 値段部分を赤字にする.
              /// 商品値段
              Text('価格 ¥${product.value}'),
            ],
          ),
        ),
      ),
    );
  }
}
