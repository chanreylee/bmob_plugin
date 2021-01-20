library servertime;

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'server_time.g.dart';

@JsonSerializable()
class ServerTime extends Equatable{
  int timestamp;
  String datetime;

  ServerTime();

  factory ServerTime.fromJson(Map<String, dynamic> json) =>
      _$ServerTimeFromJson(json);

  Map<String, dynamic> toJson(ServerTime instance) =>
      _$ServerTimeToJson(instance);

  @override
  List<Object> get props => [timestamp, datetime];
}
