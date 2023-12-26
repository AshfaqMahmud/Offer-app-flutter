import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';
import 'package:testapp/consts/consts.dart';
import 'package:testapp/views/auth_screen/sign_up.dart';
import 'package:testapp/widgets_common/bg_widget.dart';
import 'package:testapp/widgets_common/custom_tField.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            40.heightBox,
            "Log in to get your offer"
                .text
                .fontFamily(bold)
                .size(22)
                .center
                .make(),
            30.heightBox,
            Column(
              children: [
                10.heightBox,
                const TextField(
                  style: TextStyle(fontSize: 16, height: 1.0),
                  obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
                10.heightBox,
                const TextField(
                  style: TextStyle(fontSize: 16, height: 1.0),
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(onPressed: () {},child: fpass.text.make(),),
                ),
                15.heightBox,
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFF80AB),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // <-- Radius
                    ),
                    minimumSize: const Size(100, 50),
                  ),
                  child: const Text(login),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => const LoginScreen()),
                    // );
                    //Navigator.of(context).push(_createRoute());
                    print("Login Pressed");
                  },
                ).box.width(context.screenWidth - 60).make(),
                15.heightBox,
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF25C7F8),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // <-- Radius
                    ),
                    minimumSize: const Size(100, 50),
                  ),
                  child: const Text(signup),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => const SignUp()),
                    // );
                    //Navigator.of(context).push(_createRoute());
                    Navigator.push(context, PageTransition(type: PageTransitionType.bottomToTopJoined, child: const SignUp(), childCurrent: this));
                  },
                ).box.width(context.screenWidth - 60).make(),
              ],
            )
                .box
                .white
                .rounded
                .padding(const EdgeInsets.all(16))
                .width(context.screenWidth - 60)
                .shadowSm
                .make()
          ],
        ),
      ),
    ));
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const SignUp(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}
