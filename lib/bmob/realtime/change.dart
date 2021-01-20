library change;

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'change.g.dart';

@JsonSerializable()
class Change extends Equatable{
  factory Change.fromJson(Map<String, dynamic> json) => _$ChangeFromJson(json);

  Map<String, dynamic> toJson() => _$ChangeToJson(this);

  String appKey;
  String tableName;
  String objectId;
  String action;
  Map<String, dynamic> data;

  Change();

  @override
  List<Object> get props => [
    appKey,
    tableName,
    objectId,
    action,
    data,
  ];
}
