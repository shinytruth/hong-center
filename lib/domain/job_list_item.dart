import 'package:json_annotation/json_annotation.dart';

part 'job_list_item.g.dart';

@JsonSerializable()
class JobListItem {
  int? jobId;
  String? categoryName;
  String? content;
  String? requestTime;
  String? memberName;
  String? hongName;
  String? status;
  String? requestAddress;
  String? silverPhoneNumber;
  String? memberPhoneNumber;
  int? hongId;

  JobListItem({
    this.jobId,
    this.categoryName,
    this.content,
    this.requestTime,
    this.memberName,
    this.hongName,
    this.status,
    this.requestAddress,
    this.silverPhoneNumber,
    this.memberPhoneNumber,
    this.hongId,
  });

  factory JobListItem.fromJson(Map<String, dynamic> json) =>
      _$JobListItemFromJson(json);

  Map<String, dynamic> toJson() => _$JobListItemToJson(this);
}
