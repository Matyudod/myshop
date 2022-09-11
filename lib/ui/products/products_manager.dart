import '../../models/product.dart';

class ProductsManager {
  final List<Product> _items = [
    Product(
        title: "Red T-shirt",
        description: "A T-shirt have color red",
        price: 30.0,
        imageUrl:
            "https://images.asos-media.com/products/asos-design-oversized-t-shirt-in-red/12966810-1-red?wid=513&fit=constrain"),
    Product(
        title: "Black T-shirt",
        description: "A T-shirt have color black",
        price: 50.0,
        imageUrl:
            "https://images.unsplash.com/photo-1618517351616-38fb9c5210c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YmxhY2slMjB0JTIwc2hpcnR8ZW58MHx8MHx8&w=1000&q=80"),
    Product(
        title: "Trouser Pants",
        description: "A trouser pants light fabric striped beige",
        price: 120.0,
        imageUrl:
            "https://martinvalen.com/17601-large_default/men-s-trousers-pants-light-fabric-striped-beige.jpg"),
    Product(
        title: "A Pan",
        description: "A Pan",
        price: 10.0,
        imageUrl:
            "https://www.thoughtco.com/thmb/GgqHVPv2O1uZq81iyCQC2xK2hKw=/3504x2336/filters:fill(auto,1)/skillet-frying-pan-on-white-background-131919734-57e41d555f9b586c35918f3f.jpg"),
  ];
  int get itemCount {
    return _items.length;
  }

  List<Product> get items {
    return [..._items];
  }

  List<Product> get favoriteItems {
    return _items.where((prodItem) => prodItem.isFavorite).toList();
  }
}
