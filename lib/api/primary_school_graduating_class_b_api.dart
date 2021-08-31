import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import '../model/PrimarySchoolGraduatingClassB.dart';

import '../notifier/primary_school_graduating_class_b_notifier.dart';

getPrimarySchoolGraduatingClassB(PrimarySchoolGraduatingClassBNotifier primarySchoolGraduatingClassBNotifier) async {

  QuerySnapshot snapshot = await FirebaseFirestore.instance
      .collection('PrimarySchoolGraduatingClassB')
      .orderBy('name')
      .get();

  List<PrimarySchoolGraduatingClassB> _primarySchoolGraduatingClassBList = [];

  snapshot.docs.forEach((document) {
    PrimarySchoolGraduatingClassB primarySchoolGraduatingClassB = PrimarySchoolGraduatingClassB.fromMap(document.data());
    _primarySchoolGraduatingClassBList.add(primarySchoolGraduatingClassB);
  });

  primarySchoolGraduatingClassBNotifier.primarySchoolGraduatingClassBList = _primarySchoolGraduatingClassBList;
}
