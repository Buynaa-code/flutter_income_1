import 'package:flutter/material.dart';
import 'package:gankhuyag_s_application1/presentation/splash_screen/splash_screen.dart';
import 'package:gankhuyag_s_application1/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:gankhuyag_s_application1/presentation/register_screen/register_screen.dart';
import 'package:gankhuyag_s_application1/presentation/login_screen/login_screen.dart';
import 'package:gankhuyag_s_application1/presentation/wallet_container_screen/wallet_container_screen.dart';
import 'package:gankhuyag_s_application1/presentation/connect_wallet_tab_container_screen/connect_wallet_tab_container_screen.dart';
import 'package:gankhuyag_s_application1/presentation/add_expense_screen/add_expense_screen.dart';
import 'package:gankhuyag_s_application1/presentation/bill_details_screen/bill_details_screen.dart';
import 'package:gankhuyag_s_application1/presentation/bill_payment_one_screen/bill_payment_one_screen.dart';
import 'package:gankhuyag_s_application1/presentation/bill_payment_screen/bill_payment_screen.dart';
import 'package:gankhuyag_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onboardingScreen = '/onboarding_screen';

  static const String registerScreen = '/register_screen';

  static const String loginScreen = '/login_screen';

  static const String walletOnePage = '/wallet_one_page';

  static const String walletPage = '/wallet_page';

  static const String walletTabContainerPage = '/wallet_tab_container_page';

  static const String walletContainerScreen = '/wallet_container_screen';

  static const String connectWalletPage = '/connect_wallet_page';

  static const String connectWalletTabContainerScreen =
      '/connect_wallet_tab_container_screen';

  static const String connectWalletOnePage = '/connect_wallet_one_page';

  static const String addExpenseScreen = '/add_expense_screen';

  static const String billDetailsScreen = '/bill_details_screen';

  static const String billPaymentOneScreen = '/bill_payment_one_screen';

  static const String billPaymentScreen = '/bill_payment_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    onboardingScreen: (context) => OnboardingScreen(),
    registerScreen: (context) => RegisterScreen(),
    loginScreen: (context) => LoginScreen(),
    walletContainerScreen: (context) => WalletContainerScreen(),
    connectWalletTabContainerScreen: (context) =>
        ConnectWalletTabContainerScreen(),
    addExpenseScreen: (context) => AddExpenseScreen(),
    billDetailsScreen: (context) => BillDetailsScreen(),
    billPaymentOneScreen: (context) => BillPaymentOneScreen(),
    billPaymentScreen: (context) => BillPaymentScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
