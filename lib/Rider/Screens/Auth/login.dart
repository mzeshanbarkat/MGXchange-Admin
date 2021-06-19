import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mgxchangeadmin/Components/authbutton.dart';
import 'package:mgxchangeadmin/Components/textfieldd.dart';
import 'package:mgxchangeadmin/Data/Constant.dart';
import 'package:mgxchangeadmin/Rider/Screens/Auth/services/global_method.dart';
import 'package:mgxchangeadmin/Rider/Screens/MainScreen/riderdashboard.dart';
import 'package:get/get.dart';

import 'forgotpassword.dart';

class RiderLogin extends StatefulWidget {
  const RiderLogin({Key key}) : super(key: key);

  @override
  _RiderLoginState createState() => _RiderLoginState();
}
final TextEditingController _email = TextEditingController();
final TextEditingController _password = TextEditingController();
final _auth=  FirebaseAuth.instance;
final firebaseUser = FirebaseAuth.instance.currentUser;



class _RiderLoginState extends State<RiderLogin> {

  final _formKey = GlobalKey<FormState>();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  GlobalMethods _globalMethods = GlobalMethods();
  final FocusNode _passwordFocusNode = FocusNode();
  bool _obscureText = true;
  // String _email = '';
  // String _password = '';
  bool _isLoading = false;
  @override
  void dispose() {
    _passwordFocusNode.dispose();
    super.dispose();
  }

  _login()async {
    // final isValid = _formKey.currentState.validate();
    // FocusScope.of(context).unfocus();
    // if (isValid) {
    //   setState(() {
    //     _isLoading = true;
    //   });
    //   _formKey.currentState.save();
      try {
       final user = await _auth
            .signInWithEmailAndPassword(
            email: _email.text.toLowerCase().trim(),
            password: _password.text.trim())
            .then((result) => {
          _email.clear(),
          _password.clear(),
        }
    );
    if (user != null)
         {
          // Get.offAll(UserDashboard());
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) {
                return  RiderDashboard();
              },
            ),
                (r) => false,
          );



          Get.snackbar(
            "Welcome to Dashboard", // title
            "You have Login Succesfully", // message
            shouldIconPulse: true,
            // onTap:(){},
            barBlur: 20,
            isDismissible: true,
            duration: Duration(seconds: 4),
            snackPosition: SnackPosition.BOTTOM,
            colorText: Colors.white,
            backgroundColor: Colors.grey[900],

          );
        }
      } catch (error) {
        _globalMethods.authErrorHandle(error.message, context);
        print('error occured ${error.message}');
      } finally {
        setState(() {
          _isLoading = false;
        });
      }
    }
  // }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ClipPath(
                    clipper: OvalBottomBorderClipper(),
                    child: Container(
                      height: 100,
                      color: kPrimarycolor,
                      child: Center(
                        child: Image(
                          image: AssetImage('assets/logo1.png'),
                          fit: BoxFit.contain,
                        ),
                      ),

                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Center(
                  child: Text('Login Screen',style: Textt2.textStyle(FontColor, 25),),
                ),
              ),
              SizedBox(height: 20.0,),
              Container(
                width: 330.0,
                height: 200.0,
                // color: Colors.brown,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextFieldd(
                      key: ValueKey('email'),
                      Validator: (value) {
                        if (value.isEmpty || !value.contains('@')) {
                          return 'Please enter a valid email address';
                        }
                        return null;
                      },
                      controller: _email,
                      hinttextt: 'mian@gmail.com',
                      obscre: false,
                    ),
                    TextFieldd(
                      key: ValueKey('Password'),
                      Validator: (value) {
                        if (value.isEmpty || value.length < 7) {
                          return 'Please enter a valid Password';
                        }
                        return null;
                      },
                      controller: _password,
                      hinttextt: 'Enter your Password',
                      obscre: _obscureText,
                      iconn: GestureDetector(
                        onTap: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        child: Icon(_obscureText
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                            onTap: (){Get.to(ForgotPassword());
                            },
                            child: Text('Forgot Password?',style: Textt2.textStyle(FontColor, 15.0),)),
                      ],
                    )

                  ],
                ),
              ),
              _isLoading
              ? CircularProgressIndicator()
              :AuthButton(
                onchanged: (){
                  _login();
                },
                textt: 'LOGIN',
                textStyle: Textt1.textStyle(Colors.white, 18.0),
                colorr: kPrimaryDark,
              ),


            ],
          ),
        ),
      ),
    );
  }
}
