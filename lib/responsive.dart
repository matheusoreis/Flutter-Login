import 'package:flutter/material.dart';

// Mobile
bool isMobile(BuildContext context) => MediaQuery.of(context).size.width < 750;

// Desktop
bool isDesktop(BuildContext context) =>
    MediaQuery.of(context).size.width >= 750;
