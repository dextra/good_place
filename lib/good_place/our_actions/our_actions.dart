import 'package:flutter/material.dart';
import 'package:good_place/good_place/our_actions/action_card.dart';
import 'package:good_place/good_place/our_actions/action_filter.dart';
import 'package:good_place/models/generic_item.dart';
import 'package:good_place/widgets/base_scaffold.dart';
import 'package:intl/intl.dart';

class OurActions extends StatefulWidget {
  final List<GenericItem> actions;
  final bool loading;

  const OurActions({
    required this.actions,
    this.loading = false,
  });

  @override
  _OurActionsState createState() => _OurActionsState();
}

class _OurActionsState extends State<OurActions> {
  late int _selectedMonth;
  late int _selectedYear;
  List<GenericItem> _filteredActions = [];

  @override
  void initState() {
    super.initState();

    final today = DateTime.now();
    _selectedMonth = int.parse(DateFormat('MM', 'pt_BR').format(today));
    _selectedYear = int.parse(DateFormat('yyyy', 'pt_BR').format(today));

    filterActions(month: _selectedMonth, year: _selectedYear);
  }

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ActionFilter(
            years: _formatYearsList(),
            selectedMonth: _selectedMonth,
            selectedYear: _selectedYear,
            onFilter: (year, month) {
              setState(() {
                _selectedMonth = month;
                _selectedYear = year;

                filterActions(month: month, year: year);
              });
            },
          ),
          SizedBox(height: 70),
          ..._filteredActions.map((action) => ActionCard(item: action)).toList()
        ],
      ),
    );
  }

  void filterActions({required int year, required int month}) {
    setState(() {
      _filteredActions = widget.actions
          .where((element) =>
              element.date!.month == month && element.date!.year == year)
          .toList();
    });
  }

  List<int> _formatYearsList() {
    return widget.actions.map((action) => action.date!.year).toSet().toList()
      ..sort((a, b) => b.compareTo(a));
  }
}
