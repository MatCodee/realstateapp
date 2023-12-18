


import 'package:flutter/material.dart';
import 'package:realstateapp/widget/big_text.dart';
import 'package:realstateapp/widget/small_text.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Positioned.fill(
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.3), // Puedes ajustar la opacidad según tus necesidades
                  BlendMode.darken,
                ),
                child: Image(
                  height: MediaQuery.of(context).size.height,
                  fit: BoxFit.cover,
                  image: NetworkImage('https://cdn.pixabay.com/photo/2018/11/09/10/10/interior-3804154_1280.jpg')
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height/4,
              right: 0,
              left: 0,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
                child: Column(
                  children: [
                    BigText(text: 'Hommie',size: 40,fw: FontWeight.bold,color: const Color.fromARGB(255, 255, 255, 255),),
                    SmallText(text: 'The best place to find your house',color: Color.fromARGB(255, 255, 255, 255),size: 20,)
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50.0),topRight: Radius.circular(50.0)),
                  color: Colors.white,
                ),
                height: MediaQuery.of(context).size.height / 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 30),
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.blue[900],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.phone,color: Colors.white,),
                          const SizedBox(width: 10,),
                          BigText(text: 'Continue with Mobile Number',size: 15,color: Colors.white,)
                        ],
                      )
                    ),
                    const SizedBox(height: 20),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 30),
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color.fromARGB(255, 191, 191, 191), width: 1),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Image(width: 20,image: AssetImage('assets/images/google.png')),
                          const SizedBox(width: 10,),
                          SmallText(text: 'Continue with Google',size: 15,color: Colors.black,)
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 30),
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color.fromARGB(255, 191, 191, 191), width: 1),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Image(width: 20,image: AssetImage('assets/images/facebook.png')),
                          const SizedBox(width: 10,),
                          SmallText(text: 'Continue with Facebook',size: 15,color: Colors.black,)
                        ],
                      ),
                    ),
                    const SizedBox(height: 50,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SmallText(text: "Don't have an account? ",size: 15,),
                        SmallText(text: 'SignUp',color: Colors.blue,size: 15,)
                      ],
                    )
                  ],
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}