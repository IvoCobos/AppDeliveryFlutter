import 'package:flutter/cupertino.dart';

import 'package:delivery_app/src/features/presentation/welcome_page/view/welcome_page.dart';
import 'package:delivery_app/src/features/presentation/login_page/view/login_page.dart';
import 'package:delivery_app/src/pages/forgot_password.dart';
import 'package:delivery_app/src/features/presentation/sign_up_page/view/sign_up_page.dart';
import 'package:delivery_app/src/tabs/tabs_page.dart';

final routes = <String, WidgetBuilder> {
  'welcome' : (BuildContext context) => WelcomePage(),
  'login' : (BuildContext context) => LoginPage(),
  'forgot-password': (BuildContext context) => ForgotPassword(),
  'sign-up': (BuildContext context) => SignUpPage(),
  'tabs': (BuildContext context) => TabsPage()
};