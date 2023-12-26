import 'package:testapp/consts/consts.dart';
Widget bgWidget2({Widget? child}){
  return Container(
    decoration: const BoxDecoration(
      color: Colors.white,
      image: DecorationImage(image: AssetImage(banner2),fit: BoxFit.fitWidth,alignment: Alignment.topCenter)),
      child: child,
  );
}
