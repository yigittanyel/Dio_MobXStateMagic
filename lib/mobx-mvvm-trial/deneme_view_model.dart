import 'package:mobx/mobx.dart';
part 'deneme_view_model.g.dart';

class DenemeViewModel = _DenemeViewModelBase with _$DenemeViewModel;

abstract class _DenemeViewModelBase with Store {
  @computed
  bool get isOdd => count.isOdd;

  @observable
  int count = 0;

  @action
  void increment() {
    count++;
  }
}
