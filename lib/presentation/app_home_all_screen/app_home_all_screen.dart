import 'package:cusmerraj/presentation/app_home_all_screen/components/main_body.dart';
import 'package:cusmerraj/theme/theme_helper.dart';
import 'package:flutter/material.dart';
import 'components/custom_appbar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
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
          CustomAppBar(_fadeAnimation),
        ],
        body: Body(),
      ),
    );
  }
}
