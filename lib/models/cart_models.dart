import 'package:uuk_sems3/models/product_model.dart';


//hanya struktur satu produk di cart
class CartItem {
  final Product product;
  int quantity;

  CartItem({required this.product, required this.quantity});

  double get totalPrice => product.price * quantity;
}
