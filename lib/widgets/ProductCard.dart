// ignore_for_file: file_names

import 'package:cusmerraj/presentation/ProductsListPage/ViewModel/ProductsListVM.dart';
import 'package:cusmerraj/theme/AppColors.dart';
import 'package:cusmerraj/widgets/CustomSizer/CustomSizer.dart';
import 'package:cusmerraj/widgets/QuantityPicker.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductCard extends StatefulWidget {
  final String text;
  final String imageUrl;
  final String subtitle;
  final int index;
  final Function() onPressed;

  const ProductCard(
      {required this.text,
      required this.imageUrl,
      required this.subtitle,
      required this.onPressed,
      super.key,
      required this.index});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  String selectedQuantity = "500 Gm";
  ProductsListVM productsListVM = ProductsListVM();

  Widget _buildQuantityList() {
    final quantities = ['500 Gm', '1 Kg', '2 Kg', '3 Kg'];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
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
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    productsListVM = context.watch<ProductsListVM>();
    return GestureDetector(
      onTap: widget.onPressed,
      child: Card(
        child: Container(
          width: AppSize.width(context, 50),
          height: AppSize.height(context, 45),
          // padding: const EdgeInsets.all(30.0),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(12.5),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network(widget.imageUrl,
                    height: AppSize.height(context, 20), fit: BoxFit.cover),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    widget.text,
                    style: const TextStyle(
                      color: AppColors.black,
                      fontSize: 18,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                _buildQuantityList(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "₹${widget.subtitle}",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: AppColors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    ValueListenableBuilder(
                        valueListenable: productsListVM.products,
                        builder: (context, value, child) {
                          return QuantityPicker(
                            index: widget.index,
                          );
                        })
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
