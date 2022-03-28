import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:vest_store/modules/all_category/data/repositories/category_repository_impl.dart';
import 'package:vest_store/modules/all_category/domain/usecases/get_products_by_all_categories_impl.dart';
import 'package:vest_store/modules/all_category/presentation/controllers/all_categories_store.dart';
import 'package:vest_store/modules/company_name/data/repositories/company_name_repository_impl.dart';
import 'package:vest_store/modules/company_name/domain/usecases/storage_company_name_impl.dart';
import 'package:vest_store/modules/company_name/presentation/controller/company_screen_store.dart';
import 'package:vest_store/modules/company_name/presentation/screen/company_name_screen.dart';
import 'package:vest_store/modules/especific_category/data/repositories/especific_category_impl.dart';
import 'package:vest_store/modules/product/data/repositories/products_repository_impl.dart';
import 'package:vest_store/modules/product/domain/usecases/get_all_products_impl.dart';
import 'package:vest_store/modules/product/external/sources/products_api.dart';
import 'package:vest_store/modules/product/presentation/controller/home_store.dart';
import 'package:vest_store/modules/product/presentation/home_screen/home_screen.dart';
import 'package:vest_store/modules/splash/presentation/controller/splash_screen_store.dart';
import 'package:vest_store/modules/splash/presentation/screen/splash_screen.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => Dio()),
    Bind.lazySingleton((i) => GetAllProductsImpl(i.get())),
    Bind.lazySingleton((i) => ProductsRepositoryImpl(i.get())),
    Bind.lazySingleton((i) => ProductsApi(i.get())),
    Bind.lazySingleton((i) => SplashStore()),
    Bind.lazySingleton((i) => CompanyScreenStore()),
    Bind.lazySingleton((i) => GetProductsByAllCategoriesImpl()),
    Bind.lazySingleton((i) => StorageCompanyNameImpl()),
    Bind.lazySingleton((i) => CategoryRepositoryImpl(i.get())),
    Bind.lazySingleton((i) => EspecificCategoryimpl(i.get())),
    Bind.lazySingleton((i) => CompanyNameRepositoryImpl(i.get())),
    Bind.lazySingleton((i) => AllCategoriesStore()),
    Bind.lazySingleton((i) => HomeStore(i.get())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => const SplashScreen()),
    ChildRoute('/companyname', child: (_, args) => const CompanyNameScreen()),
    ChildRoute('/home', child: (_, args) => const HomeScreen()),
  ];
}
