import 'package:fooddelivery/data/repository/popular_product_repo.dart';
import 'package:fooddelivery/data/repository/recommended_product_repo.dart';
import 'package:fooddelivery/models/products_model.dart';
import 'package:get/get.dart';

class RecommendedProductController extends GetxController {
  final RecommendedProductRepo recommendedProductRepo;
  RecommendedProductController({required this.recommendedProductRepo});
  List<dynamic> _recommendedProductList = [];
  List<dynamic> get recommendedProductList => _recommendedProductList;

  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  Future<void> getRecommendedProductList() async {
    Response response =
        await recommendedProductRepo.getRecommendedProductList();

    if (response.statusCode == 200) {
      print("got products recommended");
      _recommendedProductList = [];
      _recommendedProductList.addAll(product.fromJson(response.body).products);
      //print(_RecommendedProductList);
      _isLoaded = true;
      update();
    } else {
      print("could not get products recommended");
    }
  }
}
