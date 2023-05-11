import 'package:builder_project/src/constants/AssetConstants.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              AssetConstant.welcome,
              fit: BoxFit.fill,
            ),
          ),
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Column(
                children: [
                  getWelcomeText("Binalarımız"),
                  getWelcomeText("Güvenli"),
                  getWelcomeText("Biz Güvendeyiz"),
                  SizedBox(
                    height: 210,
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        print("Butona bir kere basıldı");
                      },
                      child: Container(
                        width: 250,
                        height: 70,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2),
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white.withOpacity(0.5),
                        ),
                        child: Center(
                          child: Text(
                            "Giriş Yap",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Playfair",
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Hesabınız yok mu ?  ",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "PlayFair",
                            fontSize: 21,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Kayıt Olun",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Playfair",
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      children: [
                        Container(
                          height: 2,
                          width: 150,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Container(
                          height: 2,
                          width: 150,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(15),
                      onTap: (){
                        print("bir kere tıklanıldı");
                      },
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white54,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Image.asset(
                            "assets/images/google.png",
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Text getWelcomeText(String text) {
    return Text(
      text,
      style:
          TextStyle(color: Colors.white, fontFamily: "Playfair", fontSize: 35, fontWeight: FontWeight.bold),
    );
  }
}
