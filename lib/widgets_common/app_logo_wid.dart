import 'package:get/get.dart';
import 'package:testapp/consts/consts.dart';

Widget applogowidget()
{

  return Center(
    child: Image.asset(applogo).marginSymmetric(horizontal: 120,vertical: 120).paddingSymmetric(horizontal: 0,vertical: 100).box.size(700, 800).make()
  );
}
//Image.asset(applogo).paddingSymmetric(horizontal: 20,vertical: 200).box.rounded.make(),