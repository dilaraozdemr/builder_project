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
                  SizedBox(height: 200,),
                  Material(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: (){
                        print("Butona bir kere basıldı");
                      },
                      child: Container(
                        width: 250,
                        height: 60,
                        decoration: BoxDecoration(border: Border.all(color: Colors.white, width: 2),
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white38,
                        ),
                      ),
                    ),
                  )
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
          TextStyle(color: Colors.white, fontFamily: "Playfair", fontSize: 30),
    );
  }
}
