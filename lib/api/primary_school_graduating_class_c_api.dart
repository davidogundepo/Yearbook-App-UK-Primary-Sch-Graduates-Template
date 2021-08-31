import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import '../model/PrimarySchoolGraduatingClassC.dart';

import '../notifier/primary_school_graduating_class_c_notifier.dart';

getPrimarySchoolGraduatingClassC(PrimarySchoolGraduatingClassCNotifier primarySchoolGraduatingClassCNotifier) async {

  QuerySnapshot snapshot = await FirebaseFirestore.instance
      .collection('PrimarySchoolGraduatingClassC')
      .orderBy('name')
      .get();

  List<PrimarySchoolGraduatingClassC> _primarySchoolGraduatingClassCList = [];

  snapshot.docs.forEach((document) {
    PrimarySchoolGraduatingClassC primarySchoolGraduatingClassC = PrimarySchoolGraduatingClassC.fromMap(document.data());
    _primarySchoolGraduatingClassCList.add(primarySchoolGraduatingClassC);
  });

  primarySchoolGraduatingClassCNotifier.primarySchoolGraduatingClassCList = _primarySchoolGraduatingClassCList;
}
