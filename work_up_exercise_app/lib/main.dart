import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'auth/firebase_auth/firebase_user_provider.dart';
import 'auth/firebase_auth/auth_util.dart';

import 'backend/firebase/firebase_config.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/internationalization.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'index.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GoRouter.optionURLReflectsImperativeAPIs = true;
  usePathUrlStrategy();
  await initFirebase();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;
  ThemeMode _themeMode = ThemeMode.system;

  late Stream<BaseAuthUser> userStream;

  late AppStateNotifier _appStateNotifier;
  late GoRouter _router;

  final authUserSub = authenticatedUserStream.listen((_) {});

  @override
  void initState() {
    super.initState();

    _appStateNotifier = AppStateNotifier.instance;
    _router = createRouter(_appStateNotifier);
    userStream = workUpExerciseAppFirebaseUserStream()
      ..listen((user) => _appStateNotifier.update(user));
    jwtTokenStream.listen((_) {});
    Future.delayed(
      const Duration(milliseconds: 1000),
      () => _appStateNotifier.stopShowingSplashImage(),
    );
  }

  @override
  void dispose() {
    authUserSub.cancel();

    super.dispose();
  }

  void setLocale(String language) {
    setState(() => _locale = createLocale(language));
  }

  void setThemeMode(ThemeMode mode) => setState(() {
        _themeMode = mode;
      });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'WorkUpExerciseApp',
      localizationsDelegates: const [
        FFLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: _locale,
      supportedLocales: const [
        Locale('en'),
      ],
      theme: ThemeData(
        brightness: Brightness.light,
        useMaterial3: false,
      ),
      themeMode: _themeMode,
      routerConfig: _router,
    );
  }
}

class NavBarPage extends StatefulWidget {
  const NavBarPage({super.key, this.initialPage, this.page});

  final String? initialPage;
  final Widget? page;

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

/// This is the private State class that goes with NavBarPage.
class _NavBarPageState extends State<NavBarPage> {
  String _currentPageName = 'ProfilePage';
  late Widget? _currentPage;

  @override
  void initState() {
    super.initState();
    _currentPageName = widget.initialPage ?? _currentPageName;
    _currentPage = widget.page;
  }

  @override
  Widget build(BuildContext context) {
    final tabs = {
      'ExerciesPage': const ExerciesPageWidget(),
      'LearningPage': const LearningPageWidget(),
      'RoutinesPage': const RoutinesPageWidget(),
      'ProfilePage': const ProfilePageWidget(),
    };
    final currentIndex = tabs.keys.toList().indexOf(_currentPageName);

    final MediaQueryData queryData = MediaQuery.of(context);

    return Scaffold(
      body: MediaQuery(
          data: queryData
              .removeViewInsets(removeBottom: true)
              .removeViewPadding(removeBottom: true),
          child: _currentPage ?? tabs[_currentPageName]!),
      extendBody: true,
      bottomNavigationBar: Visibility(
        visible: responsiveVisibility(
          context: context,
          tablet: false,
          tabletLandscape: false,
          desktop: false,
        ),
        child: FloatingNavbar(
          currentIndex: currentIndex,
          onTap: (i) => setState(() {
            _currentPage = null;
            _currentPageName = tabs.keys.toList()[i];
          }),
          backgroundColor: FlutterFlowTheme.of(context).secondaryText,
          selectedItemColor: FlutterFlowTheme.of(context).tertiary,
          unselectedItemColor: FlutterFlowTheme.of(context).primaryBackground,
          selectedBackgroundColor: const Color(0x00000000),
          borderRadius: 8.0,
          itemBorderRadius: 8.0,
          margin: const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
          width: double.infinity,
          elevation: 0.0,
          items: [
            FloatingNavbarItem(
              customWidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    FontAwesomeIcons.dumbbell,
                    color: currentIndex == 0
                        ? FlutterFlowTheme.of(context).tertiary
                        : FlutterFlowTheme.of(context).primaryBackground,
                    size: 24.0,
                  ),
                  Text(
                    'Exercises',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: currentIndex == 0
                          ? FlutterFlowTheme.of(context).tertiary
                          : FlutterFlowTheme.of(context).primaryBackground,
                      fontSize: 11.0,
                    ),
                  ),
                ],
              ),
            ),
            FloatingNavbarItem(
              customWidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.school,
                    color: currentIndex == 1
                        ? FlutterFlowTheme.of(context).tertiary
                        : FlutterFlowTheme.of(context).primaryBackground,
                    size: 24.0,
                  ),
                  Text(
                    'Learn',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: currentIndex == 1
                          ? FlutterFlowTheme.of(context).tertiary
                          : FlutterFlowTheme.of(context).primaryBackground,
                      fontSize: 11.0,
                    ),
                  ),
                ],
              ),
            ),
            FloatingNavbarItem(
              customWidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.format_list_bulleted,
                    color: currentIndex == 2
                        ? FlutterFlowTheme.of(context).tertiary
                        : FlutterFlowTheme.of(context).primaryBackground,
                    size: 24.0,
                  ),
                  Text(
                    'Routines',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: currentIndex == 2
                          ? FlutterFlowTheme.of(context).tertiary
                          : FlutterFlowTheme.of(context).primaryBackground,
                      fontSize: 11.0,
                    ),
                  ),
                ],
              ),
            ),
            FloatingNavbarItem(
              customWidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person,
                    color: currentIndex == 3
                        ? FlutterFlowTheme.of(context).tertiary
                        : FlutterFlowTheme.of(context).primaryBackground,
                    size: 24.0,
                  ),
                  Text(
                    'Profile',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: currentIndex == 3
                          ? FlutterFlowTheme.of(context).tertiary
                          : FlutterFlowTheme.of(context).primaryBackground,
                      fontSize: 11.0,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
