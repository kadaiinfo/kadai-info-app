import 'package:equatable/equatable.dart';

class BinanbijoDialogDisplayModel extends Equatable {
  final DisplayState display;

  const BinanbijoDialogDisplayModel.choiceUser(
      {this.display = DisplayState.choiceUser});

  const BinanbijoDialogDisplayModel.vote({this.display = DisplayState.vote});

  const BinanbijoDialogDisplayModel.voted({this.display = DisplayState.voted});

  @override
  List<Object?> get props => [display];
}

enum DisplayState { choiceUser, vote, voted }
