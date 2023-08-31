import 'package:flutter/material.dart';
import 'package:hong_center/domain/job_list_item.dart';

class JobListScreenModel extends ChangeNotifier {
  List<JobListItem> _jobs = <JobListItem>[];

  List<JobListItem> get jobs => _jobs;
}
