class Product {
  String title;
  double price;
  int quantity;

  Product(this.title, this.price, this.quantity);

  double getTotalCost() {
    return price * quantity;
  }

  void printProduct() {
    print('Товар: $title, цена: $price, кол-во: $quantity');
  }

  void restock(int amount) {
    if (amount <= 0) {
      print('Ошибка: количество пополнения должно быть больше 0');
      return;
    }
    quantity += amount;
  }
}

void main() {
  final products = <Product>[
    Product('Клавиатура', 2500.0, 4),
    Product('Мышь', 1200.0, 10),
    Product('Монитор', 14500.0, 2),
    Product('Наушники', 3800.0, 5),
    Product('Коврик', 600.0, 15),
  ];

  products[0].restock(6);

  double totalWarehouseCost = 0.0;
  Product mostExpensive = products.first;

  for (final product in products) {
    product.printProduct();
    totalWarehouseCost += product.getTotalCost();

    if (product.price > mostExpensive.price) {
      mostExpensive = product;
    }
  }

  print('Общая стоимость склада: $totalWarehouseCost');
  print('Самый дорогой товар: ${mostExpensive.title}');
}