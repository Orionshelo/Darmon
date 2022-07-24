import 'package:flutter/material.dart';
import 'dart:math';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:charts_flutter/src/text_element.dart' as elements;
import 'package:charts_flutter/src/text_style.dart' as styles;

class LinearCharts extends StatelessWidget {
  const LinearCharts({Key? key}) : super(key: key);

  static String? pointerAmount;
  static String? pointerDay;

  @override
  Widget build(BuildContext context) {
    final data = [
      Expenses(0, 50),
      Expenses(1, 10),
      Expenses(2, 120),
      Expenses(3, 218),
      Expenses(4, 95),
      Expenses(5, 360),
      Expenses(6, 400),
      Expenses(7, 50),
      Expenses(8, 100),
      Expenses(9, 150),
      Expenses(10, 300),
      Expenses(11, 250),
      Expenses(12, 50),
      Expenses(13, 100),
      Expenses(14, 500),
    ];

    List<charts.Series<Expenses, int>> series = [
      charts.Series<Expenses, int>(
          seriesColor: charts.ColorUtil.fromDartColor(Colors.indigo),
          id: 'Lineal',
          domainFn: (v, i) => v.day,
          measureFn: (v, i) => v.expense,
          data: data)
    ];

    return Center(
        child: SizedBox(
      height: 350.0,
      child: charts.LineChart(
        series,
        selectionModels: [
          charts.SelectionModelConfig(
              changedListener: (charts.SelectionModel model) {
            if (model.hasDatumSelection) {
              pointerAmount = model.selectedSeries[0]
                  .measureFn(model.selectedDatum[0].index)
                  ?.toStringAsFixed(2);
              pointerDay = model.selectedSeries[0]
                  .domainFn(model.selectedDatum[0].index)
                  ?.toString();
            }
          })
        ],
        behaviors: [
          charts.LinePointHighlighter(symbolRenderer: MySymbolRenderer())
        ],
      ),
    ));
  }
}

class MySymbolRenderer extends charts.CircleSymbolRenderer {
  @override
  void paint(charts.ChartCanvas canvas, Rectangle<num> bounds,
      {List<int>? dashPattern,
      charts.Color? fillColor,
      charts.FillPatternType? fillPattern,
      charts.Color? strokeColor,
      double? strokeWidthPx}) {
    super.paint(canvas, bounds,
        dashPattern: dashPattern,
        fillColor: fillColor,
        fillPattern: fillPattern,
        strokeColor: strokeColor,
        strokeWidthPx: strokeWidthPx);
    canvas.drawRect(
        Rectangle(bounds.left - 25, bounds.top - 30, bounds.width + 48,
            bounds.height + 18),
        fill: charts.ColorUtil.fromDartColor(Colors.grey),
        stroke: charts.ColorUtil.fromDartColor(Colors.indigo),
        strokeWidthPx: 2);

    var myStyle = styles.TextStyle();
    myStyle..fontSize = 10;

    canvas.drawText(
        elements.TextElement(
          'Mes ${LinearCharts.pointerDay} \n ${LinearCharts.pointerAmount}',
          style: myStyle,
        ),
        (bounds.left - 20).round(),
        (bounds.top - 26).round());
  }
}

class Expenses {
  final int day;
  final double expense;

  Expenses(this.day, this.expense);
}
