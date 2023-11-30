import 'package:cusmerraj/core/app_export.dart';
import 'package:cusmerraj/widgets/app_text/app_text.dart';
import 'package:flutter/material.dart';

class AppFood2FoodItemsScreen extends StatelessWidget {
  AppFood2FoodItemsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Theme.of(context).colorScheme.onSecondaryContainer,
          title: GestureDetector(
            onTap: () {
//              Navigator.push(context, SizeTransition4(SearchPage()));
              // Navigator.of(context)
              //     .push(MaterialPageRoute(builder: (_) => const SearchPage()));
            },
            child: Row(
              children: [
                Expanded(
                  child: Container(
                      margin: EdgeInsets.fromLTRB(15, 0, 15, 12),
                      padding: EdgeInsets.only(left: 15),
                      height: 48,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            blurRadius: 3,
                            // spreadRadius: 1,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.search,
                                  size: 18,
                                  color: Color(0XFF0274BC),
                                )),
                            AppText(
                              'Search for store/item',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(height: 4.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //_buildRowWithSearch(context),
                      SizedBox(height: 1.v),
                      Center(
                        child: Text(
                          "lbl_restaurants".tr,
                          style: CustomTextStyles.titleLargeRobotoGray10002,
                        ),
                      ),
                      SizedBox(height: 15.v),
                      _buildRestaurantListgrid(context),
                      // _buildRestaurantDetails(context),
                      //_buildBottomNavigationBar(context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List imageUrls = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThQ3qiewOGxls_l7eZrk39Un6Vvr9MDklUMA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYVdV2TgDvdhiM5024UgDBmx6_qhX9sfQICw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpu8KaXdLzzcMMYCW1-Ob8Lcgd43O_z6Omfg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbqNJwaI5dKMOnJPdKo0gcmqDrfRV0Q5-gbQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJjCw-EXNkZI7On3CgMRqG63xaTsWd4a9Hxg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQysd08BJqcjwHv7ze719jCBeKNYW3HmZZr6w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1QvVsOFZCJ3qKhwZsseERR2UWLGmwrgHWhw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-QrEfl7PfS875O8oxn6XSXpHiMxOsd4B2Lw&usqp=CAU"
    // Add more image URLs as needed
  ];

  /// Section Widget
  Widget _buildRestaurantListgrid(
    BuildContext context,
  ) {
    return SizedBox(
      height: 510.h,
      width: MediaQuery.sizeOf(context).width,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Set the number of items in each row
          crossAxisSpacing: 10.0, // Set the spacing between items horizontally
          mainAxisSpacing: 10.0, // Set the spacing between items vertically
        ),
        itemCount: imageUrls.length, // Set the total number of items
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: 143.h,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(
                10.h,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // ClipRRect(
                //   borderRadius: BorderRadius.all(Radius.circular(10)),
                //   child: CustomImageView(
                //     // You can modify this part to load different images based on the index
                //     imagePath: index % 2 == 0
                //         ? ImageConstant.imgRectangle88
                //         : ImageConstant.imgRectangle89,
                //     height: 128.v,
                //     width: 132.h,
                //   ),
                // ),

                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Image.network(
                    imageUrls[index],
                    height: 128.v,
                    width: 132.h,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  index % 2 == 0 ? "lbl_restaurant1".tr : "lbl_restaurant2".tr,
                  style: theme.textTheme.labelLarge!.copyWith(
                    color: theme.colorScheme.onInverseSurface,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
