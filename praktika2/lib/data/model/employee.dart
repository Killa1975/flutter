
import 'package:praktika2/domain/entity/employee_entity.dart';

class Employee extends EmployeeEntity
{
late int id;
final String FIO;
final double price;

  Employee({required this.id,required this.FIO, required this.price}) :super(id:id,FIO : FIO, price:price);

  Map<String, dynamic> toMap(){
    return {'FIO':FIO, 'price':price};
  }

  factory Employee.toFromMap(Map<String, dynamic> json)
  {
    return Employee(id: json ['id'],FIO: json ['FIO'], price: json ['price']);
  }
}