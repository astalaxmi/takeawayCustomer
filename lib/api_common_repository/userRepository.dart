import 'package:cusmerraj/api_service/Remote/network/ApiEndPoints.dart';
import 'package:cusmerraj/api_service/Remote/network/NetworkApiService.dart';
import 'package:cusmerraj/presentation/ProductsListPage/Model/ProductsListModel.dart';

class CommonRepository {
  Future<ProductsListModel> ProductListRepo() async {
    var createRequestModel =
        await networkApiService.getResponse(ApiEndPoints().productList);
    return ProductsListModel.fromJson(createRequestModel);
  }
}

CommonRepository userRepository = CommonRepository();
