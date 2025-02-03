

import 'package:flutter/foundation.dart';

class Property {
  int id;
  String title;
  String description;
  double price;
  String image;

  Property({required this.id,required this.title,required this.description,required this.price,required this.image});


  factory Property.fromJson(Map<String, dynamic> json) {
    return Property(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      price: json['price'],
      image: json['image'], 
    ); 
  }

  Map<String, dynamic> toJson(Property property) {
    Map<String, dynamic> data = {
      "id": property.id,
      "title": property.title,
      "description": property.description,
      "price": price,
      "image": image
    };
    return data;
  } 
}

List<Property> propertires = [
  Property(
    id: 1, 
    title: "Concepcion", 
    description: "Primera concepcion", 
    price: 50.9, 
    image: 'https://cdn.pixabay.com/photo/2019/05/24/11/00/interior-4226020_640.jpg'
  ),
  Property(
    id: 1, 
    title: "Concepcion", 
    description: "Primera concepcion", 
    price: 50.9, 
    image: 'https://cdn.pixabay.com/photo/2017/04/10/22/28/residence-2219972_640.jpg'
  ),
  Property(
    id: 1, 
    title: "Concepcion", 
    description: "Primera concepcion", 
    price: 50.9, 
    image: 'https://a0.muscache.com/im/pictures/0024edde-252e-4e95-9f17-e412ef8b867a.jpg?im_w=720'
  ),
    Property(
    id: 1, 
    title: "Concepcion", 
    description: "Primera concepcion", 
    price: 50.9, 
    image: 'https://a0.muscache.com/im/pictures/miso/Hosting-781145950925218487/original/9162633b-0630-47b2-9236-043b1082197f.jpeg?im_w=720'
  ),
];



List<Property> recommended = [
  Property(
    id: 1, 
    title: "Concepcion", 
    description: "Primera concepcion", 
    price: 50.9, 
    image: 'https://a0.muscache.com/im/pictures/0024edde-252e-4e95-9f17-e412ef8b867a.jpg?im_w=720'
  ),
    Property(
    id: 1, 
    title: "Concepcion", 
    description: "Primera concepcion", 
    price: 50.9, 
    image: 'https://a0.muscache.com/im/pictures/miso/Hosting-781145950925218487/original/9162633b-0630-47b2-9236-043b1082197f.jpeg?im_w=720'
  ),
];

