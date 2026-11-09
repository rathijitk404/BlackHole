import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class _InstaIconPainter extends CustomPainter {
final Color color;
const _InstaIconPainter(this.color);
@override
void paint(Canvas canvas, Size size) {
final double k = size.width / 24;
final Paint line = Paint()
..color = color
..style = PaintingStyle.stroke
..strokeWidth = 2.2 * k;
canvas.drawRRect(
RRect.fromRectAndRadius(Rect.fromLTWH(3 * k, 3 * k, 18 * k, 18 * k), Radius.circular(5 * k)),
line,
);
canvas.drawCircle(Offset(12 * k, 12 * k), 4.2 * k, line);
canvas.drawCircle(Offset(17.7 * k, 6.5 * k), 1.35 * k, Paint()..color = color);
}
@override
bool shouldRepaint(covariant _InstaIconPainter old) => old.color != color;
}

class InstagramTile extends StatelessWidget {
const InstagramTile({super.key});
@override
Widget build(BuildContext context) {
return ListTile(
leading: SizedBox.square(
dimension: 40,
child: Center(
child: CustomPaint(
size: const Size(26, 26),
painter: _InstaIconPainter(Theme.of(context).iconTheme.color ?? Colors.white),
),
),
),
title: const Text('Want to follow Rathijit?'),
subtitle: const Text('@rathijitk_zero on Instagram'),
onTap: () {
launchUrl(Uri.parse('https://www.instagram.com/rathijitk_zero'), mode: LaunchMode.externalApplication);
},
);
}
}
