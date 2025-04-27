// dart format off
// ignore_for_file: type=lint

// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/jaspr.dart';
import 'package:nutritionists/pages/about.dart' as prefix0;
import 'package:nutritionists/pages/blog.dart' as prefix1;
import 'package:nutritionists/pages/contact.dart' as prefix2;
import 'package:nutritionists/pages/home.dart' as prefix3;
import 'package:nutritionists/pages/process.dart' as prefix4;
import 'package:nutritionists/pages/team.dart' as prefix5;

/// Default [JasprOptions] for use with your jaspr project.
///
/// Use this to initialize jaspr **before** calling [runApp].
///
/// Example:
/// ```dart
/// import 'jaspr_options.dart';
///
/// void main() {
///   Jaspr.initializeApp(
///     options: defaultJasprOptions,
///   );
///
///   runApp(...);
/// }
/// ```
final defaultJasprOptions = JasprOptions(
  clients: {
    prefix0.About: ClientTarget<prefix0.About>('pages/about'),

    prefix1.Blog: ClientTarget<prefix1.Blog>('pages/blog'),

    prefix2.ContactUs: ClientTarget<prefix2.ContactUs>('pages/contact'),

    prefix3.Home: ClientTarget<prefix3.Home>('pages/home'),

    prefix4.Process: ClientTarget<prefix4.Process>('pages/process'),

    prefix5.Team: ClientTarget<prefix5.Team>('pages/team'),
  },
);
