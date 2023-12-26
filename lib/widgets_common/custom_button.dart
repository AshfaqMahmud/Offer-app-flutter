
import 'package:testapp/consts/consts.dart';
import 'package:testapp/views/auth_screen/sign_up.dart';

Widget customButton({onPress, color, textColor, title}) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: const EdgeInsets.all(12),
      ),
      onPressed:onPress,
      child: title.toString().text.color(textColor).fontFamily(bold).make());
}