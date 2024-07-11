// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `LOGO`
  String get logo {
    return Intl.message(
      'LOGO',
      name: 'logo',
      desc: '',
      args: [],
    );
  }

  /// `LG Electronics StanbyME 27ART10AKPL (Stand)`
  String get prod_1_title {
    return Intl.message(
      'LG Electronics StanbyME 27ART10AKPL (Stand)',
      name: 'prod_1_title',
      desc: '',
      args: [],
    );
  }

  /// `LG Electronics Ultra HD 75UP8300KNA (Stand)`
  String get prod_2_title {
    return Intl.message(
      'LG Electronics Ultra HD 75UP8300KNA (Stand)',
      name: 'prod_2_title',
      desc: '',
      args: [],
    );
  }

  /// `LikeMe Smart DS4001L NETRANGE (Stand) GX30K WIN10 (SSD 256GB)`
  String get prod_3_title {
    return Intl.message(
      'LikeMe Smart DS4001L NETRANGE (Stand) GX30K WIN10 (SSD 256GB)',
      name: 'prod_3_title',
      desc: '',
      args: [],
    );
  }

  /// `AMD Ryzen 5 5600X Vermeer Genuine Multipack`
  String get prod_4_title {
    return Intl.message(
      'AMD Ryzen 5 5600X Vermeer Genuine Multipack',
      name: 'prod_4_title',
      desc: '',
      args: [],
    );
  }

  /// `I liked that the screen can be moved and switched conveniently. The delivery was fast and friendly, which was great.`
  String get prod_1_feature_1 {
    return Intl.message(
      'I liked that the screen can be moved and switched conveniently. The delivery was fast and friendly, which was great.',
      name: 'prod_1_feature_1',
      desc: '',
      args: [],
    );
  }

  /// `StanbyME is love!`
  String get prod_1_feature_2 {
    return Intl.message(
      'StanbyME is love!',
      name: 'prod_1_feature_2',
      desc: '',
      args: [],
    );
  }

  /// `The screen works well... The remote control functions are good.`
  String get prod_2_feature_1 {
    return Intl.message(
      'The screen works well... The remote control functions are good.',
      name: 'prod_2_feature_1',
      desc: '',
      args: [],
    );
  }

  /// `You can access Netflix, Amazon, etc. with just one button. The display seems to have no LCD issues, and although the sound is slightly weak, I plan to buy Bluetooth headphones, so there's no problem. Very satisfied!`
  String get prod_2_feature_2 {
    return Intl.message(
      'You can access Netflix, Amazon, etc. with just one button. The display seems to have no LCD issues, and although the sound is slightly weak, I plan to buy Bluetooth headphones, so there\'s no problem. Very satisfied!',
      name: 'prod_2_feature_2',
      desc: '',
      args: [],
    );
  }

  /// `Not only does it meet expectations, but the performance at this price point is more than enough.`
  String get prod_3_feature_1 {
    return Intl.message(
      'Not only does it meet expectations, but the performance at this price point is more than enough.',
      name: 'prod_3_feature_1',
      desc: '',
      args: [],
    );
  }

  /// `I used the LikeMe product from a small business, and I was very pleased with its excellent cost performance and the ability to use functions like OTT service and open browser.`
  String get prod_3_feature_2 {
    return Intl.message(
      'I used the LikeMe product from a small business, and I was very pleased with its excellent cost performance and the ability to use functions like OTT service and open browser.',
      name: 'prod_3_feature_2',
      desc: '',
      args: [],
    );
  }

  /// `LG Electronics`
  String get prod_1_tag_1 {
    return Intl.message(
      'LG Electronics',
      name: 'prod_1_tag_1',
      desc: '',
      args: [],
    );
  }

  /// `Convenience`
  String get prod_1_tag_2 {
    return Intl.message(
      'Convenience',
      name: 'prod_1_tag_2',
      desc: '',
      args: [],
    );
  }

  /// `LG Electronics`
  String get prod_2_tag_1 {
    return Intl.message(
      'LG Electronics',
      name: 'prod_2_tag_1',
      desc: '',
      args: [],
    );
  }

  /// `High Definition`
  String get prod_2_tag_2 {
    return Intl.message(
      'High Definition',
      name: 'prod_2_tag_2',
      desc: '',
      args: [],
    );
  }

  /// `LikeMe`
  String get prod_3_tag_1 {
    return Intl.message(
      'LikeMe',
      name: 'prod_3_tag_1',
      desc: '',
      args: [],
    );
  }

  /// `Cost Performance`
  String get prod_3_tag_2 {
    return Intl.message(
      'Cost Performance',
      name: 'prod_3_tag_2',
      desc: '',
      args: [],
    );
  }

  /// `Affordable price`
  String get prod_4_com_1 {
    return Intl.message(
      'Affordable price',
      name: 'prod_4_com_1',
      desc: '',
      args: [],
    );
  }

  /// `High CPU temperature`
  String get prod_4_com_2 {
    return Intl.message(
      'High CPU temperature',
      name: 'prod_4_com_2',
      desc: '',
      args: [],
    );
  }

  /// `Thermal work possible`
  String get prod_4_com_3 {
    return Intl.message(
      'Thermal work possible',
      name: 'prod_4_com_3',
      desc: '',
      args: [],
    );
  }

  /// `Games run well`
  String get prod_4_com_4 {
    return Intl.message(
      'Games run well',
      name: 'prod_4_com_4',
      desc: '',
      args: [],
    );
  }

  /// `Low heat generation`
  String get prod_4_com_5 {
    return Intl.message(
      'Low heat generation',
      name: 'prod_4_com_5',
      desc: '',
      args: [],
    );
  }

  /// `Multitasking works well, quite satisfactory. It seems to be a product I can recommend to our customers.`
  String get prod_4_pro {
    return Intl.message(
      'Multitasking works well, quite satisfactory. It seems to be a product I can recommend to our customers.',
      name: 'prod_4_pro',
      desc: '',
      args: [],
    );
  }

  /// `There is a slight noticeable difference after switching from 3600. It's not a dramatic change.`
  String get prod_4_con {
    return Intl.message(
      'There is a slight noticeable difference after switching from 3600. It\'s not a dramatic change.',
      name: 'prod_4_con',
      desc: '',
      args: [],
    );
  }

  /// `Gold Rank Users`
  String get top_reviewers_title {
    return Intl.message(
      'Gold Rank Users',
      name: 'top_reviewers_title',
      desc: '',
      args: [],
    );
  }

  /// `Best Reviewers 🏆 Top 10`
  String get top_reviewers_subtitle {
    return Intl.message(
      'Best Reviewers 🏆 Top 10',
      name: 'top_reviewers_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Check Out the Hottest Reviews`
  String get top_products_title {
    return Intl.message(
      'Check Out the Hottest Reviews',
      name: 'top_products_title',
      desc: '',
      args: [],
    );
  }

  /// `Review Ranking ⭐ Top 3`
  String get top_products_subtitle {
    return Intl.message(
      'Review Ranking ⭐ Top 3',
      name: 'top_products_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `LOGO Inc.`
  String get footer_logo_inc {
    return Intl.message(
      'LOGO Inc.',
      name: 'footer_logo_inc',
      desc: '',
      args: [],
    );
  }

  /// `About Us`
  String get footer_tap_1 {
    return Intl.message(
      'About Us',
      name: 'footer_tap_1',
      desc: '',
      args: [],
    );
  }

  /// `Careers`
  String get footer_tap_2 {
    return Intl.message(
      'Careers',
      name: 'footer_tap_2',
      desc: '',
      args: [],
    );
  }

  /// `Blog`
  String get footer_tap_3 {
    return Intl.message(
      'Blog',
      name: 'footer_tap_3',
      desc: '',
      args: [],
    );
  }

  /// `Review`
  String get footer_tap_4 {
    return Intl.message(
      'Review',
      name: 'footer_tap_4',
      desc: '',
      args: [],
    );
  }

  /// `Enter search term`
  String get search_hint {
    return Intl.message(
      'Enter search term',
      name: 'search_hint',
      desc: '',
      args: [],
    );
  }

  /// `@2022-2022 LOGO Lab, Inc. (Company Name) Gangnam-gu, Seoul`
  String get footer_copyright {
    return Intl.message(
      '@2022-2022 LOGO Lab, Inc. (Company Name) Gangnam-gu, Seoul',
      name: 'footer_copyright',
      desc: '',
      args: [],
    );
  }

  /// `Ranked 1st`
  String get review_page_title {
    return Intl.message(
      'Ranked 1st',
      name: 'review_page_title',
      desc: '',
      args: [],
    );
  }

  /// `Best Reviewer`
  String get review_page_subtitle {
    return Intl.message(
      'Best Reviewer',
      name: 'review_page_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Gold`
  String get gold {
    return Intl.message(
      'Gold',
      name: 'gold',
      desc: '',
      args: [],
    );
  }

  /// `Latest`
  String get latest {
    return Intl.message(
      'Latest',
      name: 'latest',
      desc: '',
      args: [],
    );
  }

  /// `Total {total}`
  String total(Object total) {
    return Intl.message(
      'Total $total',
      name: 'total',
      desc: '',
      args: [total],
    );
  }

  /// `Written Review`
  String get written_review {
    return Intl.message(
      'Written Review',
      name: 'written_review',
      desc: '',
      args: [],
    );
  }

  /// `Leave a comment..`
  String get leave_comment {
    return Intl.message(
      'Leave a comment..',
      name: 'leave_comment',
      desc: '',
      args: [],
    );
  }

  /// `I run an assembly PC business and write reviews.`
  String get user_desc {
    return Intl.message(
      'I run an assembly PC business and write reviews.',
      name: 'user_desc',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ko'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
