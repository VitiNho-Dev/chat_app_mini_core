import 'package:chat_app_mini_core/app/interactor/atoms/user_atom.dart';

import '../models/user_model.dart';

final messages = <UserModel>[];

void sendMessage(UserModel model) {
  messages.add(model);

  userState.value = messages;
}
