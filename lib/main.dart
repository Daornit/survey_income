import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;
import 'package:flutter/foundation.dart';

import 'package:surveyincome/components/custom_layout.dart';

import 'package:surveyincome/routes/survey.dart';
import 'package:surveyincome/routes/home.dart';
import 'package:surveyincome/routes/search.dart';
import 'package:surveyincome/routes/account.dart';
import 'package:surveyincome/routes/add-survey.dart';
import 'package:surveyincome/routes/how-to.dart';

void main() {
  if (!kIsWeb) _setTargetPlatformForDesktop();
  runApp(
    MaterialApp(
      title: 'Navigation Basics',
      initialRoute: '/',
      routes: {
        '/': (context) => CustomLayout(child: HomeRoute()),
        '/survey': (context) => CustomLayout(child: SurveyRoute()),
        '/search': (context) => CustomLayout(child: SearchRoute()),
        '/add-survey': (context) => CustomLayout(child: AddSurveyRoute()),
        '/how-to': (context) => CustomLayout(child: HowTo()),
        '/account': (context) => CustomLayout(child: AccountRoute()),
      },
    ),
  );
}

void _setTargetPlatformForDesktop() {
  TargetPlatform targetPlatform;
  if (Platform.isMacOS) {
    targetPlatform = TargetPlatform.iOS;
  } else if (Platform.isLinux || Platform.isWindows) {
    targetPlatform = TargetPlatform.android;
  }
  if (targetPlatform != null) {
    debugDefaultTargetPlatformOverride = targetPlatform;
  }
}
