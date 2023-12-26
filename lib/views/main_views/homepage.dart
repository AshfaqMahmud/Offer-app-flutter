import 'dart:ui';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:testapp/consts/consts.dart';
import 'package:testapp/widgets_common/search_bar.dart';

final List<String> options = [
  'Option 1',
  'Option 2',
  'Option 3',
  'Option 4',
  'Option 5',
  'Option 6',
  'Option 7',
  'Option 8',
  // Add more options as needed
];

final List<String> imgList = [
  'https://cdn.wedevs.com/uploads/2021/04/weDevs-Black-friday-offer-1024x559.png',
  'https://www.ryanscomputers.com/storage/sliders/Order-Online-Express-Delivery-in-Dhaka-Main-Slide_1702528248.webp',
  'https://www.ryanscomputers.com/storage/sliders/Intel-Sweater-free-offer-Slider_1702882775.webp',
  'https://www.startech.com.bd/image/cache/catalog/home/banner/winter-fest/winter-fest-bkash-free-delivery-home-982x500.png',
  'https://www.startech.com.bd/image/cache/catalog/home/banner/winter-fest/winter-fest-bkash-free-delivery-home-982x500.png',
  'https://sailors3bucket1.s3.ap-southeast-1.amazonaws.com/uploads/all/plxBU20pKXEnCTYZ50MhTBHF5wCpG9Khu0exzFHv.jpg'
];
final themeMode = ValueNotifier(2);

class HomePage extends StatelessWidget {
  CarouselController buttonCarouselController = CarouselController();
  //const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      builder: (context, value, g) {
        return MaterialApp(
          initialRoute: '/position',
          darkTheme: ThemeData.dark(),
          themeMode: ThemeMode.values.toList()[value as int],
          debugShowCheckedModeBanner: false,
          routes: {
            '/position': (ctx) => KeepPageviewPositionDemo(),
          },
        );
      },
      valueListenable: themeMode,
    );
  }
}

class DemoItem extends StatelessWidget {
  final String title;
  final String route;
  DemoItem(this.title, this.route);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.pushNamed(context, route);
      },
    );
  }
}

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item, fit: BoxFit.cover, width: 1000.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 5.0),
                        child: Text(
                          'No. ${imgList.indexOf(item)} image',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();

class KeepPageviewPositionDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        40.heightBox,
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SearchBar(),
          ),
        ),
        5.heightBox,
        CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 16 / 9,
            enlargeCenterPage: false,
            autoPlay: true,
            viewportFraction: 1.0,
          ),
          items: imgList.map((url) {
            return Container(
              margin: const EdgeInsets.all(10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  url,
                  fit: BoxFit.cover,
                  width: 1000.0,
                ),
              ),
            );
          }).toList(),
        ),
        5.heightBox,
        Flexible(
          fit: FlexFit.loose,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 0.0,
              mainAxisSpacing: 8.0,
            ),
            itemCount: options.length,
            itemBuilder: (context, index) {
              return OptionCard(option: options[index]);
            },
          ),
        )
      ],
    ).box.cyan100.make());
  }
}

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minHeight: 50.0, // Set your desired minimum height
      ),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: const TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search),
          hintText: 'Search your favorite brand',
          hintStyle: TextStyle(color: Colors.grey),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class OptionCard extends StatelessWidget {
  final String option;

  OptionCard({required this.option});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 7.0),
      child: Card(
        elevation: 5.0,
        child: Center(
          child: Text(
            option,
            style: TextStyle(fontSize: 16.0),
          ),
        ),
      ),
    );
  }
}
