import 'package:flutter/material.dart';

screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
screenHeight(BuildContext context) => MediaQuery.of(context).size.height;
Future navigateTo(String routeName, BuildContext context) =>
    Navigator.of(context).pushNamed(routeName);
void navigateBack(BuildContext context) => Navigator.of(context).pop();
