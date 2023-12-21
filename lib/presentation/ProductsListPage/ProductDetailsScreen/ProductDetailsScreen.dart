import 'package:cusmerraj/presentation/ProductsListPage/Model/ProductsListModel.dart';
import 'package:cusmerraj/presentation/ProductsListPage/ViewModel/ProductsListVM.dart';
import 'package:cusmerraj/theme/AppColors.dart';
import 'package:cusmerraj/widgets/CustomSizer/CustomSizer.dart';
import 'package:cusmerraj/widgets/QuantityPicker.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductDetailsPage extends StatefulWidget {
  final Data productDetails;

  final int qty;
  final int index;
  const ProductDetailsPage(
      {required this.productDetails,
      super.key,
      required this.qty,
      required this.index});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  ProductsListVM productsListVM = ProductsListVM();

  String selectedQuantity = "500 Gm";

  int? onChangeValue;

  Widget _buildQuantityList() {
    final quantities = ['500 Gm', '1 Kg', '2 Kg', '3 Kg'];

    return Row(
      children: quantities.map((quantity) {
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedQuantity = quantity;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.lightGrey),
                  color: quantity == selectedQuantity
                      ? AppColors.green
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(30)),
              height: AppSize.height(context, 4),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Center(
                    child: Text(
                  quantity,
                  style: TextStyle(
                      color: quantity == selectedQuantity
                          ? AppColors.white
                          : AppColors.lightGrey),
                )),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    productsListVM = context.watch<ProductsListVM>();
    return Scaffold(
      // appBar: CustomAppBar(
      //   leading: IconButton(
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //     icon: const Icon(
      //       Icons.arrow_back_ios,
      //       color: AppColors.white,
      //     ),
      //   ),
      //   title: const Text(
      //     "Product Detail",
      //     style: TextStyle(color: AppColors.white),
      //   ),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              color: AppColors.white,
              child: Image.network(widget.productDetails.productSmallImg!,
                  height: AppSize.height(context, 30), fit: BoxFit.cover),
            ),
            SizedBox(
              height: AppSize.height(context, 2),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                widget.productDetails.productName!,
                style: const TextStyle(
                    color: AppColors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: AppSize.height(context, 2),
            ),
            _buildQuantityList(),
            SizedBox(
              height: AppSize.height(context, 2),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                QuantityPicker(
                  borderRadius: 30,
                  index: widget.index,
                ),
                Text(
                  "₹${widget.productDetails.productMRP}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: AppColors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ],
            ),
            SizedBox(
              height: AppSize.height(context, 2),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "About this product",
                style: TextStyle(
                    color: AppColors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: AppSize.height(context, 2),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                widget.productDetails.productDescription ??
                    "Details not available",
                style: const TextStyle(color: AppColors.black),
                textAlign: TextAlign.justify,
              ),
            )
          ],
        ),
      ),
    );
  }
}
