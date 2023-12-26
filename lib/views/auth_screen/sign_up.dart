import 'package:testapp/consts/consts.dart';
import 'package:testapp/views/auth_screen/login.dart';
import 'package:testapp/widgets_common/bg_widget.dart';
import 'package:testapp/widgets_common/bg_widget2.dart';
import 'package:testapp/widgets_common/custom_button.dart';
import 'package:testapp/widgets_common/custom_tField.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget2(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Center(
            child: Column(
              children: [
                (context.screenHeight * 0.1).heightBox,
                40.heightBox,
                "Sign Up to get your offer"
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
                      style:TextStyle(
                          fontSize:16,
                          height: 1.0
                      ),
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Name',
                      ),
                    ),
                    10.heightBox,
                    const TextField(
                      style:TextStyle(
                          fontSize:16,
                          height: 1.0
                      ),
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                      ),
                    ),
                    10.heightBox,
                    const TextField(
                      style:TextStyle(
                          fontSize:16,
                          height: 1.0
                      ),
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                    ),
                    10.heightBox,
                    const TextField(
                      style:TextStyle(
                          fontSize:16,
                          height: 1.0
                      ),
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Confirm Password',
                      ),
                    ),
                    //customTField()
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const LoginScreen()),
                        );
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