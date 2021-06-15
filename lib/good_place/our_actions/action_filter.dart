import 'package:flutter/material.dart';
import 'package:good_place/theme.dart';
import 'package:good_place/widgets/label.dart';

class ActionFilter extends StatelessWidget {
  final List<int> years;
  final Map months = {
    1: 'Jan',
    2: 'Fev',
    3: 'Mar',
    4: 'Abr',
    5: 'Mai',
    6: 'Jun',
    7: 'Jul',
    8: 'Ago',
    9: 'Set',
    10: 'Out',
    11: 'Nov',
    12: 'Dez'
  };
  final int selectedYear;
  final int selectedMonth;
  final Function(int, int) onFilter;

  ActionFilter({
    this.years,
    this.selectedYear,
    this.selectedMonth,
    this.onFilter,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: years
              .map(
                (year) => Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: _FilterItem(
                    label: year.toString(),
                    color: CustomColors.light_green,
                    onTap: () => onFilter(year, selectedMonth),
                    selected: year == selectedYear,
                  ),
                ),
              )
              .toList(),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: months.entries
              .map(
                (month) => Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: _FilterItem(
                    label: month.value,
                    color: CustomColors.light_green,
                    selected: month.key == selectedMonth,
                    onTap: () => onFilter(
                      selectedYear,
                      month.key,
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}

class _FilterItem extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  final Color color;
  final bool selected;

  const _FilterItem({
    this.label,
    this.onTap,
    this.color,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: selected ? CustomColors.crazy_green : color,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Label(text: label, labelType: LabelType.littleTitle),
        ),
      ),
    );
  }
}
