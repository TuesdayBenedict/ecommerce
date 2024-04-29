import 'package:e_commerce/pages/includes/product_list.dart';

List categoriesItems = [
  'All',
  ...productList.map((product) => product.category).toSet()
];
