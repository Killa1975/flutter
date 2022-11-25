
import 'package:praktika2/domain/entity/provider_entity.dart';

class Provider extends ProviderEntity{
  late int id;
  final String adres;
  final String name;


  Provider({
    required this.id,
  required this.adres,
   required this.name, }) 
   
   :super(
    id:id,
    adres : adres,
     name:name, 
     );

  Map<String, dynamic> toMap(){
    return {
      'adres':adres,
       'name':name, 
       };
  }

  factory Provider.toFromMap(Map<String, dynamic> json)
  {
    return Provider(
      id: json ['id']
      ,adres: json ['adres'],
       name: json ['name'], 
       );
  }
}