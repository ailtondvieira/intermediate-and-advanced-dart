class Order {
  void calculateTotalSum() {}
  void getItems() {}
  void addItem(int item) {}
  void deleteItem(int item) {}
}

class OrderRepository {
  void load(int orderID) {}
  void save(int order) {}
  void update(int order) {}
  void delete(int order) {}
}

class OrderViewer {
  void printOrder(int order) {}
  void showOrder(int order) {}
}

class Cart {
  void getCart() {}
  static void removeCart() {}
}
