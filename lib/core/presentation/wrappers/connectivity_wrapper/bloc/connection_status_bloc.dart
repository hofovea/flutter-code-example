import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:code_example/core/domain/services/internet_connection_checker_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'connection_status_event.dart';

part 'connection_status_state.dart';

part 'connection_status_bloc.freezed.dart';

class ConnectionStatusBloc
    extends Bloc<ConnectionStatusEvent, ConnectionStatusState> {
  StreamSubscription<Future<bool>>? _subscription;
  ConnectionStatusBloc() : super(const ConnectionStatusState.initial()) {
    _subscription = InternetConnectionCheckerService.isConnected.listen(
      (isConnectedFuture) async {
        bool isConnected = await isConnectedFuture;
        add(
          ConnectionStatusEvent.connectionChanged(isConnected),
        );
      },
    );
    on<ConnectionStatusEvent>(
      (event, emit) async {
        event.when(
          connectionChanged: (bool isConnected) {
            emit(
              ConnectionStatusState.connectionStatus(isConnected),
            );
          },
        );
      },
    );
  }

  @override
  Future<void> close() async {
    _subscription?.cancel();
    return await super.close();
  }
}
