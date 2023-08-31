import 'package:flutter/material.dart';
import 'package:hong_center/domain/job_list_item.dart';

class JobDetailScreenModel extends ChangeNotifier {
  JobListItem? _job;

  JobListItem? get job => _job;

  final bool _isNew;

  bool get isNew => _isNew;

  JobDetailScreenModel(this._isNew, _job) {
    if (_job == null) {
      this._job = JobListItem();
    } else {
      this._job = _job;
    }
  }
}
