import 'package:blackhole/Screens/Library/liked.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class FavoritesTab extends StatelessWidget {
const FavoritesTab({super.key, required this.title});
final String title;
@override
Widget build(BuildContext context) {
return ValueListenableBuilder<Box>(
valueListenable: Hive.box('Favorite Songs').listenable(),
builder: (BuildContext context, Box box, Widget? child) {
return LikedSongs(
key: ValueKey<int>(Object.hashAll(box.keys)),
playlistName: 'Favorite Songs',
showName: title,
);
},
);
}
}
