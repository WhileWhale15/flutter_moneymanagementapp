// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletapp/util/my_button.dart';
import 'package:walletapp/util/my_card.dart';
import 'package:walletapp/util/my_list_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        child: Icon(
          Icons.monetization_on,
          size: 32,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.only(top: 2.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  size: 32,
                  color: Colors.pink[200],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings,
                  size: 32,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Text(
                          "My",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          " Cards",
                          style: TextStyle(fontSize: 28),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.add),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),

              // cards
              Container(
                height: 200,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
                  children: [
                    MyCard(
                      balance: 5250.20,
                      cardNumber: 12345678,
                      expiryMonth: 10,
                      expiryYear: 24,
                      color: Colors.deepPurple[300],
                    ),
                    MyCard(
                      balance: 343.23,
                      cardNumber: 12345678,
                      expiryMonth: 11,
                      expiryYear: 25,
                      color: Colors.blue[300],
                    ),
                    MyCard(
                      balance: 420.20,
                      cardNumber: 12345678,
                      expiryMonth: 8,
                      expiryYear: 26,
                      color: Colors.green[300],
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 25,
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: ExpandingDotsEffect(
                  activeDotColor: Colors.grey.shade800,
                ),
              ),

              SizedBox(
                height: 40,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyButton(
                      iconImagePath: 'walletapp/lib/icons/send-money.png',
                      buttonText: 'Send',
                    ),
                    MyButton(
                      iconImagePath: 'walletapp/lib/icons/credit-card.png',
                      buttonText: 'Pay',
                    ),
                    MyButton(
                      iconImagePath: 'walletapp/lib/icons/bill.png',
                      buttonText: 'Bills',
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 40,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  children: [
                    MyListTile(
                      iconImagePath: 'walletapp/lib/icons/statistics.png',
                      tileTitle: 'Statistics',
                      tileSubTitle: 'Income and Expenses',
                    ),
                    MyListTile(
                      iconImagePath: 'walletapp/lib/icons/transaction.png',
                      tileTitle: 'Transactions',
                      tileSubTitle: 'Transaction History',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
