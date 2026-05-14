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
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
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
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Sign In`
  String get signInText {
    return Intl.message('Sign In', name: 'signInText', desc: '', args: []);
  }

  /// `Login`
  String get signText {
    return Intl.message('Login', name: 'signText', desc: '', args: []);
  }

  /// `Create Account`
  String get createAccount {
    return Intl.message(
      'Create Account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get emailText {
    return Intl.message('Email', name: 'emailText', desc: '', args: []);
  }

  /// `Full Name`
  String get fullNameText {
    return Intl.message('Full Name', name: 'fullNameText', desc: '', args: []);
  }

  /// `example@gmail.com`
  String get emailExText {
    return Intl.message(
      'example@gmail.com',
      name: 'emailExText',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get passWordText {
    return Intl.message('Password', name: 'passWordText', desc: '', args: []);
  }

  /// `Confirm Password`
  String get confirmPassWordText {
    return Intl.message(
      'Confirm Password',
      name: 'confirmPassWordText',
      desc: '',
      args: [],
    );
  }

  /// `********`
  String get passwordHint {
    return Intl.message('********', name: 'passwordHint', desc: '', args: []);
  }

  /// `Enter your full name`
  String get fullNameHint {
    return Intl.message(
      'Enter your full name',
      name: 'fullNameHint',
      desc: '',
      args: [],
    );
  }

  /// `Did you forget your password?`
  String get youForgetPassword {
    return Intl.message(
      'Did you forget your password?',
      name: 'youForgetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password`
  String get forgetPassword {
    return Intl.message(
      'Forgot Password',
      name: 'forgetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Register Now`
  String get registerNow {
    return Intl.message(
      'Register Now',
      name: 'registerNow',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get noHaveAccount {
    return Intl.message(
      'Don\'t have an account?',
      name: 'noHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get haveAccount {
    return Intl.message(
      'Already have an account?',
      name: 'haveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Send Password Reset Link`
  String get sendResetLink {
    return Intl.message(
      'Send Password Reset Link',
      name: 'sendResetLink',
      desc: '',
      args: [],
    );
  }

  /// `Back to Login`
  String get backToLogin {
    return Intl.message(
      'Back to Login',
      name: 'backToLogin',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get homeScreen {
    return Intl.message('Home', name: 'homeScreen', desc: '', args: []);
  }

  /// `Sign Out`
  String get signOut {
    return Intl.message('Sign Out', name: 'signOut', desc: '', args: []);
  }

  /// `Edit`
  String get edit {
    return Intl.message('Edit', name: 'edit', desc: '', args: []);
  }

  /// `Delete`
  String get delete {
    return Intl.message('Delete', name: 'delete', desc: '', args: []);
  }

  /// `Camera`
  String get camera {
    return Intl.message('Camera', name: 'camera', desc: '', args: []);
  }

  /// `Gallery`
  String get gallery {
    return Intl.message('Gallery', name: 'gallery', desc: '', args: []);
  }

  /// `Modify`
  String get modifyText {
    return Intl.message('Modify', name: 'modifyText', desc: '', args: []);
  }

  /// `Add New Customer`
  String get addNewCustomer {
    return Intl.message(
      'Add New Customer',
      name: 'addNewCustomer',
      desc: '',
      args: [],
    );
  }

  /// `Enter customer's full name`
  String get customerNameHint {
    return Intl.message(
      'Enter customer\'s full name',
      name: 'customerNameHint',
      desc: '',
      args: [],
    );
  }

  /// `Customer Phone`
  String get customerPhoneLabel {
    return Intl.message(
      'Customer Phone',
      name: 'customerPhoneLabel',
      desc: '',
      args: [],
    );
  }

  /// `01xxxxxxxxx`
  String get customerPhoneHint {
    return Intl.message(
      '01xxxxxxxxx',
      name: 'customerPhoneHint',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get dateAddedLabel {
    return Intl.message('Date', name: 'dateAddedLabel', desc: '', args: []);
  }

  /// `Choose Date`
  String get dateAddedHint {
    return Intl.message(
      'Choose Date',
      name: 'dateAddedHint',
      desc: '',
      args: [],
    );
  }

  /// `Add Customer`
  String get addCustomer {
    return Intl.message(
      'Add Customer',
      name: 'addCustomer',
      desc: '',
      args: [],
    );
  }

  /// `Update Customer Information`
  String get updateCustomer {
    return Intl.message(
      'Update Customer Information',
      name: 'updateCustomer',
      desc: '',
      args: [],
    );
  }

  /// `Choose Date Added`
  String get chooseDateAdding {
    return Intl.message(
      'Choose Date Added',
      name: 'chooseDateAdding',
      desc: '',
      args: [],
    );
  }

  /// `Customer Name`
  String get nameCustomer {
    return Intl.message(
      'Customer Name',
      name: 'nameCustomer',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get phoneNumber {
    return Intl.message(
      'Phone Number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Search Customer`
  String get searchCustomer {
    return Intl.message(
      'Search Customer',
      name: 'searchCustomer',
      desc: '',
      args: [],
    );
  }

  /// `No matching results found`
  String get noResult {
    return Intl.message(
      'No matching results found',
      name: 'noResult',
      desc: '',
      args: [],
    );
  }

  /// `Customer Details`
  String get detailsCustomer {
    return Intl.message(
      'Customer Details',
      name: 'detailsCustomer',
      desc: '',
      args: [],
    );
  }

  /// `Debts`
  String get debts {
    return Intl.message('Debts', name: 'debts', desc: '', args: []);
  }

  /// `Item Name`
  String get itemName {
    return Intl.message('Item Name', name: 'itemName', desc: '', args: []);
  }

  /// `Item Price`
  String get itemPrice {
    return Intl.message('Item Price', name: 'itemPrice', desc: '', args: []);
  }

  /// `Quantity`
  String get quantity {
    return Intl.message('Quantity', name: 'quantity', desc: '', args: []);
  }

  /// `Total Amount`
  String get totalAmount {
    return Intl.message(
      'Total Amount',
      name: 'totalAmount',
      desc: '',
      args: [],
    );
  }

  /// `Total Discount`
  String get totalDiscount {
    return Intl.message(
      'Total Discount',
      name: 'totalDiscount',
      desc: '',
      args: [],
    );
  }

  /// `Discount`
  String get discount {
    return Intl.message('Discount', name: 'discount', desc: '', args: []);
  }

  /// `Error`
  String get error {
    return Intl.message('Error', name: 'error', desc: '', args: []);
  }

  /// `OK`
  String get ok {
    return Intl.message('OK', name: 'ok', desc: '', args: []);
  }

  /// `Cancel`
  String get cancel {
    return Intl.message('Cancel', name: 'cancel', desc: '', args: []);
  }

  /// `Payment`
  String get payment {
    return Intl.message('Payment', name: 'payment', desc: '', args: []);
  }

  /// `Remove`
  String get remove {
    return Intl.message('Remove', name: 'remove', desc: '', args: []);
  }

  /// `Enter discount value`
  String get discountHint {
    return Intl.message(
      'Enter discount value',
      name: 'discountHint',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message('Confirm', name: 'confirm', desc: '', args: []);
  }

  /// `View Paid Debts`
  String get watchDebt {
    return Intl.message(
      'View Paid Debts',
      name: 'watchDebt',
      desc: '',
      args: [],
    );
  }

  /// `Add Debt`
  String get addDebt {
    return Intl.message('Add Debt', name: 'addDebt', desc: '', args: []);
  }

  /// `Add New Debt`
  String get addNewDebt {
    return Intl.message('Add New Debt', name: 'addNewDebt', desc: '', args: []);
  }

  /// `Paid Debts`
  String get paidDebt {
    return Intl.message('Paid Debts', name: 'paidDebt', desc: '', args: []);
  }

  /// `!Debt has been fully paid successfully`
  String get successPaidDebt {
    return Intl.message(
      '!Debt has been fully paid successfully',
      name: 'successPaidDebt',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get total {
    return Intl.message('Total', name: 'total', desc: '', args: []);
  }

  /// `Price`
  String get price {
    return Intl.message('Price', name: 'price', desc: '', args: []);
  }

  /// `No customers available currently`
  String get noCustomers {
    return Intl.message(
      'No customers available currently',
      name: 'noCustomers',
      desc: '',
      args: [],
    );
  }

  /// `This field is required`
  String get fieldIsRequired {
    return Intl.message(
      'This field is required',
      name: 'fieldIsRequired',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email or password`
  String get invalidEmailOrPassword {
    return Intl.message(
      'Invalid email or password',
      name: 'invalidEmailOrPassword',
      desc: '',
      args: [],
    );
  }

  /// `Must include at least one lowercase letter [a-z]`
  String get passwordFromAtoZ {
    return Intl.message(
      'Must include at least one lowercase letter [a-z]',
      name: 'passwordFromAtoZ',
      desc: '',
      args: [],
    );
  }

  /// `Must include at least one special character`
  String get passwordSpicailCharacter {
    return Intl.message(
      'Must include at least one special character',
      name: 'passwordSpicailCharacter',
      desc: '',
      args: [],
    );
  }

  /// `Must include at least one number`
  String get passwordLeastNumber {
    return Intl.message(
      'Must include at least one number',
      name: 'passwordLeastNumber',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 8 characters`
  String get passwordLeastAt8Number {
    return Intl.message(
      'Password must be at least 8 characters',
      name: 'passwordLeastAt8Number',
      desc: '',
      args: [],
    );
  }

  /// `Please select your date of birth`
  String get pleaseSelectDataOfBrith {
    return Intl.message(
      'Please select your date of birth',
      name: 'pleaseSelectDataOfBrith',
      desc: '',
      args: [],
    );
  }

  /// `Phone number is too short`
  String get phoneTooShort {
    return Intl.message(
      'Phone number is too short',
      name: 'phoneTooShort',
      desc: '',
      args: [],
    );
  }

  /// `Please enter numbers only`
  String get invalidPhoneFormat {
    return Intl.message(
      'Please enter numbers only',
      name: 'invalidPhoneFormat',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your phone number`
  String get requiredPhone {
    return Intl.message(
      'Please enter your phone number',
      name: 'requiredPhone',
      desc: '',
      args: [],
    );
  }

  /// `Full name must be 3 words`
  String get invalidFullName {
    return Intl.message(
      'Full name must be 3 words',
      name: 'invalidFullName',
      desc: '',
      args: [],
    );
  }

  /// `Passwords do not match`
  String get passwordsNotMatch {
    return Intl.message(
      'Passwords do not match',
      name: 'passwordsNotMatch',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid number only`
  String get pleaseEnterNumber {
    return Intl.message(
      'Please enter a valid number only',
      name: 'pleaseEnterNumber',
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
      Locale.fromSubtags(languageCode: 'ar'),
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
