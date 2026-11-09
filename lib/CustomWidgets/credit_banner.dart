import 'package:flutter/material.dart';

class CreditBanner extends StatelessWidget {
const CreditBanner({super.key});
@override
Widget build(BuildContext context) {
return SizedBox(
width: double.infinity,
child: AspectRatio(
aspectRatio: 1080 / 517,
child: Stack(
children: [
const Positioned.fill(child: CustomPaint(painter: _BannerPainter())),
const Align(
alignment: Alignment(0, 0.6),
child: FittedBox(
fit: BoxFit.scaleDown,
child: Column(
mainAxisSize: MainAxisSize.min,
children: [
Text(
'DEVELOPED WITH PASSION',
style: TextStyle(color: Color(0xFF254A9A), fontSize: 11, fontWeight: FontWeight.w800, letterSpacing: 2.2),
),
SizedBox(height: 6),
Text(
'Created by \u{10082}Rathijit~',
style: TextStyle(color: Color(0xFF0F2E7A), fontSize: 19, fontWeight: FontWeight.w800),
),
],
),
),
),
],
),
),
);
}
}

class _BannerPainter extends CustomPainter {
const _BannerPainter();
@override
void paint(Canvas canvas, Size size) {
final double s = size.width / 1080;
canvas.drawRect(Offset.zero & size, Paint()..color = const Color(0xFFEEF2FB));
Path poly(List<List<double>> p) {
final Path path = Path()..moveTo(p[0][0] * s, p[0][1] * s);
for (final List<double> q in p.skip(1)) {
path.lineTo(q[0] * s, q[1] * s);
}
return path..close();
}
canvas.drawPath(
poly([[0, 290], [190, 255], [340, 88], [480, 215], [568, 167], [690, 235], [797, 148], [910, 225], [1080, 185], [1080, 517], [0, 517]]),
Paint()..color = const Color(0xFFB9D4FE),
);
canvas.drawPath(
poly([[0, 305], [150, 240], [262, 287], [427, 175], [532, 262], [650, 205], [770, 282], [905, 220], [1080, 292], [1080, 517], [0, 517]]),
Paint()..color = const Color(0xFF8DBFFF),
);
final Paint tp = Paint()..color = const Color(0xFF2B72F0);
void tree(double cx, double top, double w, double h, double trunk) {
canvas.drawPath(poly([[cx, top], [cx - 0.36 * w, top + 0.55 * h], [cx + 0.36 * w, top + 0.55 * h]]), tp);
canvas.drawPath(poly([[cx, top + 0.3 * h], [cx - 0.5 * w, top + h], [cx + 0.5 * w, top + h]]), tp);
canvas.drawRect(Rect.fromLTWH((cx - 0.12 * w) * s, (top + h) * s, 0.24 * w * s, trunk * s), tp);
}
tree(92, 170, 64, 82, 40);
tree(170, 222, 44, 56, 26);
tree(987, 155, 72, 95, 45);
}
@override
bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
