import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    //double ffem = fem * 0.97;
    //const Color containerColor = Colors.white;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          //Картинка Profy
          Container(
            margin: EdgeInsets.fromLTRB(0 * fem, 11.15 * fem, 0, 14.28 * fem),
           // margin: EdgeInsets.fromLTRB(0 * fem, 11.15 * fem, 0, 20.99 * fem),
            width: 99.613 * fem,
            height: 32.566 * fem,
            child: Image.asset(
                'assets/design/images/image_2023-10-19_22-47-01.png'),
          ),
          
          //Главная картинка
          SizedBox(
            //margin: EdgeInsets.fromLTRB(0, 0, 0, 22.11 * fem),
            width: 392.66 * fem,
            height: 353.888 * fem,
            child: Image.asset(
              'assets/design/images/image_2023-10-20_19-39-11.png',
              width: 385.983 * fem,
              height: 347.184 * fem,
              scale: 2,
            ),
          ),

          //SizedBox(height: 22.11 * fem),

          //Текст Создавайте
          Padding(
            padding: EdgeInsets.fromLTRB(41.0 * fem, 20 * fem, 22.0 * fem, 41.0 * fem),
            child: SizedBox(
              width: 346.0 * fem,
              //height: 93.0 * fem,
              child: const Text(
                'Создавайте заказы\nи находите лучших исполнителей',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'SF Pro Text',
                  fontWeight: FontWeight.w700,
                  fontSize: 26.0,
                  color: Color(0xff333333),
                ),
              ),
            ),
          ),

          //SizedBox(height: 41 * fem),

          //кнопки 
          ButtonsWidget(fem: fem),

          //homeindicator
          Container(
            margin: EdgeInsets.fromLTRB(128 * fem, 25 * fem, 128 * fem, 8 * fem),
            padding: EdgeInsets.fromLTRB(39 * fem, 6 * fem, 39 * fem, 6 * fem),
            width: double.infinity,
            height: 5 * fem,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100 * fem),
              color: const Color(0xff242424),
              
            ),
          ),

        ],
      ),
    );
  }
}

// Buttons Widget
class ButtonsWidget extends StatelessWidget {
  const ButtonsWidget({Key? key, required this.fem}) : super(key: key);
  final double fem;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20 * fem, 0, 20 * fem, 18 * fem),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          

          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xfff14e44),
              minimumSize: const Size(350, 52), // Установите ширину и высоту
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 39), // Установите padding
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12 * fem),
                side: const BorderSide(
                  color: Color(0xfff14e44),
                  width: 2.0,
                ),
              ),
            ),
            child: Text(
              'Зарегистрироваться',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'SFProText',
                fontSize: 16 * fem,
                fontWeight: FontWeight.w600,
                letterSpacing: -0.5 * fem,
                color: const Color(0xfff9f9f9),
              ),
            ),
          ),

          SizedBox(height: 10 * fem),

          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(350, 52), // Установите ширину и высоту
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 39), // Установите padding
              backgroundColor: const Color(0xff333333), // Установите цвет фона
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12 * fem),
              ),
            ),
            child: Text(
              'Войти',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'SF Pro Text', // Имя вашего пользовательского шрифта
                fontSize: 16 * fem,
                fontWeight: FontWeight.w600,
                letterSpacing: -0.5 * fem,
                color: const Color(0xfff9f9f9), // Установите цвет текста
              ),
            ),
          ),

          SizedBox(height: 10 * fem),

          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(350, 52), // Установите ширину и высоту
              padding: const EdgeInsets.fromLTRB(39, 6, 39, 6), // Установите padding
              backgroundColor: Colors.white, // Установите белый цвет фона
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: const BorderSide(color: Color(0xFFF14F44)), // Граница цвета #F14F44
              ),
            ),
            child: Text(
              'Создать заказ',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'SF Pro Text', // Имя вашего пользовательского шрифта
                fontSize: 16 * fem,
                fontWeight: FontWeight.w600,
                letterSpacing: -0.5 * fem,
                color: const Color(0xFFF14F44), // Цвет текста #F14F44
              ),
            ),
          ),
        ],
      ),
    );
  }
}


