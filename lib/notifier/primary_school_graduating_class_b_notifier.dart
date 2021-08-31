
import 'dart:collection';

import 'package:flutter/cupertino.dart';
import '../model/PrimarySchoolGraduatingClassB.dart';

class PrimarySchoolGraduatingClassBNotifier with ChangeNotifier {
  List<PrimarySchoolGraduatingClassB> _primarySchoolGraduatingClassBList = [];
  PrimarySchoolGraduatingClassB _currentPrimarySchoolGraduatingClassB;

  UnmodifiableListView<PrimarySchoolGraduatingClassB> get primarySchoolGraduatingClassBList => UnmodifiableListView(_primarySchoolGraduatingClassBList);

  PrimarySchoolGraduatingClassB get currentPrimarySchoolGraduatingClassB => _currentPrimarySchoolGraduatingClassB;

  set primarySchoolGraduatingClassBList(List<PrimarySchoolGraduatingClassB> primarySchoolGraduatingClassBList) {
    _primarySchoolGraduatingClassBList = primarySchoolGraduatingClassBList;
    notifyListeners();
  }

  set currentPrimarySchoolGraduatingClassB(PrimarySchoolGraduatingClassB primarySchoolGraduatingClassB) {
    _currentPrimarySchoolGraduatingClassB = primarySchoolGraduatingClassB;
    notifyListeners();
  }

}