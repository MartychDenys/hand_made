import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hand_made/core/providers/route/router_delegate_provider.dart';
import 'package:hand_made/core/providers/route/router_information_parser_impl.dart';
import 'package:hand_made/core/providers/route/segment.dart';
import 'package:hand_made/core/theme/provider/theme_provider.dart';
import 'package:hand_made/features/auth/presentation/widgets/custom_elevated_button.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var path = Directory.current.path;
  Hive.init(path);
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeStpod);

    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      themeMode: theme,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      routerDelegate: ref.read(routerDelegateProvider),
      routeInformationParser: RouteInformationParserImpl(),
    );
  }
}

class Home extends ConsumerWidget {
  const Home(this.segment, {Key? key}) : super(key: key);

  final HomeSegment segment;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomElevatedButton(
              buttonText: 'Authorize',
              onPressed: () {
                ref
                    .read(routerDelegateProvider)
                    .navigate([HomeSegment(), AuthSegment()]);
              },
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:hand_made/core/providers/route/router_delegate_provider.dart';
// import 'package:hand_made/core/providers/route/router_information_parser_impl.dart';
// import 'package:hand_made/core/providers/route/segment.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// //*********************************************
// //*********************************************
// //
// //  How to easily connect riverpod provider (navigationStackProvider)
// //  with Flutter Navigator 2.0 RouterDelegate.
// //
// //*********************************************
// //*********************************************

// //*********************************************
// // APP entry point
// //*********************************************

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   runApp(
//     const ProviderScope(
//       child: App(),
//     ),
//   );
// }

// //*********************************************
// // App root
// //*********************************************
// class App extends ConsumerWidget {
//   const App({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context, WidgetRef ref) => MaterialApp.router(
//         title: 'Riverpod Navigator Example',
//         routerDelegate: ref.read(routerDelegateProvider),
//         routeInformationParser: RouteInformationParserImpl(),
//         debugShowCheckedModeBanner: false,
//       );
// }

// //*********************************************
// // Widgets
// //*********************************************

// class HomeScreen extends ConsumerWidget {
//   const HomeScreen(this.segment, {Key? key}) : super(key: key);

//   final HomeSegment segment;

//   @override
//   Widget build(BuildContext context, WidgetRef ref) => Scaffold(
//         appBar: AppBar(
//           title: const Text('Riverpod App Home'),
//         ),
//         body: Center(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               for (var i = 1; i < 4; i++) ...[
//                 const SizedBox(height: 30),
//                 ElevatedButton(
//                   onPressed: () => ref.read(routerDelegateProvider).navigate([
//                     HomeSegment(),
//                     BookSegment(id: i),
//                     if (i > 1) BookSegment(id: 10 + i),
//                     if (i > 2) AuthSegment(),
//                   ]),
//                   child: Text(
//                       'Go to Book: [$i${i > 1 ? ', 1$i' : ''}${i > 2 ? ', 10$i' : ''}]'),
//                 ),
//               ],
//               ElevatedButton(
//                 onPressed: () => ref
//                     .read(routerDelegateProvider)
//                     .navigate([HomeSegment(), AuthSegment()]),
//                 child: const Text('Go to Auth:'),
//               ),
//             ],
//           ),
//         ),
//       );
// }

// class BookScreen extends ConsumerWidget {
//   const BookScreen(this.segment, {Key? key}) : super(key: key);

//   final BookSegment segment;

//   @override
//   Widget build(BuildContext context, WidgetRef ref) => WillPopScope(
//         onWillPop: () async {
//           // ref.read(routerDelegateProvider).navigate(
//           //   [
//           //     HomeSegment(),
//           //   ],
//           // );
//           return true;
//         },
//         child: Scaffold(
//           appBar: AppBar(
//             title: Text('Book ${segment.id}'),
//           ),
//           body: Center(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 const SizedBox(height: 30),
//                 ElevatedButton(
//                   onPressed: () => ref
//                       .read(routerDelegateProvider)
//                       .navigate([HomeSegment()]),
//                   child: const Text('Go to home'),
//                 ),
//                 ElevatedButton(
//                   onPressed: () => ref
//                       .read(routerDelegateProvider)
//                       .navigate([HomeSegment(), AuthSegment()]),
//                   child: const Text('Go to auth'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       );
// }

// class Auth extends ConsumerWidget {
//   const Auth(this.segment, {Key? key}) : super(key: key);
//   final AuthSegment segment;

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Auth'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('AUTH'),
//           ],
//         ),
//       ),
//     );
//   }
// }
// // https://gist.github.com/PavelPZ/970ba56347a19d86ccafeb551b013fd3
// // https://dartpad.dev/?id=970ba56347a19d86ccafeb551b013fd3






// class App extends ConsumerWidget {
//   const App({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final theme = ref.watch(themeStpod);
//     final navigatorState = ref.watch(navigatorNotiPod);

//     return MaterialApp.router(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       themeMode: theme,
//       theme: MyTheme.lightTheme,
//       darkTheme: MyTheme.darkTheme,
//       routerDelegate: ref.read(routerDelegateProvider),
//       routeInformationParser: RouteInformationParserImpl(),
//       // home: Navigator(
//       //   onPopPage: (route, result) => true,
//       //   pages: [
//       //     if (navigatorState.isWelcome) const MaterialPage(child: Home()),
//       //     if (!navigatorState.isWelcome)
//       //       const MaterialPage(child: MainScreen()),
//       //   ],
//       // )
//       // home: Home(),
//       // initialRoute: homeRoute,
//       // onGenerateRoute: MyRoute.generateRoute,
//     );
//   }
// }