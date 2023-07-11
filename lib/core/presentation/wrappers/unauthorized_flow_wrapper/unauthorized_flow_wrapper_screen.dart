import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:code_example/core/presentation/routing/app_router.gr.dart';
import 'package:code_example/core/presentation/wrappers/unauthorized_flow_wrapper/bloc/unauthorized_flow_bloc.dart';

class UnauthorizedFlowWrapperScreen extends StatelessWidget implements AutoRouteWrapper {
  const UnauthorizedFlowWrapperScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<UnauthorizedFlowBloc, UnauthorizedFlowState>(
      listener: (context, state) {
        state.maybeWhen(
          success: (bool isFirstTime) {
            if (isFirstTime) {
              // context.router.replace(
              //   AddPhotoRoute(),
              // );
              AutoRouter.of(context).pushAndPopUntil(
                ConnectivityWrapperRoute(
                  children: [
                    AuthorizedFlowWrapperRoute(
                      children: [
                        AddPhotoRoute(),
                      ],
                    ),
                  ],
                ),
                predicate: (Route<dynamic> route) => false,
              );
            } else {
              AutoRouter.of(context).pushAndPopUntil(
                const ConnectivityWrapperRoute(
                  children: [
                    AuthorizedFlowWrapperRoute(),
                  ],
                ),
                predicate: (Route<dynamic> route) => false,
              );
            }
          },
          optionalSetupSuccess: () {
            AutoRouter.of(context).pushAndPopUntil(
              const ConnectivityWrapperRoute(
                children: [
                  AuthorizedFlowWrapperRoute(),
                ],
              ),
              predicate: (Route<dynamic> route) => false,
            );
          },
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
      child: const AutoRouter(),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => UnauthorizedFlowBloc(),
      child: this,
    );
  }
}
