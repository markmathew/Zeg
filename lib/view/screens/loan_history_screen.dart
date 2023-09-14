import 'package:flutter/material.dart';
import 'package:zeg/common/colors.dart';
import 'package:zeg/view/components/appbar_component.dart';
import 'package:zeg/view/components/bottom_navigator_component.dart';
import 'package:zeg/view/components/drawer_component.dart';

import '../components/loan_historycard_component.dart';

class LoanHistoryScreen extends StatelessWidget {
  const LoanHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      backgroundColor: ColorsConstant.black,
      drawer: DrawerComponent(),
      appBar: AppBarComponent(pageTitle: 'Loan History'),
      body: DefaultTabController(
        initialIndex: 0,
        length: 3,
        child: Column(
          children: [
            TabBar(
              indicatorColor: ColorsConstant.neonGreen,
              indicatorPadding: EdgeInsets.symmetric(horizontal: 20),
              tabs: [
                Tab(text: 'History',),
                Tab(text: 'Payable',),
                Tab(text: 'Recievable',),
              ],
            ),
            Expanded(
              child: TabBarView(children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                    LoanHistoryCardComponent(
                      name: 'Name',
                      contact: 'Contact',
                      total: 'Total',
                      amount: 'Amount',
                      interestRate: 'Interest %',
                      date: 'RepaymentDate',
                      optionalFees: 'Optional Fees',
                    ),
                      LoanHistoryCardComponent(
                        name: 'Name',
                        contact: 'Contact',
                        total: 'Total',
                        amount: 'Amount',
                        interestRate: 'Interest %',
                        date: 'RepaymentDate',
                        optionalFees: 'Optional Fees',
                      ),

                  ]),
                ),
                SingleChildScrollView(
                  child: Column(
                      children: [
                        LoanHistoryCardComponent(
                          name: 'Name',
                          contact: 'Contact',
                          total: 'Total',
                          amount: 'Amount',
                          interestRate: 'Interest %',
                          date: 'RepaymentDate',
                          optionalFees: 'Optional Fees',
                        ),
                        LoanHistoryCardComponent(
                          name: 'Name',
                          contact: 'Contact',
                          total: 'Total',
                          amount: 'Amount',
                          interestRate: 'Interest %',
                          date: 'RepaymentDate',
                          optionalFees: 'Optional Fees',
                        ),

                      ]),
                ),
                SingleChildScrollView(
                  child: Column(
                      children: [
                        LoanHistoryCardComponent(
                          name: 'Name',
                          contact: 'Contact',
                          total: 'Total',
                          amount: 'Amount',
                          interestRate: 'Interest %',
                          date: 'RepaymentDate',
                          optionalFees: 'Optional Fees',
                        ),
                        LoanHistoryCardComponent(
                          name: 'Name',
                          contact: 'Contact',
                          total: 'Total',
                          amount: 'Amount',
                          interestRate: 'Interest %',
                          date: 'RepaymentDate',
                          optionalFees: 'Optional Fees',
                        ),

                      ]),
                ),
              ]),
            )
          ],
        ),

      ),
      bottomNavigationBar: BottomNavigatorBarComponent(),
    );
  }
}
