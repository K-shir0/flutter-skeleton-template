import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';

part 'product.g.dart';

/// 商品クラス.
@freezed
class Product with _$Product {
  /// 商品ID, 名前, 価格, イメージ
  const factory Product({
    required String id,
    required String name,
    required int value,
    String? image,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
