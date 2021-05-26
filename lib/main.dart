import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(Envanter());
}

class Envanter extends StatelessWidget {
  const Envanter({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => MaterialApp(
          theme: ThemeData(
            textTheme: TextTheme(
              bodyText1:
                  ThemeData().textTheme.bodyText1.copyWith(fontSize: 16.sp),
              bodyText2:
                  ThemeData().textTheme.bodyText2.copyWith(fontSize: 14.sp),
              headline1:
                  ThemeData().textTheme.headline1.copyWith(fontSize: 96.sp),
              headline2:
                  ThemeData().textTheme.headline2.copyWith(fontSize: 60.sp),
              headline3:
                  ThemeData().textTheme.headline3.copyWith(fontSize: 48.sp),
              headline4:
                  ThemeData().textTheme.headline4.copyWith(fontSize: 34.sp),
              headline5:
                  ThemeData().textTheme.headline5.copyWith(fontSize: 24.sp),
              headline6:
                  ThemeData().textTheme.headline6.copyWith(fontSize: 20.sp),
              subtitle1:
                  ThemeData().textTheme.subtitle1.copyWith(fontSize: 16.sp),
              subtitle2:
                  ThemeData().textTheme.subtitle2.copyWith(fontSize: 14.sp),
              button: ThemeData().textTheme.button.copyWith(fontSize: 14.sp),
              caption: ThemeData().textTheme.caption.copyWith(fontSize: 12.sp),
              overline:
                  ThemeData().textTheme.overline.copyWith(fontSize: 10.sp),
            ),
          ),
          home: ResponsiveTextApp()),
    );
  }
}

class ResponsiveTextApp extends StatelessWidget {
  const ResponsiveTextApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AutoSizeGroup headlineGroup = AutoSizeGroup();
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "bodyText1",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                "bodyText2",
                style: Theme.of(context).textTheme.bodyText2,
              ),
              AutoSizeText(
                "headline1",
                group: headlineGroup,
                style: Theme.of(context).textTheme.headline1,
              ),
              AutoSizeText(
                "headline1 headline1",
                maxLines: 1,
                group: headlineGroup,
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                "headline2",
                style: Theme.of(context).textTheme.headline2,
              ),
              Text(
                "headline3",
                style: Theme.of(context).textTheme.headline3,
              ),
              Text(
                "headline4",
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(
                "headline5",
                style: Theme.of(context).textTheme.headline5,
              ),
              Text(
                "headline6",
                style: Theme.of(context).textTheme.headline6,
              ),
              Text(
                "subtitle1",
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Text(
                "subtitle2",
                style: Theme.of(context).textTheme.subtitle2,
              ),
              Text(
                "button",
                style: Theme.of(context).textTheme.button,
              ),
              Text(
                "caption",
                style: Theme.of(context).textTheme.caption,
              ),
              Text(
                "overline",
                style: Theme.of(context).textTheme.overline,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
