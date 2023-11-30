import 'package:cusmerraj/core/app_export.dart';
import 'package:cusmerraj/widgets/app_text/app_text.dart';
import 'package:cusmerraj/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class FavouritesScreen extends StatelessWidget {
  FavouritesScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController elevenEditTextController = TextEditingController();

  TextEditingController abRestaurantEditTextController =
      TextEditingController();

  TextEditingController medplusEditTextController = TextEditingController();

  TextEditingController pvrCinemasEditTextController = TextEditingController();

  TextEditingController inoxMoviesEditTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              size: 30,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Theme.of(context).colorScheme.onSecondaryContainer,
          title: Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgLocationGray90001,
                height: 15.v,
                width: 15.h,
                color: Colors.white,
              ),
              SizedBox(
                width: 15,
              ),
              AppText(
                "lbl_favourites".tr,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(height: 4.v),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30.v),
                    Center(
                      child: Container(
                        decoration: AppDecoration.outlineGrayF,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgLocationGray90001,
                                height: 32.v,
                                width: 27.h,
                                margin: EdgeInsets.only(
                                  left: 8.h,
                                  top: 2.v,
                                  bottom: 11.v,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 20.h,
                                  bottom: 9.v,
                                ),
                                child: Text(
                                  "lbl_favourites".tr,
                                  style:
                                      CustomTextStyles.headlineSmallGray90001,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30.v),

                    _buildListShow(),

                    // _buildHomeRow(context),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          onPressed: () {
            // Your action when the button is pressed
            print('Button pressed!');
          },
          child: Icon(
            Icons.search,
            size: 30,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchView(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 7.h,
        right: 10.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
          Padding(
            padding: const EdgeInsets.only(left: 4.0),
            child: Container(
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
          ),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Text(
              "lbl_search".tr,
              style: theme.textTheme.headlineLarge,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListShow() {
    final List<String> itemList = [
      "elevan",
      "a2b resurent",
      "medplus",
      "pvr cinemas",
      "Inox movies"
    ];

    return SizedBox(
      height: 500,
      child: ListView.builder(
        itemCount: itemList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: AppDecoration.outlineGray4003f,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      itemList[index],
                      style: CustomTextStyles.bodyMediumPoppinsGray9000114,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildElevenEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 17.h),
      child: CustomTextFormField(
        width: 201.h,
        controller: elevenEditTextController,
        hintText: "lbl_7_eleven2".tr,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 10.h,
          vertical: 15.v,
        ),
        borderDecoration: TextFormFieldStyleHelper.outlineGrayF,
        filled: true,
        fillColor: appTheme.amber700,
      ),
    );
  }

  /// Section Widget
  Widget _buildAbRestaurantEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.h),
      child: CustomTextFormField(
        width: 202.h,
        controller: abRestaurantEditTextController,
        hintText: "lbl_a2b_restaurant".tr,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 9.h,
          vertical: 12.v,
        ),
        borderDecoration: TextFormFieldStyleHelper.outlineGrayF,
        filled: true,
        fillColor: appTheme.amber700,
      ),
    );
  }

  /// Section Widget
  Widget _buildMedplusEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 17.h),
      child: CustomTextFormField(
        width: 201.h,
        controller: medplusEditTextController,
        hintText: "lbl_medplus2".tr,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 8.h,
          vertical: 15.v,
        ),
        borderDecoration: TextFormFieldStyleHelper.outlineGrayF,
        filled: true,
        fillColor: appTheme.amber700,
      ),
    );
  }

  /// Section Widget
  Widget _buildPvrCinemasEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 17.h),
      child: CustomTextFormField(
        width: 201.h,
        controller: pvrCinemasEditTextController,
        hintText: "lbl_pvr_cinemas".tr,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 8.h,
          vertical: 18.v,
        ),
        borderDecoration: TextFormFieldStyleHelper.outlineGrayF,
        filled: true,
        fillColor: appTheme.amber700,
      ),
    );
  }

  /// Section Widget
  Widget _buildInoxMoviesEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15.h),
      child: CustomTextFormField(
        width: 203.h,
        controller: inoxMoviesEditTextController,
        hintText: "lbl_inox_movies".tr,
        textInputAction: TextInputAction.done,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 10.h,
          vertical: 21.v,
        ),
        borderDecoration: TextFormFieldStyleHelper.outlineGrayF,
        filled: true,
        fillColor: appTheme.amber700,
      ),
    );
  }

  /// Section Widget
  Widget _buildHomeRow(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          height: 58.v,
          width: 82.h,
          margin: EdgeInsets.only(
            top: 11.v,
            bottom: 6.v,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: fs.Svg(
                ImageConstant.imgGroup3,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup3,
            height: 58.v,
            width: 82.h,
            alignment: Alignment.center,
          ),
        ),
        Container(
          height: 58.v,
          width: 84.h,
          margin: EdgeInsets.only(
            left: 12.h,
            top: 11.v,
            bottom: 5.v,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: fs.Svg(
                ImageConstant.imgGroup4,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup4,
            height: 58.v,
            width: 84.h,
            alignment: Alignment.center,
          ),
        ),
        Container(
          height: 64.v,
          width: 71.h,
          margin: EdgeInsets.only(
            left: 10.h,
            top: 11.v,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: fs.Svg(
                ImageConstant.imgGroup2,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup2,
            height: 64.v,
            width: 71.h,
            alignment: Alignment.center,
          ),
        ),
        Container(
          height: 66.v,
          width: 67.h,
          margin: EdgeInsets.only(
            left: 22.h,
            bottom: 9.v,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: fs.Svg(
                ImageConstant.imgGroup1,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup1,
            height: 66.v,
            width: 67.h,
            alignment: Alignment.center,
          ),
        ),
      ],
    );
  }
}

class YourWidget extends StatelessWidget {
  final List<String> itemList = [
    "elevan",
    "a2b resurent",
    "medplus",
    "pvr cinemas",
    "Inox movies"
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: itemList.length,
        itemBuilder: (context, index) {
          return _buildListShow(itemList[index]);
        },
      ),
    );
  }

  Widget _buildListShow(String itemName) {
    return Container(
      decoration: AppDecoration.outlineGray4003f,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              itemName,
              style: CustomTextStyles.bodyMediumPoppinsGray9000114,
            ),
          ],
        ),
      ),
    );
  }
}
