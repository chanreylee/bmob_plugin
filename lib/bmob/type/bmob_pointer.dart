import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'bmob_pointer.g.dart';

@JsonSerializable()
class BmobPointer extends Equatable {
  factory BmobPointer.fromJson(Map<String, dynamic> json) =>
      _$BmobPointerFromJson(json);

  Map<String, dynamic> toJson() => _$BmobPointerToJson(this);

  @JsonKey(name: "__type")
  String type = "Pointer";
  String className;
  String objectId;

  BmobPointer();

  @override
  List<Object> get props => [type, className, objectId];
}
