
import 'dart:collection';

import 'package:flutter/cupertino.dart';
import '../model/PrimarySchoolGraduatingClassC.dart';

class PrimarySchoolGraduatingClassCNotifier with ChangeNotifier {
  List<PrimarySchoolGraduatingClassC> _primarySchoolGraduatingClassCList = [];
  PrimarySchoolGraduatingClassC _currentPrimarySchoolGraduatingClassC;

  UnmodifiableListView<PrimarySchoolGraduatingClassC> get primarySchoolGraduatingClassCList => UnmodifiableListView(_primarySchoolGraduatingClassCList);

  PrimarySchoolGraduatingClassC get currentPrimarySchoolGraduatingClassC => _currentPrimarySchoolGraduatingClassC;

  set primarySchoolGraduatingClassCList(List<PrimarySchoolGraduatingClassC> primarySchoolGraduatingClassCList) {
    _primarySchoolGraduatingClassCList = primarySchoolGraduatingClassCList;
    notifyListeners();
  }

  set currentPrimarySchoolGraduatingClassC(PrimarySchoolGraduatingClassC primarySchoolGraduatingClassC) {
    _currentPrimarySchoolGraduatingClassC = primarySchoolGraduatingClassC;
    notifyListeners();
  }

}