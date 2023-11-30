import 'package:cusmerraj/presentation/app_food3_checkout_screen/app_food3_checkout_screen.dart';
import 'package:cusmerraj/presentation/app_order_screen/components/custom_appbar_order.dart';
import 'package:cusmerraj/presentation/app_order_screen/models/order.dart';
import 'package:cusmerraj/theme/theme_helper.dart';
import 'package:cusmerraj/widgets/app_text/app_text.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class OrderScreen extends StatefulWidget {
  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen>
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

  final List<Order> orders = [
    Order(
      orderId: 'yTd6Fdy9J',
      dateTime: DateTime.now(),
      amount: 456.34,
      status: OrderStatus.Completed,
    ),
    Order(
      orderId: 'Oh7dGt5Rv',
      dateTime: DateTime.now().subtract(Duration(days: 2)),
      amount: 156.88,
      status: OrderStatus.Processing,
    ),
    Order(
      orderId: 'Pjd6gd5dD',
      dateTime: DateTime.now().subtract(Duration(days: 3)),
      amount: 100,
      status: OrderStatus.Pending,
    ),
    Order(
      orderId: 'Qe4D5G5t3',
      dateTime: DateTime.now().subtract(Duration(days: 6)),
      amount: 145.65,
      status: OrderStatus.Cancelled,
    ),
  ];

  // ignore: missing_return
  Color generateStatusColor(OrderStatus status) {
    switch (status) {
      case OrderStatus.Completed:
        return Color(0xFF86c55c);
        break;
      case OrderStatus.Processing:
        return Color(0xFF02bcf5);
        break;
      case OrderStatus.Pending:
        return Color(0xFFc99800);
        break;
      case OrderStatus.Cancelled:
        return Color(0xFFeb383e);
        break;
    }
  }

  // ignore: missing_return
  String generateStatusText(OrderStatus status) {
    switch (status) {
      case OrderStatus.Completed:
        return 'Completed';
        break;
      case OrderStatus.Processing:
        return 'Processing';
        break;
      case OrderStatus.Pending:
        return 'Pending';
        break;
      case OrderStatus.Cancelled:
        return 'Cancelled';
        break;
    }
  }

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
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // height: double.infinity,
        alignment: Alignment.center,
        color: theme.colorScheme.onSecondaryContainer,
        child: Container(
          // height: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              topLeft: Radius.circular(10),
            ),
            color: Colors.white,
          ),
          child: Container(
            color: theme.colorScheme.onSecondaryContainer,
            padding: EdgeInsets.fromLTRB(10, 15, 10, 0),
            child: Column(
              children: orders.map((order) {
                return _buildOrderItem(order);
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildOrderItem(Order order) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AppFood3CheckoutScreen()),
        );
      },
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
          color: Color(0xFFF1F1F1),
          border: Border.all(color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              DateFormat('MMM dd, yyyy, hh:mm a').format(order.dateTime),
              style: TextStyle(
                fontSize: 12,
                color: Color(0xFF8f8f8f),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Order ID:',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF8f8f8f),
                      ),
                    ),
                    Text(
                      '#${order.orderId}',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Order Amount:',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF8f8f8f),
                      ),
                    ),
                    Text(
                      '₹${order.amount}',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Status:',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF8f8f8f),
                      ),
                    ),
                    Text(
                      '${generateStatusText(order.status)}',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: generateStatusColor(order.status),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 15),
            Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(4),
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFFE9E9E9)),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                  child: Text(
                    'Reorder',
                    style: TextStyle(color: Colors.black54, fontSize: 12),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
