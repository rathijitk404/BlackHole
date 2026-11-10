import 'package:blackhole/Screens/Search/search.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class SearchTab extends StatefulWidget {
const SearchTab({super.key});
@override
State<SearchTab> createState() => _SearchTabState();
}

class _SearchTabState extends State<SearchTab> {
void _open(String query) {
Navigator.push(
context,
MaterialPageRoute(
builder: (context) => query.isEmpty
? const SearchPage(query: '', fromHome: true, autofocus: true)
: SearchPage(query: query, fromDirectSearch: true),
),
).then((_) => setState(() {}));
}

@override
Widget build(BuildContext context) {
final List history = Hive.box('settings').get('search', defaultValue: []) as List;
final Color accent = Theme.of(context).colorScheme.secondary;
return Scaffold(
backgroundColor: Colors.transparent,
body: SafeArea(
child: ListView(
padding: const EdgeInsets.all(16),
children: [
const SizedBox(height: 8),
InkWell(
borderRadius: BorderRadius.circular(16),
onTap: () => _open(''),
child: Container(
height: 54,
padding: const EdgeInsets.symmetric(horizontal: 16),
decoration: BoxDecoration(
color: Theme.of(context).cardColor,
borderRadius: BorderRadius.circular(16),
),
child: Row(
children: [
Icon(Icons.search_rounded, color: accent),
const SizedBox(width: 12),
Text(
'Search songs, albums, artists',
style: TextStyle(fontSize: 16, color: Theme.of(context).textTheme.bodySmall!.color),
),
],
),
),
),
if (history.isNotEmpty) ...[
const SizedBox(height: 24),
Text('Recent searches', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: accent)),
const SizedBox(height: 8),
Wrap(
spacing: 8,
children: history.map((e) => ActionChip(label: Text(e.toString()), onPressed: () => _open(e.toString()))).toList(),
),
],
],
),
),
);
}
}
