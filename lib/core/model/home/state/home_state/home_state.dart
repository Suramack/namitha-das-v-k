import 'package:namitha_das_v_k/util/enum/menu_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({@Default(MenuEnum.home) MenuEnum selectedMenu}) =
      _HomeState;
}
