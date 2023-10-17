class Product {
  String name;
  String color;
  String category;
  int stockCount;
  double weight;
  String description;

  Product(
    this.name,
    this.color,
    this.category,
    this.stockCount,
    this.weight,
    this.description,
  ) {
    if (this.stockCount < 0) {
      this.stockCount = 0;
    }
  }

  bool stockControl(int a) {
    bool processResult;
    if (stockCount > a) {
      processResult = true;
      stockCount -= a;
    } else {
      processResult = false;
      print("Current stock number of this product: $stockCount");
    }
    return processResult;
  }

  String getName() {
    return name;
  }

  void setName(String name) {
    this.name = name;
  }

  String getColor() {
    return color;
  }

  void setColor(String color) {
    this.color = color;
  }

  String getCategory() {
    return category;
  }

  void setCategory(String category) {
    this.category = category;
  }

  int getStockCount() {
    return stockCount;
  }

  void setStockCount(int stockCount) {
    this.stockCount = stockCount;
  }

  double getWeight() {
    return weight;
  }

  void setWeight(double weight) {
    this.weight = weight;
  }

  String getDescription() {
    return description;
  }

  void setDescription(String description) {
    this.description = description;
  }
}
