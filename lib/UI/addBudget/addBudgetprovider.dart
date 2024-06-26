import 'package:flutter/material.dart';
import 'package:ethrift/UI/addBudget/addbudgetmodel.dart';

class AddBudgetProvider extends ChangeNotifier {
  List<AddBudgetModel> expenseContainerList = [
    AddBudgetModel(
      false,
      0,
      'Others',
      Colors.black,
      Icons.note_outlined,
    ),
    AddBudgetModel(
      false,
      1,
      'Bills and Utilities',
      Colors.yellow.shade300,
      Icons.payment_outlined,
    ),
    AddBudgetModel(
      false,
      2,
      'Food and Drinks',
      Colors.blue.shade200,
      Icons.fastfood_outlined,
    ),
    AddBudgetModel(
      false,
      3,
      'Entertainment',
      Colors.orange,
      Icons.tv,
    ),
    AddBudgetModel(
      false,
      4,
      'Investment',
      Colors.green.shade300,
      Icons.savings_outlined,
    ),
    AddBudgetModel(
      false,
      5,
      'Transportations',
      Colors.blueAccent,
      Icons.directions_bus_outlined,
    ),
    AddBudgetModel(
      false,
      6,
      'Shopping',
      Colors.pink.shade100,
      Icons.shopping_bag_outlined,
    ),
    AddBudgetModel(
      false,
      7,
      'Medical',
      Colors.indigo.shade400,
      Icons.medical_services_outlined,
    ),
    AddBudgetModel(
      false,
      8,
      'Education',
      Colors.teal.shade200,
      Icons.school_outlined,
    ),
    AddBudgetModel(
      false,
      9,
      'Gifts and Donations',
      Colors.deepOrange.shade200,
      Icons.card_giftcard_outlined,
    ),
    AddBudgetModel(
      false,
      10,
      'Insurance',
      Colors.indigo,
      Icons.newspaper_outlined,
    ),
    AddBudgetModel(
      false,
      11,
      'Tax',
      Colors.red,
      Icons.money_off_csred_outlined,
    ),
  ];

//EXPENSE SECTION
  int expenseSelectedIndex = 0;
  String expenseCategoryName = '';
  IconData expenseIconOfCategory = Icons.abc;

  void expenseSelectedContainerColorChange(int newIndex) {
    expenseSelectedIndex = newIndex;
    if (newIndex >= 0 && newIndex < expenseContainerList.length) {
      for (int i = 0; i < expenseContainerList.length; i++) {
        expenseContainerList[i].boolean = false;
      }
      expenseContainerList[newIndex].boolean = true;
      expenseCategoryName = expenseContainerList[newIndex].text;
      expenseIconOfCategory = expenseContainerList[newIndex].icon;
      notifyListeners();
    }
  }
}
