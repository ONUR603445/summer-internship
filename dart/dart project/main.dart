import 'CreditCard.dart';
import 'Order.dart';
import 'Product.dart';
import 'User.dart';

void main() {
  CreditCard creditCard1 = CreditCard(
    "0000 0000 0000 0000",
    "ONUR KONUK",
    "000",
    "09/27",
  );

  User user1 = User(
    "oko",
    "Onur",
    "Konuk",
    "01/01/2000",
    "passwrd123",
    "konur.",
    "homeaddress",
    "workaddress",
    [],
    [],
    creditCard1,
  );

  Product tv = Product(
    "tv",
    "black",
    "technology",
    10,
    5,
    "It is a smart TV, can be connected to the Internet.",
  );

  Product pants = Product(
    "pants",
    "white",
    "clothes",
    7,
    0.5,
    "This is a very soft stretchy trousers.",
  );

  Product table = Product(
    "table",
    "yellow",
    "furniture",
    2,
    12,
    "This desk is a study desk.",
  );

  Order tableOrder = Order(user1, pants, creditCard1);
  int buyingAmount = 1;

  
}
