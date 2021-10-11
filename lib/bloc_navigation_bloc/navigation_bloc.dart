
import 'package:bloc/bloc.dart';
import '../thrown_pages/management_thrown_page.dart';
import '../thrown_pages/teachers_thrown_page.dart';
import '../thrown_pages/primary_school_graduating_class_a_thrown_page.dart';
import '../thrown_pages/primary_school_graduating_class_b_thrown_page.dart';
import '../thrown_pages/primary_school_graduating_class_c_thrown_page.dart';
import '../thrown_pages/prefects_thrown_page.dart';

enum NavigationEvents {
  MyYear6ClassAPageClickedEvent,
  MyYear6ClassBPageClickedEvent,
  MyYear6ClassCPageClickedEvent,
  MyGraduatesClassTeachersPageClickedEvent,
  MyManagementBodyPageClickedEvent,
  MyClassPrefectsPageClickedEvent,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {

  NavigationBloc() : super(MyPrimarySchoolGraduatingClassAPage());

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents events) async* {
    switch (events) {
      case NavigationEvents.MyYear6ClassAPageClickedEvent:
        yield MyPrimarySchoolGraduatingClassAPage();
        break;
      case NavigationEvents.MyYear6ClassBPageClickedEvent:
        yield MyPrimarySchoolGraduatingClassBPage();
        break;
      case NavigationEvents.MyYear6ClassCPageClickedEvent:
        yield MyPrimarySchoolGraduatingClassCPage();
        break;
      case NavigationEvents.MyGraduatesClassTeachersPageClickedEvent:
        yield MyGraduatesClassTeachersPage();
        break;
      case NavigationEvents.MyManagementBodyPageClickedEvent:
        yield MyManagementBodyPage();
        break;
      case NavigationEvents.MyClassPrefectsPageClickedEvent:
        yield MyClassPrefectsPage();
        break;
    }
  }


}
