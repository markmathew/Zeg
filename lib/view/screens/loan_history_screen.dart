import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zeg/common/colors.dart';
import 'package:zeg/view/components/appbar_component.dart';
import 'package:zeg/view/components/bottom_navigator_component.dart';
import 'package:zeg/view/components/drawer_component.dart';

import '../components/loan_historycard_component.dart';

class LoanHistoryScreen extends StatelessWidget {
  const LoanHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: ColorsConstant.black,
      drawer: const DrawerComponent(),
      appBar: const AppBarComponent(pageTitle: 'Loan History'),
      body: DefaultTabController(
        initialIndex: 0,
        length: 3,
        child: Column(
          children: [
            const TabBar(
              indicatorColor: ColorsConstant.neonGreen,
              labelColor: ColorsConstant.lightGreen,
              unselectedLabelColor: ColorsConstant.white,
              indicatorPadding: EdgeInsets.symmetric(horizontal: 20),
              tabs: [
                Tab(text: 'History',),
                Tab(text: 'Payable',),
                Tab(text: 'Recievable',),
              ],
            ),
            SizedBox(height: 41.h,),
            const Expanded(
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
