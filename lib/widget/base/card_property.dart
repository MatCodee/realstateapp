import 'package:flutter/material.dart';
import 'package:realstateapp/models/property_model.dart';
import 'package:realstateapp/widget/small_text.dart';

class CardProperty extends StatelessWidget {
  Property property;
  CardProperty({required this.property,super.key});

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
            child: Image(
                width: MediaQuery.of(context).size.width,
                height: 230,
                fit: BoxFit.cover,
                image: NetworkImage(property.image)),
          ),
          const SizedBox(
            height: 8,
          ),
          SmallText(
              text: property.title, color: Colors.black, fw: FontWeight.bold),
          SmallText(text: property.description),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SmallText(
                    text: '\$${property.price}',
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
