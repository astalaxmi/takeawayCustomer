// ignore_for_file: file_names

import 'package:cusmerraj/presentation/ProductsListPage/ViewModel/ProductsListVM.dart';
import 'package:cusmerraj/theme/AppColors.dart';
import 'package:cusmerraj/widgets/CustomSizer/CustomSizer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class QuantityPicker extends StatefulWidget {
  final int index;
  final double borderRadius;

  const QuantityPicker(
      {required this.index, super.key, this.borderRadius = 10});

  @override
  State<QuantityPicker> createState() => _QuantityPickerState();
}

class _QuantityPickerState extends State<QuantityPicker> {
  ProductsListVM productsListVM = ProductsListVM();

  @override
  Widget build(BuildContext context) {
    productsListVM = context.watch<ProductsListVM>();
    return ClipRRect(
      borderRadius: BorderRadius.circular(widget.borderRadius),
      child: ValueListenableBuilder(
          valueListenable: productsListVM.products,
          builder: (context, value, child) {
            return Container(
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: AppColors.grey),
                  borderRadius: BorderRadius.circular(widget.borderRadius)),
              width: AppSize.width(context, 25),
              height: AppSize.height(context, 5),
              child: value[widget.index].quantity == 0
                  ? InkWell(
                      onTap: () {
                        setState(() {
                          productsListVM.updateQuantity(
                              widget.index, value[widget.index].quantity += 1);
                        });
                      },
                      child: const Center(
                        child: Text("ADD"),
                      ))
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                productsListVM.updateQuantity(widget.index,
                                    value[widget.index].quantity += 1);
                              });
                            },
                            child: const Icon(
                              Icons.add,
                              size: 20,
                            )),
                        Text(value[widget.index].quantity.toString()),
                        GestureDetector(
                            onTap: () {
                              if (value[widget.index].quantity > 0) {
                                setState(() {
                                  productsListVM.updateQuantity(widget.index,
                                      value[widget.index].quantity -= 1);
                                });
                              }
                            },
                            child: const Icon(
                              Icons.remove,
                              size: 20,
                            ))
                      ],
                    ),
            );
          }),
    );
  }
}
