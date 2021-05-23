import 'package:flutter/material.dart';
import 'package:d_details_ui/Screens/home_page.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isLogin = true;
  Animation<double> contanerSize;
  AnimationController animationController;
  Duration animationDuration = Duration(milliseconds: 270);

  @override
  void initState() {
    super.initState();
    // SystemChrome.set
    animationController =
        AnimationController(vsync: this, duration: animationDuration);
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double viewInset = MediaQuery.of(context).viewInsets.bottom;
    double defaultLoginSize = size.height - (size.height * 0.2);
    double defaultRegisterSize = size.height - (size.height * 0.1);

    contanerSize = Tween(begin: size.height * 0.1, end: defaultRegisterSize)
        .animate(CurvedAnimation(
      parent: animationController,
      curve: Curves.linear,
    ));

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          // on right
          Positioned(
              top: 95,
              right: -57,
              child: Container(
                width: 110,
                height: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80),
                  gradient: LinearGradient(
                    colors: [Color(0xff6CECB3), Color(0xff9ED5EE)],
                    begin: Alignment.bottomRight,
                    end: Alignment.centerLeft,
                  ),
                  //  color: Colors.lightBlueAccent
                ),
              )),
          Positioned(
              top: 100,
              right: -50,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  gradient: LinearGradient(
                    colors: [Color(0xffffffff), Color(0xffffffff)],
                    begin: Alignment.bottomRight,
                    end: Alignment.centerLeft,
                  ),
                  //  color: Colors.lightBlueAccent
                ),
              )),
          // on left
          Positioned(
              top: -34,
              left: -38,
              child: Container(
                width: 110,
                height: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  gradient: LinearGradient(
                    colors: [Color(0xff6CECB3), Color(0xff9ED5EE)],
                    begin: Alignment.bottomRight,
                    end: Alignment.centerLeft,
                  ),
                  //  color: Colors.lightBlueAccent
                ),
              )),
          Positioned(
              top: -30,
              left: -30,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  gradient: LinearGradient(
                    colors: [Color(0xffffffff), Color(0xffffffff)],
                    begin: Alignment.bottomRight,
                    end: Alignment.centerLeft,
                  ),
                  //  color: Colors.lightBlueAccent
                ),
              )),
          // on buttom
          Positioned(
              top: 350.5,
              left: -28,
              child: Container(
                width: 55,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  gradient: LinearGradient(
                    colors: [Color(0xff6CECB3), Color(0xff9ED5EE)],
                    begin: Alignment.bottomRight,
                    end: Alignment.centerLeft,
                  ),
                  //  color: Colors.lightBlueAccent
                ),
              )),
          Positioned(
              top: 353,
              left: -25,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  gradient: LinearGradient(
                    colors: [Color(0xffffffff), Color(0xffffffff)],
                    begin: Alignment.bottomRight,
                    end: Alignment.centerLeft,
                  ),
                  //  color: Colors.lightBlueAccent
                ),
              )),
          /* Positioned(
            top: -40,
            left: -40,
            child:Transform.rotate(
            angle: 8.5,
            child:  Image.asset(
              'img/stethoscope_1000px.png',
              width: 150,
              height: 150,
            ), alignment: Alignment.center,
          ),),*/

          // cancel button
          AnimatedOpacity(
            opacity: isLogin ? 0.0 : 1.0,
            duration: animationDuration,
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: size.width,
                height: size.height * 0.1,
                alignment: Alignment.bottomCenter,
                child: IconButton(
                    icon: Icon(Icons.close),
                    onPressed: isLogin
                        ? null
                        : () {
                      animationController.reverse();
                      setState(() {
                        isLogin = !isLogin;
                      });
                    },
                    color: Color(0xff6CECB3)),
              ),
            ),
          ),

          // login form
          AnimatedOpacity(
            duration: animationDuration * 4,
            opacity: isLogin ? 1.0 : 0.0,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: size.width,
                height: defaultLoginSize,
                child: ListView(
                  // padding: EdgeInsets.only(top: 25,right: 50,bottom: 25),
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  //  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    /* Image.asset(
                        'img/stethoscope_240px.png',
                        width: 50,
                        height: 50,
                          alignment: Alignment.center,
                    ),*/
                    Padding(
                      padding: const EdgeInsets.only(right: 40.0, top: 100),
                      child: Container(
                        // margin: EdgeInsets.symmetric(vertical: 10),
                        padding:
                        EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                        width: size.width * 0.8,
                        //  height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(55.0)),
                          color: Color(0xff6CECB3).withAlpha(50),
                        ),
                        child: TextField(
                          cursorColor: Color(0xff6CECB3),
                          decoration: InputDecoration(
                            icon: Icon(Icons.person_pin,
                                color: Color(0xff6CECB3)),
                            hintText: 'اسم المستخدم',
                            hintStyle: TextStyle(
                              color: Color(0xff99DFB2),
                              // fontWeight: FontWeight.bold,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 40.0),
                      child: Container(
                        //margin: EdgeInsets.only(bottom: 0),
                        padding:
                        EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                        width: size.width * 0.8,
                        //  height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(55.0)),
                          color: Color(0xff6CECB3).withAlpha(50),
                        ),
                        child: TextField(
                          cursorColor: Color(0xff6CECB3),
                          obscureText: true,
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.lock,
                              color: Color(0xff6CECB3),
                            ),
                            hintText: 'كلمة السر',
                            hintStyle: TextStyle(
                              color: Color(0xff99DFB2),
                              // fontWeight: FontWeight.bold,
                            ),
                            border: InputBorder.none,
                            //   isCollapsed: true,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      child: Padding(
                        padding:
                        const EdgeInsets.only(left: 80, right: 80, top: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            //  borderRadius: BorderRadius.all(Radius.circular(33)),
                            gradient: LinearGradient(
                              colors: [Color(0xff6CECB3), Color(0xffA9E1FA)],
                              begin: Alignment.bottomRight,
                              end: Alignment.centerLeft,
                            ),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.center,
                          child: Text(
                            'تسجيل الدخول',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),

                        ),
                      ),
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Home()));
                      },
                    ),
                    //  padding: const EdgeInsets.only(left: 75),
                    FlatButton(
                      onPressed: () {/*forgot password screen*/},
                      textColor: Color(0xff6CECB3),
                      child: Text(
                        'نسيت كلمة المرور ؟',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // register container
          AnimatedBuilder(
            animation: animationController,
            builder: (context, child) {
              if (viewInset == 0 && isLogin) {
                return buildRegisterContainer();
              } else if (!isLogin) {
                return buildRegisterContainer();
              }
              return Container(
                height: size.height,
                width: size.width,
              );
            },
          ),

          // register form
          AnimatedOpacity(
            duration: animationDuration * 5,
            opacity: isLogin ? 0.0 : 1.0,
            child: Visibility(
              visible: !isLogin,
              child: Align(
                //  alignment: Alignment.center,
                child: Container(
                    width: size.width,
                    height: defaultLoginSize,
                    child: SingleChildScrollView(
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 25.0),
                            child: Text(
                              'أهلاً وسهلاً',
                              style: TextStyle(
                                  color: Color(0xff99DFB2),
                                  // fontWeight: FontWeight.bold,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24),
                            ),
                          ),
                          /* Image.asset(
                          'img/girl.jpg',
                          width: 100,
                          height: 100,
                        ),*/
                          /* RoundedInput(
                          icon: Icons.mail,
                          hint: 'Username',
                        ),
                        RoundedInput(
                          icon: Icons.face_rounded,
                          hint: 'Name',
                        ),
                        RoundedPasswordInput(hint: 'Password'),*/
                          Padding(
                            padding:
                            const EdgeInsets.only(right: 40.0, top: 50),
                            child: Container(
                              // margin: EdgeInsets.symmetric(vertical: 10),
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 20),
                              width: size.width * 0.8,
                              //  height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(55.0)),
                                color: Color(0xff6CECB3).withAlpha(50),
                              ),
                              child: TextField(
                                cursorColor: Color(0xff6CECB3),
                                decoration: InputDecoration(
                                  icon: Icon(Icons.mail,
                                      color: Color(0xff6CECB3)),
                                  hintText: 'الإيميل',
                                  hintStyle: TextStyle(
                                    color: Color(0xff99DFB2),
                                    // fontWeight: FontWeight.bold,
                                  ),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 40.0,
                            ),
                            child: Container(
                              // margin: EdgeInsets.symmetric(vertical: 10),
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 20),
                              width: size.width * 0.8,
                              //  height: 50,
                              /*  decoration: BoxDecoration(
                              borderRadius:  BorderRadius.only(
                                bottomRight: Radius.circular(20.0),
                                  topRight: Radius.circular(20.0)),
                              color: Color(0xff6CECB3).withAlpha(50),
                            ),*/
                              child: TextField(
                                cursorColor: Color(0xff6CECB3),
                                decoration: InputDecoration(
                                  icon: Icon(Icons.person_pin,
                                      color: Color(0xff6CECB3)),
                                  hintText: 'اسم المستخدم',
                                  hintStyle: TextStyle(
                                    color: Color(0xff99DFB2),
                                    // fontWeight: FontWeight.bold,
                                  ),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 40.0),
                            child: Container(
                              //margin: EdgeInsets.only(bottom: 0),
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 20),
                              width: size.width * 0.8,
                              //  height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(55.0)),
                                color: Color(0xff6CECB3).withAlpha(50),
                              ),
                              child: TextField(
                                cursorColor: Color(0xff6CECB3),
                                obscureText: true,
                                decoration: InputDecoration(
                                  icon: Icon(
                                    Icons.lock,
                                    color: Color(0xff6CECB3),
                                  ),
                                  hintText: 'كلمة السر',
                                  hintStyle: TextStyle(
                                    color: Color(0xff99DFB2),
                                    // fontWeight: FontWeight.bold,
                                  ),
                                  border: InputBorder.none,
                                  //   isCollapsed: true,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 80, right: 80, top: 10),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                //  borderRadius: BorderRadius.all(Radius.circular(33)),
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xff6CECB3),
                                    Color(0xffA9E1FA)
                                  ],
                                  begin: Alignment.bottomRight,
                                  end: Alignment.centerLeft,
                                ),
                              ),
                              padding: EdgeInsets.symmetric(vertical: 10),
                              alignment: Alignment.center,
                              child: Text(
                                'إنشاء حساب',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildRegisterContainer() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: contanerSize.value,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(100),
            topRight: Radius.circular(100),
          ),
          color: Color(0xff6CECB3).withAlpha(30),
        ),
        alignment: Alignment.center,
        child: GestureDetector(
          onTap: !isLogin
              ? null
              : () {
            animationController.forward();
            setState(() {
              isLogin = !isLogin;
            });
          },
          child: isLogin
              ? Text(
            'ليس لديك حساب؟ أنشىء حساب',
            textAlign: TextAlign.center,
            style: TextStyle(color: Color(0xff99DFB2), fontSize: 18),
          )
              : null,
        ),
      ),
    );
  }
}
