
import 'package:stacked/stacked.dart';

class StartupViewModel extends BaseViewModel {
  String _title = "startup counter value :";
  String get title {
    return _title;
  }

  int _cnt = 0;
  int get cnt {
    return _cnt;
  }

  void updateCounter(){
    _cnt++;
    notifyListeners();
  }

}