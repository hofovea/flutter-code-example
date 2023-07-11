import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:code_example/core/presentation/routing/app_router.gr.dart';
import 'package:code_example/core/presentation/wrappers/authorized_flow_wrapper/bloc/authorized_flow_bloc.dart';

class AuthorizedFlowWrapperScreen extends StatelessWidget implements AutoRouteWrapper {
  const AuthorizedFlowWrapperScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<AuthorizedFlowBloc>(context).add(
      const AuthorizedFlowEvent.fetchCurrentUser(),
    );
    return BlocListener<AuthorizedFlowBloc, AuthorizedFlowState>(
        listener: (BuildContext context, state) {
          state.maybeWhen(
            signedOut: () {
              AutoRouter.of(context).pushAndPopUntil(
                const ConnectivityWrapperRoute(
                  children: [
                    UnauthorizedFlowWrapperRoute(),
                  ],
                ),
                predicate: (Route<dynamic> route) => false,
              );
            },
            optionalSetupSuccess: () {},
            optionalSetupUserNotFoundFailure: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Such user does not exist'),
                ),
              );
            },
            optionalSetupFailure: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Could not update your profile'),
                ),
              );
            },
            orElse: () {},
          );
        },
        child: const AutoRouter());
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AuthorizedFlowBloc(),
      child: this,
    );
  }
}
