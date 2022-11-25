
import 'package:praktika2/domain/entity/furniture_entity.dart';

class Furniture extends FurnitureEntity{
late int id;
final String name;
final double price;
final int type;
final int id_provider;

  Furniture({
    required this.id,
    required this.name, 
    required this.price,
    required this.type, 
    required this.id_provider
    }) 

  :super(
    id:id,name : name,
     price:price, type:type,
      id_provider:id_provider
      );

  Map<String, dynamic> toMap(){
    return {
      'name':name,
       'price':price,
        'type':type,
         'prid_providerice':id_provider,
          };
  }

  factory Furniture.toFromMap(Map<String, dynamic> json)
  {
    return Furniture(
      id: json ['id'],
      name: json ['name'],
       price: json ['price'],
        type: json ['type'],
         id_provider: json ['id_provider']);
  }
}