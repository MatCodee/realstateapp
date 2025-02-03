import 'package:flutter/material.dart';
import 'package:realstateapp/widget/big_text.dart';
import 'package:realstateapp/widget/small_text.dart';

class DeatilPage extends StatelessWidget {
  const DeatilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        slivers: <Widget>[
          SliverAppBar(
            stretch: true,
            onStretchTrigger: () {
              // Function callback for stretch
              return Future<void>.value();
            },
            expandedHeight: 300.0,
            flexibleSpace:  FlexibleSpaceBar(
              stretchModes: const <StretchMode>[
                StretchMode.zoomBackground,
                StretchMode.blurBackground,
                StretchMode.fadeTitle,
              ],
              centerTitle: true,
              background: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  const Image(
                    image: NetworkImage(
                        'https://a0.muscache.com/im/pictures/miso/Hosting-781145950925218487/original/9162633b-0630-47b2-9236-043b1082197f.jpeg?im_w=960'),
                    fit: BoxFit.cover,
                  ),
                  const DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.0, 0.5),
                        end: Alignment.center,
                        colors: <Color>[
                          Color(0x60000000),
                          Color(0x00000000),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 60,
                    left: 30,
                    right: 30,
                 
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white,
                            ),
                            child: const  Icon(Icons.arrow_back_ios_new_sharp, color:  Color.fromARGB(255, 47, 47, 47),),
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white,
                            ),
                            child: const Icon(Icons.search,color: const Color.fromARGB(255, 47, 47, 47),),
                          )
                          
                        ],
                      ),
                    ),
                  
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                padding: EdgeInsets.only(top: 40),
                margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: BigText(text: 'Vivienda rentada entero en Puchuncavi',color: Colors.black,size: 20,),
                      ),
                      BigText(text: '\$45.90',color: Colors.orange,),
                    ],
                  ),
                  const SizedBox(height: 30,),
                  SmallText(text: 'Hermoso departamento decorado para ofrecer una experiencia inolvidable, primera línea frente al mar que cautiva todos tus sentidos. Preparado para una estadía placentera, cocina, coffee corner, escritorio-comedor, terraza, parrilla eléctrica, TV y Wifi. Caminado por el bosque bajas a hermosa playa privada o a las piscinas, sauna, jacuzzi, canchas deportivas del condominio. En Horcón hay para comprar todo lo que necesites o a almorzar en los restaurantes. También puedes pasear por la costa.',size: 15,),
                  // map here
                ],
              )),
            ]),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(bottom: 20),
        child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.blue[900],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BigText(
                  text: 'Reservar Ahora',
                  size: 15,
                  color: Colors.white,
                )
              ],
            )),
      ),
    );
  }
}
