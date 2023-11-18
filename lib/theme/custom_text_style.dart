import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeGray90001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray90001,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyLargeOnSecondaryContainer =>
      theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static get bodyLargeRegular => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyLargeRobotoBlack900 =>
      theme.textTheme.bodyLarge!.roboto.copyWith(
        color: appTheme.black900,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumBlack90015 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
      );
  static get bodyMediumPoppinsDeeporange400 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.deepOrange400,
        fontSize: 14.fSize,
      );
  static get bodyMediumPoppinsGray200 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.gray200,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumPoppinsGray600 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.gray600,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumPoppinsGray800 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.gray800,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumPoppinsGray80001 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.gray80001,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumPoppinsGray900 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.gray900,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumPoppinsGray90001 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.gray90001,
        fontSize: 14.fSize,
      );
  static get bodyMediumPoppinsGray9000114 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.gray90001,
        fontSize: 14.fSize,
      );
  static get bodyMediumPoppinsGray9000115 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.gray90001,
        fontSize: 15.fSize,
      );
  static get bodyMediumPoppinsGray900Light =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.gray900,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumPoppinsOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumPoppinsOnPrimaryContainer14 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 14.fSize,
      );
  static get bodyMediumPoppinsOnPrimaryContainerLight =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumPoppinsOnPrimaryContainerLight15 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumRobotoBlack900 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.black900,
        fontSize: 14.fSize,
      );
  static get bodySmall8 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 8.fSize,
      );
  static get bodySmall8_1 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 8.fSize,
      );
  static get bodySmall9 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 9.fSize,
      );
  static get bodySmall9_1 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 9.fSize,
      );
  static get bodySmall9_2 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 9.fSize,
      );
  // Headline text style
  static get headlineLargeBlack900 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.black900,
      );
  static get headlineLargeInter => theme.textTheme.headlineLarge!.inter;
  static get headlineLargePoppins =>
      theme.textTheme.headlineLarge!.poppins.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get headlineLargePoppinsGray100 =>
      theme.textTheme.headlineLarge!.poppins.copyWith(
        color: appTheme.gray100,
      );
  static get headlineLargePoppinsGray10003 =>
      theme.textTheme.headlineLarge!.poppins.copyWith(
        color: appTheme.gray10003,
      );
  static get headlineLargePoppinsGray5001 =>
      theme.textTheme.headlineLarge!.poppins.copyWith(
        color: appTheme.gray5001,
      );
  static get headlineLargePoppinsGray5001Bold =>
      theme.textTheme.headlineLarge!.poppins.copyWith(
        color: appTheme.gray5001,
        fontWeight: FontWeight.w700,
      );
  static get headlineLargePoppinsGray5001_1 =>
      theme.textTheme.headlineLarge!.poppins.copyWith(
        color: appTheme.gray5001,
      );
  static get headlineSmallGray50 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray50,
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallGray90001 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray90001,
      );
  static get headlineSmallOnPrimaryContainer =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get headlineSmallRobotoBlack900 =>
      theme.textTheme.headlineSmall!.roboto.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallRobotoOrange700 =>
      theme.textTheme.headlineSmall!.roboto.copyWith(
        color: appTheme.orange700,
        fontWeight: FontWeight.w600,
      );
  // Poppins text style
  static get poppinsGray500 => TextStyle(
        color: appTheme.gray500,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).poppins;
  // Roboto text style
  static get robotoBlack900 => TextStyle(
        color: appTheme.black900,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).roboto;
  // Title text style
  static get titleLargePoppinsGray90001 =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: appTheme.gray90001,
      );
  static get titleLargePoppinsOnPrimaryContainer =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w700,
      );
  static get titleLargePoppinsOnSecondaryContainer =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontWeight: FontWeight.w700,
      );
  static get titleLargePoppinsPrimaryContainer =>
      theme.textTheme.titleLarge!.poppins.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 21.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeRoboto => theme.textTheme.titleLarge!.roboto.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleLargeRobotoBold =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargeRobotoGray10002 =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: appTheme.gray10002,
        fontWeight: FontWeight.w800,
      );
  static get titleLargeRobotoSecondaryContainer =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  static get titleLargeRobotoSecondaryContainerBold =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeRobotoSecondaryContainer_1 =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallOnPrimaryContainerBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallOnPrimaryContainer_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleSmallOnPrimaryContainer_2 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );

  static get titletextformOnPrimaryContainer_2 =>
      theme.textTheme.titleSmall!.copyWith(
        color: Colors.black,
      );
  static get titleSmallOnSecondaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
      );
  static get titleSmallOnSecondaryContainerSemiBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get istokWeb {
    return copyWith(
      fontFamily: 'Istok Web',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
