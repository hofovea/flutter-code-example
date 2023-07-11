import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:code_example/core/presentation/routing/app_router.gr.dart';
import 'package:code_example/core/presentation/splash_screen/splash_screen.dart';
import 'package:code_example/core/presentation/wrappers/auth_state_wrapper/bloc/auth_state_bloc.dart';

class AuthStateWrapperScreen extends StatelessWidget
    implements AutoRouteWrapper {
  const AuthStateWrapperScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthStateBloc, AuthStateState>(
      listener: (context, state) {
        state.maybeWhen(
          unauthorized: () {
            AutoRouter.of(context).replace(
              const UnauthorizedFlowWrapperRoute(),
            );
          },
          authorized: () {
            AutoRouter.of(context).replace(
              const AuthorizedFlowWrapperRoute(),
            );
          },
          orElse: () {},
        );
      },
      child: const SplashScreen(),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthStateBloc()
        ..add(
          const AuthStateEvent.attemptAccess(),
        ),
      child: this,
    );
  }
}
