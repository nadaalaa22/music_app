import 'package:flutter/material.dart';
import 'package:music_app/presentation/widget/music_item.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(

            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.blue,  // بداية التدرج (الأزرق)
                      Colors.black, // نهاية التدرج
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Center(
                    child:  Text(
                      'Overview',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Colors.white),
                    )
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Recently played',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                  SizedBox(
                    height: 150,
                    child: ListView.builder(
                      itemBuilder: (_, i) => MusicItem(),
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  Text(
                    'Today\'s Recommendation',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                  SizedBox(
                    height: 150,
                    child: ListView.builder(
                      itemBuilder: (_, i) => MusicItem(),
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  Text(
                    'New Releases',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                  SizedBox(
                    height: 150,
                    child: ListView.builder(
                      itemBuilder: (_, i) => MusicItem(),
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  Text(
                    'Your Favorite',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                  SizedBox(
                    height: 150,
                    child: ListView.builder(
                      itemBuilder: (_, i) => MusicItem(),
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  Text(
                    'legacy Songs',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                  SizedBox(
                    height: 150,
                    child: ListView.builder(
                      itemBuilder: (_, i) => MusicItem(),
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  Text(
                    'Old School',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                  SizedBox(
                    height: 150,
                    child: ListView.builder(
                      itemBuilder: (_, i) => MusicItem(),
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
