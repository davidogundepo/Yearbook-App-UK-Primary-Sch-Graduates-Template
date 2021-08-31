
import 'dart:collection';

import 'package:flutter/cupertino.dart';
import '../model/PrimarySchoolGraduatingClassA.dart';

class PrimarySchoolGraduatingClassANotifier with ChangeNotifier {
  List<PrimarySchoolGraduatingClassA> _primarySchoolGraduatingClassAList = [];
  PrimarySchoolGraduatingClassA _currentPrimarySchoolGraduatingClassA;

  UnmodifiableListView<PrimarySchoolGraduatingClassA> get primarySchoolGraduatingClassAList => UnmodifiableListView(_primarySchoolGraduatingClassAList);

  PrimarySchoolGraduatingClassA get currentPrimarySchoolGraduatingClassA => _currentPrimarySchoolGraduatingClassA;

  set primarySchoolGraduatingClassAList(List<PrimarySchoolGraduatingClassA> primarySchoolGraduatingClassAList) {
    _primarySchoolGraduatingClassAList = primarySchoolGraduatingClassAList;
    notifyListeners();
  }

  set currentPrimarySchoolGraduatingClassA(PrimarySchoolGraduatingClassA primarySchoolGraduatingClassA) {
    _currentPrimarySchoolGraduatingClassA = primarySchoolGraduatingClassA;
    notifyListeners();
  }

}