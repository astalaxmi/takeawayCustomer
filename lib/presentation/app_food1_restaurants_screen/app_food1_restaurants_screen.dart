import 'package:cusmerraj/core/app_export.dart';
import 'package:cusmerraj/presentation/app_order_screen/components/custom_appbar_order.dart';
import 'package:cusmerraj/widgets/app_text/app_text.dart';
import 'package:flutter/material.dart';

import '../app_home_all_screen/components/custom_appbar.dart';

class AppFood1RestaurantsScreen extends StatefulWidget {
  const AppFood1RestaurantsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<AppFood1RestaurantsScreen> createState() =>
      _AppFood1RestaurantsScreenState();
}

class _AppFood1RestaurantsScreenState extends State<AppFood1RestaurantsScreen>
    with SingleTickerProviderStateMixin {
  late ScrollController _scrollController;
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;

  bool get _isAppBarExpanded {
    return _scrollController.hasClients &&
        _scrollController.offset > (135 - 75);
  }

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
    );
    _scrollController = ScrollController()
      ..addListener(() {
        _isAppBarExpanded
            ? _animationController.forward()
            : _animationController.reverse();
      });
    _fadeAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.onSecondaryContainer,
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          CustomAppBarOrder(_fadeAnimation),
        ],
        body: Body(),
      ),
    );
  }

  Widget Body() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: _buildRestaurantListgrid(context),
    );
  }

  List<Map<String, dynamic>> restaurantData = [
    {
      'imageUrl':
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThQ3qiewOGxls_l7eZrk39Un6Vvr9MDklUMA&usqp=CAU",
      'userName': 'msg_lentil_bolognese1'.tr,
    },
    {
      'imageUrl':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYVdV2TgDvdhiM5024UgDBmx6_qhX9sfQICw&usqp=CAU',
      'userName': 'Dosaa '.tr,
    },

    {
      'imageUrl':
          "https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcSTIscDql61gG4aCsn4z0FeA7lK-sb9OwQyDgJ50NlI_EXcCrJ6-VR6mi3tJtu_aXr9_IBZdRtj_Q-lIS1T0TTLFUV0XMExQEVB3iIFlmyHlEjMTa3ENH4Npg&usqp=CAE",
      'userName': 'Dosaa '.tr,
    },
    {
      'imageUrl':
          "https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcT-P-VEGZnMzV6HPiqKgZXhVdu_aWVeRMDfM20ciz7fTBgLiasb7XZYJZWnFnV4MSMMoCfu4w2CCfJbBmfR7zMKRfReA24WorDeMTD0oQI&usqp=CAE",
      'userName': 'Dosaa '.tr,
    },
    {
      'imageUrl':
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpu8KaXdLzzcMMYCW1-Ob8Lcgd43O_z6Omfg&usqp=CAU",
      'userName': 'Dosaa '.tr,
    },
    {
      'imageUrl':
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1QvVsOFZCJ3qKhwZsseERR2UWLGmwrgHWhw&usqp=CAU",
      'userName': 'Dosaa '.tr,
    },
    {
      'imageUrl':
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-QrEfl7PfS875O8oxn6XSXpHiMxOsd4B2Lw&usqp=CAU",
      'userName': 'Dosaa '.tr,
    }
    // Add more restaurant data as needed
  ];

  /// Section Widget
  Widget _buildRestaurantListgrid(BuildContext context) {
    return SizedBox(
      height: 506.h,
      width: MediaQuery.sizeOf(context).width,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Set the number of items in each row
          crossAxisSpacing: 10.0, // Set the spacing between items horizontally
          mainAxisSpacing: 10.0, // Set the spacing between items vertically
        ),
        itemCount: restaurantData.length,
        itemBuilder: (BuildContext context, int index) {
          Map<String, dynamic> restaurant = restaurantData[index];
          return Container(
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSeventeen(
                    context,
                    userImage: restaurant['imageUrl'],
                    userName: restaurant['userName'],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 85.h,
                        margin: EdgeInsets.only(bottom: 3.v),
                        padding: EdgeInsets.symmetric(vertical: 1.v),
                        decoration: AppDecoration.fillOrange.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder12,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "lbl2".tr,
                              style: CustomTextStyles.bodyMediumBlack90015,
                            ),
                            SizedBox(
                              height: 17.v,
                              width: 50.h,
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      height: 16.v,
                                      width: 50.h,
                                      decoration: BoxDecoration(
                                        color: appTheme.gray10002,
                                        borderRadius: BorderRadius.circular(
                                          8.h,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text(
                                      "lbl_12_00".tr,
                                      style: theme.textTheme.bodyMedium,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                              onTap: () {
                                decrementCounter();
                              },
                              child: Icon(
                                Icons.remove,
                                color: Colors.white,
                              )),
                          Container(
                            height: 20.v,
                            width: 23.h,
                            child: Center(
                              child: Text(
                                counter.toString().tr,
                                style: theme.textTheme.displaySmall,
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: appTheme.orange700,
                              borderRadius: BorderRadius.circular(
                                9.h,
                              ),
                            ),
                          ),
                          GestureDetector(
                              onTap: () {
                                incrementCounter();
                              },
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              )),
                        ],
                      ),
                    ],
                  ),
                ],
              ));
        },
      ),
    );
  }

  int counter = 0;
  // Initial counter value
  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void decrementCounter() {
    if (counter > 0) {
      setState(() {
        counter--;
      });
    }
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 34.v,
          width: 186.h,
          margin: EdgeInsets.only(
            top: 2.v,
            bottom: 10.v,
          ),
          decoration: BoxDecoration(
            color: appTheme.blueGray100,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildSeventeen(
    BuildContext context, {
    required String userImage,
    required String userName,
  }) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Column(
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Image.network(
                  userImage,
                  height: 128.v,
                  width: 152.h,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            margin: EdgeInsets.only(
              left: 6.h,
              bottom: 6.v,
            ),
            decoration: AppDecoration.fillGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder5,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                userName,
                style: CustomTextStyles.bodySmall8.copyWith(
                  color: appTheme.black900,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
