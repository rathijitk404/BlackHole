import 'package:flutter/material.dart';

class CreditBanner extends StatelessWidget {
const CreditBanner({super.key, this.bottom = 28});
final double bottom;
@override
Widget build(BuildContext context) {
final Color c = Theme.of(context).textTheme.bodyLarge?.color ?? Colors.white;
return SafeArea(
top: false,
child: Padding(
padding: EdgeInsets.fromLTRB(16, 24, 16, bottom),
child: FittedBox(
fit: BoxFit.scaleDown,
child: Column(
mainAxisSize: MainAxisSize.min,
children: [
Text(
'DEVELOPED WITH PASSION',
textAlign: TextAlign.center,
style: TextStyle(color: c, fontSize: 11, fontWeight: FontWeight.w700, letterSpacing: 2.2),
),
const SizedBox(height: 6),
Text(
'Created by \u{10082}Rathijit~',
textAlign: TextAlign.center,
style: TextStyle(color: c, fontSize: 19, fontWeight: FontWeight.w800),
),
],
),
),
),
);
}
}
