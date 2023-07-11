import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:code_example/core/presentation/wrappers/connectivity_wrapper/bloc/connection_status_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ConnectivityWrapperScreen extends StatelessWidget
    implements AutoRouteWrapper {
  static const Duration _snackBarDuration = Duration(seconds: 10);
  const ConnectivityWrapperScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<ConnectionStatusBloc, ConnectionStatusState>(
      listener: (BuildContext context, state) {
        state.maybeWhen(
          connectionStatus: (bool isConnected) {
            if (!isConnected) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  duration: _snackBarDuration,
                  content: Text(
                    AppLocalizations.of(context)!.connectionError,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          color: Theme.of(context).colorScheme.error,
                        ),
                  ),
                ),
              );
            }
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
      create: (context) => ConnectionStatusBloc(),
      child: this,
    );
  }
}
