import 'package:testapp/consts/consts.dart';
Widget bgWidget({Widget? child}){
  return Container(
    decoration: const BoxDecoration(
      color: Colors.white,
      image: DecorationImage(image: AssetImage(banner),fit: BoxFit.fitWidth,alignment: Alignment.topCenter)),
      child: child,
  );
}
