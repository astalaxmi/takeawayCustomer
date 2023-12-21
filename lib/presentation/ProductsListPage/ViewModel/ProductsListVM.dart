import 'package:cusmerraj/api_common_repository/userRepository.dart';
import 'package:cusmerraj/api_service/DebugFunctions/securedPrint.dart';
import 'package:cusmerraj/api_service/Remote/NetworkService/networkService.dart';
import 'package:cusmerraj/api_service/Remote/respones/ApiResponse.dart';
import 'package:cusmerraj/presentation/ProductsListPage/Model/ProductModel.dart';
import 'package:cusmerraj/presentation/ProductsListPage/Model/ProductsListModel.dart';
import 'package:cusmerraj/presentation/ProductsListPage/ProductDetailsScreen/ProductDetailsScreen.dart';
import 'package:cusmerraj/theme/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:provider/provider.dart';

class ProductsListVM extends ChangeNotifier {
  bool isLoading = false;
  ProductsListModel? productsListModel;
  ValueNotifier<List<ProductModel>> productsQuantity = ValueNotifier([]);
  ValueNotifier<List<ProductModel>> get products => productsQuantity;

  setLoading(bool loader) {
    isLoading = loader;
    notifyListeners();
  }

  int cartLength() {
    if (productsQuantity.value.isNotEmpty) {
      var length = 0;
      for (var element in productsQuantity.value) {
        length = length + element.quantity;
      }
      return length;
    } else {
      return 0;
    }
  }

  void quantity(List<Data> index) {
    for (int i = 0; i < index.length; i++) {
      productsQuantity.value.add(ProductModel(productId: i, quantity: 0));
    }
    notifyListeners();
  }

  void updateQuantity(int index, int quantity) {
    productsQuantity.value[index].quantity = quantity;

    notifyListeners();
  }

  void productDetailsPageOnTap(
      {required BuildContext context,
      required int index,
      required Data productDetails}) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (builder) => ProductDetailsPage(
            qty: products.value[index].quantity,
            productDetails: productDetails,
            index: index)));
  }

  setProfile(ProductsListModel? profileScreenModel, context) async {
    productsListModel = profileScreenModel;
    print("productName::${profileScreenModel?.data![0].productName}");

    notifyListeners();
  }

  getProfile(BuildContext context) async {
    NetworkStatus networkStatus = context.read<NetworkStatus>();
    switch (networkStatus) {
      case NetworkStatus.online:
        setLoading(true);
        var params = {};
        var contactResponse = await userRepository.ProductListRepo();
        print("contactResponse::${contactResponse}");
        var decodeResponse = ApiResponse.completed(contactResponse);

        switch (decodeResponse.status?.index ?? 2) {
          case 0:
            break;
          case 1:
            setProfile(decodeResponse!.data, context);
            print("productName::${decodeResponse!.data!.data![0].productName}");
            setLoading(false);
            break;
          default:
            Future.delayed(Duration.zero, (() {
              Get.snackbar(
                snackPosition: SnackPosition.BOTTOM,
                "Success",
                "welcome",
                colorText: Colors.white,
                backgroundColor: AppColors.black,
                padding: EdgeInsets.only(bottom: 10),
                icon: const Icon(Icons.check),
              );
            }));
        }
        break;
      case NetworkStatus.offline:
        Future.delayed(Duration.zero, (() {
          Get.snackbar(
            snackPosition: SnackPosition.BOTTOM,
            "Check Internet connection",
            "welcome",
            colorText: Colors.white,
            backgroundColor: AppColors.black,
            padding: EdgeInsets.only(bottom: 10),
            icon: const Icon(Icons.check),
          );
          // customSnackBar.showSnakbar(
          //     context, "Check Internet connection", SnackbarType.negative);
        }));
        break;
    }
  }
}
