import 'CreditCard.dart';
import 'Product.dart';

class User {
  String username;
  String name;
  String surname;
  String birthDate;
  String password;
  String mailAddress;
  String homeAddress;
  String workAddress;
  List<Product> orderedProducts;
  List<Product> favoriteProducts;
  CreditCard creditCard;

  User(
    this.username,
    this.name,
    this.surname,
    this.birthDate,
    this.password,
    this.mailAddress,
    this.homeAddress,
    this.workAddress,
    this.orderedProducts,
    this.favoriteProducts,
    this.creditCard,
  )
  
  {
    orderedProducts = <Product>[];
    favoriteProducts = <Product>[];
  }

  void orderProduct(Product product) {
    orderedProducts.add(product);
  }

  void addToFavorites(Product product) {
    favoriteProducts.add(product);
  }

  String getUsername() {
    return username;
  }

  void setUsername(String username) {
    this.username = username;
  }

  String getName() {
    return name;
  }

  void setName(String name) {
    this.name = name;
  }

  String getSurname() {
    return surname;
  }

  void setSurname(String surname) {
    this.surname = surname;
  }

  String getBirthDate() {
    return birthDate;
  }

  void setBirthDate(String birthDate) {
    this.birthDate = birthDate;
  }

  String getPassword() {
    return password;
  }

  void setPassword(String password) {
    this.password = password;
  }

  String getMailAddress() {
    return mailAddress;
  }

  void setMailAddress(String mailAddress) {
    this.mailAddress = mailAddress;
  }

  String getHomeAddress() {
    return homeAddress;
  }

  void setHomeAddress(String homeAddress) {
    this.homeAddress = homeAddress;
  }

  String getWorkAddress() {
    return workAddress;
  }

  void setWorkAddress(String workAddress) {
    this.workAddress = workAddress;
  }

  List<Product> getOrderedProducts() {
    return orderedProducts;
  }

  void setOrderedProducts(List<Product> orderedProducts) {
    this.orderedProducts = orderedProducts;
  }

  List<Product> getFavoriteProducts() {
    return favoriteProducts;
  }

  void setFavoriteProducts(List<Product> favoriteProducts) {
    this.favoriteProducts = favoriteProducts;
  }

  CreditCard getCreditCard() {
    return creditCard;
  }

  void setCreditCard(CreditCard creditCard) {
    this.creditCard = creditCard;
  }
}
