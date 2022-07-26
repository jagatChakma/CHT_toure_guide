import 'dart:ui';
import 'package:cht_tour_guide/detail_screen/detail_screen.dart';
import 'package:cht_tour_guide/models/model_class_and_list.dart';
import 'package:flutter/material.dart';

class Bandarban extends StatefulWidget {
  const Bandarban({Key? key}) : super(key: key);

  @override
  State<Bandarban> createState() => _BandarbanState();
}

class _BandarbanState extends State<Bandarban> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: bandarbanList.length,
        itemBuilder: (contex, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (contex) => DetailScreen(
                    listDetails: bandarbanList[index],
                  ),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              height: 200.0,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 7,
                    child: Container(
                      height: double.infinity,
                      width: 250.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            bandarbanList[index].imgUrl.toString(),
                          ),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            bandarbanList[index].placeName,
                            style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          Text(
                            "${bandarbanList[index].goAway} km from \n Bandarban",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black54,
                            ),
                          ),
                          SizedBox(
                            height: 12.0,
                          ),
                          Text(
                            bandarbanList[index].goAwayDis,
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black54,
                            ),
                          ),
                          Text("data"),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
