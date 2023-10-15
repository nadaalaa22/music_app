import 'package:flutter/material.dart';

class MusicItem extends StatelessWidget {
  const MusicItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {},
        child: SizedBox(
          height: 200,
          width: 200,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: GridTile(
              footer: Container(height: 50, child: Text('Song Name',style: TextStyle(fontSize: 18,color: Colors.white),)),
              child: Column(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.bottomStart,
                    children: [
                      Image.network(
                        'https://img.freepik.com/premium-photo/concept-eternal-theme-about-eternity-music-musical-instruments-good-mood-ascended-aspiration-action-treble-clef-sheet-music_771426-4115.jpg',
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.grey.withOpacity(0.5),
                            child: Icon(
                          Icons.play_arrow_rounded,
                              color: Colors.white,

                        )),
                      ),
                    ],
                  ),
                  // Text('song name',style: TextStyle(fontSize: 18),),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
