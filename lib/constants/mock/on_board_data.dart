import '../../models/on_board/on_board.dart';
import '../app/app_strings.dart';

class OnBoardData {
  static List<OnBoard> list = [
    OnBoard(title: AppStrings.onBoardTitle1, desc: AppStrings.onBoardDesc1),
    OnBoard(title: AppStrings.onBoardTitle2, desc: AppStrings.onBoardDesc2),
    OnBoard(title: AppStrings.onBoardTitle3, desc: AppStrings.onBoardDesc3),
    OnBoard(title: AppStrings.onBoardTitle4, desc: AppStrings.onBoardDesc4),
    OnBoard(title: AppStrings.onBoardTitle5, desc: AppStrings.onBoardDesc5),
  ];
}
