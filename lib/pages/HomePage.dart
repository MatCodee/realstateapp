import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:realstateapp/widget/card_property.dart';
import 'package:realstateapp/widget/small_text.dart';
import 'package:realstateapp/widget/big_text.dart';
import 'package:realstateapp/widget/text_search_field.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<int> card = [1,2,3,4,5];

  List<String> categories = ['All', 'Aparment', 'Town House', 'Villa','House'];

  TextEditingController _controllerSearch = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var _currentIndex = 0;

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(text: 'Hey, Matish'),
                        SmallText(text: 'Lets find tour house',color: Colors.black),
                      ],
                    ),
                    const CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg'),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                TextSearchField(
                    controller: _controllerSearch,
                    textField: 'Search',
                    icon: Icons.search,
                    iconColor: Colors.black38),
                const SizedBox(height: 20,),
                BigText(text: 'Category',color: Colors.black,),
                const SizedBox(height: 20,),
                Container(
                  height: 40,
                  child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: categories.length,itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 10),
                    padding: const EdgeInsets.only(left: 20, right: 20, bottom: 0),
                    decoration: BoxDecoration(
                      border: Border.all(color: index == 0 ? Colors.black! : Color.fromARGB(255, 135, 135, 135), width: 1),
                      borderRadius: BorderRadius.circular(50),
                      color: index == 0 ? Colors.black : Colors.white,
                    ),
                    child: Center(
                      child: SmallText(text: categories[index],color: index == 0  ? Colors.white : Colors.black),
                    ),
                  );
                },),
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BigText(text: 'Popular',color: Color.fromARGB(255, 71, 71, 71),),
                    SmallText(text: 'See all',color: Colors.blue[800]!,)
                  ],
                ),
                const SizedBox(height: 10,),
                Container(
                  height: 310,
                  child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: card.length,itemBuilder: (context, index) {
                    return const CardProperty();
                  },),
                ),
                SizedBox(height: 30,),
                BigText(text: "Best for You",color: Colors.black,),
                Container(
                  height: 310,
                  child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: card.length,itemBuilder: (context, index) {
                    return const CardProperty();
                  },),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
              selectedColor: Color.fromARGB(255, 0, 0, 0),
            ),

            /// Likes
            SalomonBottomBarItem(
              icon: Icon(Icons.search),
              title: Text("Likes"),
              selectedColor: const Color.fromARGB(255, 0, 0, 0),
            ),

            /// Search
            SalomonBottomBarItem(
              icon: Icon(Icons.chat),
              title: Text("Search"),
              selectedColor: const Color.fromARGB(255, 0, 0, 0),
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: Icon(Icons.person),
              title: Text("Profile"),
              selectedColor: const Color.fromARGB(255, 0, 0, 0),
            ),
          ],
        ),
    );
  }
}
