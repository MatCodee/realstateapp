import 'package:flutter/material.dart';
import 'package:realstateapp/widget/small_text.dart';

class CardProperty extends StatelessWidget {
  const CardProperty({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      padding: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width * 0.5,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 249, 249, 249),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: const Image(
                height: 230,
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://img.freepik.com/foto-gratis/casa-azul-techo-azul-fondo-cielo_1340-25953.jpg')),
          ),
          const SizedBox(
            height: 8,
          ),
          SmallText(
              text: 'Willow Way', color: Colors.black, fw: FontWeight.bold),
          SmallText(text: 'Down Town Haifax'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SmallText(
                    text: '\$900',
                    color: Colors.blue[800]!,
                  ),
                  SmallText(text: '/month')
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 15,
                  ),
                  SmallText(text: '4.8'),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
