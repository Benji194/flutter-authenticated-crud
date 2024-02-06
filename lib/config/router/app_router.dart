import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:teslo_shop/features/auth/auth.dart';
import 'package:teslo_shop/features/auth/presentation/providers/auth_provider.dart';
import 'package:teslo_shop/features/products/products.dart';

import 'app_router_notifier.dart';

final goRouterProvider = Provider ( (ref) {

  final goRouterNotifier = ref.read(goRouterNotifierProvider);
  return GoRouter(
  initialLocation: '/login',
  refreshListenable: goRouterNotifier,
  routes: [
    //* Primera Pantalla 
    GoRoute(
      path: '/splash',
      builder: (context, state) => const CheckAuthStatusScreen(),
    ),

    ///* Auth Routes
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => const RegisterScreen(),
    ),

    ///* Product Routes
    GoRoute(
      path: '/',
      builder: (context, state) => const ProductsScreen(),
    ),
  ],
  //! TODO: Bloquear si no se está autenticado
  redirect: (context, state) {
    final isGoingTo = state.matchedLocation;
    final autStatus = goRouterNotifier.authStatus ;

    if (isGoingTo == '/splash' && autStatus == AuthStatus.checking) return null;

    if (autStatus == AuthStatus.notAuthenticated ) {
      if ( isGoingTo =='/login' || isGoingTo =='register') return null;

      return '/login';
    }

    if (autStatus == AuthStatus.authenticated ) {
      if ( isGoingTo =='/login' || isGoingTo =='register' || isGoingTo=='/splash') {
        return '/';
      }
    }



    return null;
  },
  );
});

