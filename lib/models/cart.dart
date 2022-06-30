import 'package:flutter_catalog/core/store.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class CartModel {
  // static final cartModel = CartModel._internal();
  // CartModel._internal();

  // factory CartModel() => cartModel;

  late CatalogModel _catalogModel;

  final List<int> itemIds = [];

  CatalogModel get catalog => _catalogModel;

  set catalog(CatalogModel newCatalog) {
    _catalogModel = newCatalog;
  }

  List<Item> get items => itemIds.map((id) => catalog.getbyid(id)).toList();

  num get totalPrice => items.fold(0, (sum, element) => sum + element.price);

  
}

class AddMutation extends VxMutation<MyStore> {
  final Item item;

  AddMutation(this.item);
  @override
  perform() {
    store?.cart.itemIds.add(item.id);
  }
}

class RemoveMutation extends VxMutation<MyStore> {
  final Item item;

  RemoveMutation(this.item);
  @override
  perform() {
    store?.cart.itemIds.remove(item.id);
  }
}
