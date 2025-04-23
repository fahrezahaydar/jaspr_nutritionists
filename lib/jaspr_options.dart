// dart format off
// ignore_for_file: type=lint

// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/jaspr.dart';
import 'package:nutritionists/components/counter.dart' as prefix0;
import 'package:nutritionists/layout/header.dart' as prefix1;
import 'package:nutritionists/pages/about.dart' as prefix2;
import 'package:nutritionists/pages/home.dart' as prefix3;

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
    prefix1.Header: ClientTarget<prefix1.Header>('layout/header'),

    prefix2.About: ClientTarget<prefix2.About>('pages/about'),

    prefix3.Home: ClientTarget<prefix3.Home>('pages/home'),
  },
  styles: () => [...prefix0.Counter.styles],
);
