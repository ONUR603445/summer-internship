import 'CreditCard.dart';
import 'Product.dart';
import 'User.dart';

class Order {
  User orderingUser;
  Product orderedProduct;
  CreditCard creditCard;

  Order(this.orderingUser, this.orderedProduct, this.creditCard);

  void processOrder(int productAmount) {
    int b = productAmount;
    bool stockMessage = orderedProduct.stockControl(b);
    if (stockMessage) {
      for (int i = 0; i < productAmount; i++) {
        orderingUser.orderProduct(orderedProduct);
      }
    }
  }

  User getOrderingUser() {
    return orderingUser;
  }

  void setOrderingUser(User orderingUser) {
    this.orderingUser = orderingUser;
  }

  Product getOrderedProduct() {
    return orderedProduct;
  }

  void setOrderedProduct(Product orderedProduct) {
    this.orderedProduct = orderedProduct;
  }

  CreditCard getCreditCard() {
    return creditCard;
  }

  void setCreditCard(CreditCard creditCard) {
    this.creditCard = creditCard;
  }
}
