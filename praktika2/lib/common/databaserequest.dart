///Запросы к БД
abstract class DataBaseRequest{
  

  /// Таблица Пользователи
  ///
  /// Поля таблицы: Логин, Пароль, Роль
  
  static String deleteTable(String table)=>'DROP TABLE $table';
  static const String tableRole = 'Role'; //
  static const String tableUsers = 'Users'; //
  static const String tableProvider = 'Provider'; //
  static const String tableEmployee = "Employee"; //
  static const String tableFurniture="Furniture"; //
  static const String tableStock="Stock"; //
  static const String tablePurchase="Purchase"; //
  static const String tableInternetPurchase="InternetPurchase";
  static const String tableMarket="Market";

  static const List<String> tableList =[
    tableRole,
    tableUsers,
    tableProvider,
    tableEmployee,
    tableFurniture,
    tableStock,
    tablePurchase,
    tableInternetPurchase,
    tableMarket
  ];
    static const List<String> tableCreateList =[
    _createTableFurniture,
    _createTableRole,
    _createTableUsers,
    _createTableStock,
    _createTableProvider,
    _createTableInternetPurchase,
    _createTableEmployee,
    _createTablePurchase,
    _createTabletableMarket

  ];
  static const String _createTableRole =
  'CREATE TABLE "$tableRole" ("id" INTEGER ,"role" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT));';
  /// Запрос для создания таблицы Users

  static const String _createTableUsers =
  'CREATE TABLE "$tableUsers" ("id" INTEGER   KEY,"login" TEXT NOT NULL UNIQUE,"password" TEXT NOT NULL, "first_name" TEXT NOT NULL, "last_name" TEXT NOT NULL, "middle_name" TEXT ,"id_role" INTEGER,FOREIGN KEY("id_role") REFERENCES "$tableProvider"("id"),PRIMARY KEY("id"));';

  static const String _createTableProvider=
  'CREATE TABLE "$tableProvider"( "id" INTEGER , "name" TEXT NOT NULL UNIQUE, "adres" TEXT NOT NULL, "email" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT));';
  
  static const String _createTableStock= 
  'CREATE TABLE "$tableStock"( "id" INTEGER, "adres" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT));';

  static const String _createTableEmployee =
   'CREATE TABLE "$tableEmployee" ("id" INTEGER,"name" TEXT NOT NULL UNIQUE, "price" REAL NOT NULL, "id_provider" INTEGER, "id_type" INTEGER,PRIMARY KEY("id" AUTOINCREMENT), FOREIGN KEY("id_provider") REFERENCES "$tableProvider"("id"), FOREIGN KEY("id_type") REFERENCES "$tableFurniture"("id"));';

   static const String _createTableInternetPurchase =
   'CREATE TABLE "$tableInternetPurchase" ("id" INTEGER,"name" TEXT NOT NULL UNIQUE, "price" REAL NOT NULL, PRIMARY KEY("id" AUTOINCREMENT));';
   
   static const String _createTablePurchase =
   'CREATE TABLE "$tablePurchase" ("id" INTEGER,"name" TEXT NOT NULL UNIQUE, "price" REAL NOT NULL, "id_furniture" INTEGER, "id_stock" INTEGER,PRIMARY KEY("id" AUTOINCREMENT), FOREIGN KEY("id_furniture") REFERENCES "$tableFurniture"("id"), FOREIGN KEY("id_stock") REFERENCES "$tableStock"("id"));';

static const String _createTableFurniture =
   'CREATE TABLE "$tableFurniture" ("id" INTEGER,"name" TEXT NOT NULL UNIQUE,PRIMARY KEY("id" AUTOINCREMENT));';

static const String _createTabletableMarket =
   'CREATE TABLE "$tableMarket" ("id" INTEGER,"adres" TEXT NOT NULL UNIQUE, "id_stock" INTEGER, FOREIGN KEY("id_stock") REFERENCES "$tableStock"("id"),PRIMARY KEY("id" AUTOINCREMENT));';
}