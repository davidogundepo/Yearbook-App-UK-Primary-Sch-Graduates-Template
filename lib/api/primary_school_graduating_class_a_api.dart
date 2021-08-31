import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import '../model/PrimarySchoolGraduatingClassA.dart';

import '../notifier/primary_school_graduating_class_a_notifier.dart';

getPrimarySchoolGraduatingClassA(PrimarySchoolGraduatingClassANotifier primarySchoolGraduatingClassANotifier) async {

  QuerySnapshot snapshot = await FirebaseFirestore.instance
      .collection('PrimarySchoolGraduatingClassA')
      .orderBy('name')
      .get();

  List<PrimarySchoolGraduatingClassA> _primarySchoolGraduatingClassAList = [];

  snapshot.docs.forEach((document) {
    PrimarySchoolGraduatingClassA primarySchoolGraduatingClassA = PrimarySchoolGraduatingClassA.fromMap(document.data());
    _primarySchoolGraduatingClassAList.add(primarySchoolGraduatingClassA);
  });

  primarySchoolGraduatingClassANotifier.primarySchoolGraduatingClassAList = _primarySchoolGraduatingClassAList;
}
