import 'package:aanakutty_portfolio/util/enum/menu_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({@Default(MenuEnum.home) MenuEnum selectedMenu}) =
      _HomeState;
}
