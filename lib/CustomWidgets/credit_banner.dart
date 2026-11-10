import 'package:flutter/material.dart';

class CreditBanner extends StatelessWidget {
const CreditBanner({super.key});
@override
Widget build(BuildContext context) {
return const SafeArea(
top: false,
child: Padding(
padding: EdgeInsets.fromLTRB(16, 24, 16, 28),
child: Column(
mainAxisSize: MainAxisSize.min,
children: [
Text(
'DEVELOPED WITH PASSION',
textAlign: TextAlign.center,
style: TextStyle(color: Colors.white, fontSize: 11, fontWeight: FontWeight.w700, letterSpacing: 2.2),
),
SizedBox(height: 6),
Text(
'Created by \u{10082}Rathijit~',
textAlign: TextAlign.center,
style: TextStyle(color: Colors.white, fontSize: 19, fontWeight: FontWeight.w800),
),
],
),
),
);
}
}
