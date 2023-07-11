part of 'connection_status_bloc.dart';

@freezed
class ConnectionStatusState with _$ConnectionStatusState {
  const factory ConnectionStatusState.initial() = _Initial;
  const factory ConnectionStatusState.connectionStatus(bool isConnected) =
      _ConnectionStatus;
}
