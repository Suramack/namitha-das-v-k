import 'package:namitha_das_v_k/util/enum/menu_enum.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:namitha_das_v_k/core/model/home/state/home_state/home_state.dart';

final homeProvider = StateNotifierProvider<HomeNotifierProvider, HomeState>(
  (ref) => HomeNotifierProvider(ref),
);

class HomeNotifierProvider extends StateNotifier<HomeState> {
  HomeNotifierProvider(this.ref) : super(const HomeState());

  final Ref ref;

  MenuEnum get selectedMenu => state.selectedMenu;

  set setSelectedMenu(MenuEnum selected) {
    state = state.copyWith(selectedMenu: selected);
  }
}
