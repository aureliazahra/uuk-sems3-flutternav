import '../models/cart_models.dart';

class CartData {
  static final List<CartItem> items = [];

  static void addToCart(CartItem item) {
    final index = items.indexWhere((e) => e.product.name == item.product.name);
    if (index != -1) {
      items[index].quantity += item.quantity;
    } else {
      items.add(item);
    }
  }

  static void removeFromCart(CartItem item) {
    items.remove(item);
  }

  static double get total {
    return items.fold(0, (sum, e) => sum + e.totalPrice);
  }

  static void clearCart() {
    items.clear();
  }
}
