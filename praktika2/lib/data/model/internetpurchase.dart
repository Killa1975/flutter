
import 'package:praktika2/domain/entity/internetpurchase_entity.dart';

class internetpurchase extends internetpurchaseEntity{
late int id;
final String name;
final double price;
final int id_furniture;

  internetpurchase({
    required this.id,
    required this.name,
     required this.price,
     required this.id_furniture, 
     }) 

  :super(
    id:id,name : name,
   price:price,
    id_furniture:id_furniture,
     );

  Map<String, dynamic> toMap(){
    return {
      'name':name, 
      'price':price, 
      'id_furniture':id_furniture, };
  }

  factory internetpurchase.toFromMap(Map<String, dynamic> json)
  {
    return internetpurchase (
      id: json ['id'],
      name: json ['name'],
       price: json ['price'],
        id_furniture: json ['id_furniture'],
         );
  }
}