part of 'connection_status_bloc.dart';

@freezed
class ConnectionStatusEvent with _$ConnectionStatusEvent {
  const factory ConnectionStatusEvent.connectionChanged(bool isConnected) =
      _connectionChanged;
}
