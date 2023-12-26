import 'package:testapp/consts/consts.dart';

Widget customTField(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      email.text.color(Colors.black).fontFamily(semibold).size(16).make(),
      10.heightBox,
      TextFormField(
        decoration: const InputDecoration(
          hintStyle: TextStyle(
            fontFamily: semibold,
            color: tfGrey,
          ),
            hintText: emailHint,
          isDense: false,
          fillColor: lightGrey,
          filled: true,
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey)
          )
        ),
      ),
      20.heightBox,
      pass.text.color(Colors.black).fontFamily(semibold).size(16).make(),
      10.heightBox,
      TextFormField(
        decoration: const InputDecoration(
            hintStyle: TextStyle(
              fontFamily: semibold,
              color: tfGrey,
            ),
            hintText: passHint,
            isDense: false,
            fillColor: lightGrey,
            filled: true,
            border: InputBorder.none,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey)
            )
        ),
      )
    ],
  );

}