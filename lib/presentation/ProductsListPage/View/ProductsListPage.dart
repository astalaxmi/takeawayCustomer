// ignore_for_file: file_names

import 'package:cusmerraj/presentation/ProductsListPage/Model/ProductsListModel.dart';
import 'package:cusmerraj/presentation/ProductsListPage/ViewModel/ProductsListVM.dart';
import 'package:cusmerraj/theme/AppColors.dart';
import 'package:cusmerraj/widgets/CustomSizer/CustomSizer.dart';
import 'package:cusmerraj/widgets/ProductCard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductsListPage extends StatefulWidget {
  const ProductsListPage({super.key});

  @override
  State<ProductsListPage> createState() => _ProductsListPageState();
}

class _ProductsListPageState extends State<ProductsListPage> {
  ProductsListVM productsListVM = ProductsListVM();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<ProductsListVM>(context, listen: false).getProfile(context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    productsListVM = context.watch<ProductsListVM>();
    return Scaffold(
      // appBar: CustomAppBar(
      //   leading: const Icon(
      //     Icons.menu_rounded,
      //     color: AppColors.white,
      //   ),
      //   title: const Column(
      //     children: [
      //       Icon(
      //         Icons.shopping_cart_sharp,
      //         color: AppColors.white,
      //       ),
      //       Text(
      //         "dailefresh",
      //         style: TextStyle(
      //             color: AppColors.white, fontWeight: FontWeight.w700),
      //       ),
      //     ],
      //   ),
      //   actions: [
      //     SizedBox(
      //       width: 150,
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         children: [
      //           const Icon(
      //             Icons.qr_code,
      //             color: AppColors.white,
      //           ),
      //           const Icon(
      //             Icons.store,
      //             color: AppColors.white,
      //           ),
      //           Badge(
      //             backgroundColor: productsListVM.cartLength() == 0
      //                 ? Colors.transparent
      //                 : AppColors.red,
      //             label: productsListVM.cartLength() == 0
      //                 ? null
      //                 : Text('${productsListVM.cartLength()}'),
      //             child: const Icon(
      //               Icons.shopping_cart,
      //               color: AppColors.white,
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
      appBar: AppBar(
        backgroundColor: Colors.yellow,
      ),
      body: SizedBox(
        height: AppSize.height(context, 100),
        width: AppSize.width(context, 100),
        child: productsListVM.isLoading
            ? const Center(child: CircularProgressIndicator())
            : GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 1.0,
                  crossAxisSpacing: 1.0,
                  childAspectRatio: 0.6,
                  crossAxisCount: 2,
                ),
                itemCount: productsListVM.productsListModel?.data?.length,
                itemBuilder: (BuildContext context, int index) {
                  Data? productDetails =
                      productsListVM.productsListModel?.data![index];
                  return productDetails == null
                      ? const SizedBox()
                      : ProductCard(
                          index: index,
                          text: productDetails.productName!,
                          imageUrl: productDetails.productSmallImg!,
                          onPressed: () =>
                              productsListVM.productDetailsPageOnTap(
                                  context: context,
                                  index: index,
                                  productDetails: productDetails),
                          subtitle: productDetails.productMRP.toString(),
                        );
                },
              ),
      ),
    );
  }
}
