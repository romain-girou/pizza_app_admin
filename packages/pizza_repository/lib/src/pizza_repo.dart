import 'dart:html' as html;
import 'dart:typed_data';
import 'models/models.dart';

abstract class PizzaRepo {
  Future<List<Pizza>> getPizzas();

  Future<String> sendImage(Uint8List file, String name);

  Future<void> createPizzas(Pizza pizza);

}