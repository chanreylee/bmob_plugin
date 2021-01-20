import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';


//此处与类名一致，由指令自动生成代码
part 'bmob_pointer.g.dart';


@JsonSerializable()
class BmobPointer extends Equatable{
  String __type;
  String className;
  String objectId;

  BmobPointer();

  //此处与类名一致，由指令自动生成代码
  factory BmobPointer.fromJson(Map<String, dynamic> json) =>
      _$BmobPointerFromJson(json);

  //此处与类名一致，由指令自动生成代码
  Map<String, dynamic> toJson() => _$BmobPointerToJson(this);

  @override
  List<Object> get props => [__type, className, objectId];



}
