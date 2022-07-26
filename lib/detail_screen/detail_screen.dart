import 'package:cht_tour_guide/models/model_class_and_list.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final ModelClass listDetails;
  const DetailScreen({Key? key, required this.listDetails}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        //title
        title: Text(widget.listDetails.placeName),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 500.0,
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage(
                  //image url
                  widget.listDetails.imgUrl,
                ),
              ),
            ),
            //container start.................
            InfoCard(
              title: widget.listDetails.goAway,
              dis: widget.listDetails.goAwayDis,
            ),
            InfoCard(
              title: widget.listDetails.food,
              dis: widget.listDetails.foodDis,
            ),
            InfoCard(
              title: widget.listDetails.hotel,
              dis: widget.listDetails.hotelDis,
            ),
            //container end...............................
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  const InfoCard({
    Key? key,
    required this.title,
    required this.dis,
  }) : super(key: key);

  final String title;
  final String dis;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            // height: 40.0,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.0),
              ),
            ),
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20.0),
            // height: 300.0,
            decoration: BoxDecoration(
              color: Colors.blueGrey[700],
              // borderRadius: BorderRadius.only(
              //   topRight: Radius.circular(30.0),
              // ),
            ),
            child: Text(
              dis,
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
