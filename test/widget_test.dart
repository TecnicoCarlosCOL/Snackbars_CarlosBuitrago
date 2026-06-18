import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:snackbar_demo/main.dart';

void main() {
  testWidgets('App carga correctamente', (WidgetTester tester) async {
    await tester.pumpWidget(const SnackbarDemoApp());

    expect(find.text('07 · Snackbars en Flutter'), findsOneWidget);
    expect(find.text('Carlos Eduardo Buitrago Vargas'), findsOneWidget);
  });
}