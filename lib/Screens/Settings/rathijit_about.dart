import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class RathijitAboutPage extends StatelessWidget {
  const RathijitAboutPage({super.key});

  static const List<Map<String, dynamic>> links = [
    {
      'icon': Icons.code_rounded,
      'title': 'GitHub',
      'handle': 'Rathijitk404',
      'url': 'https://github.com/Rathijitk404',
    },
    {
      'icon': Icons.send_rounded,
      'title': 'Telegram Group',
      'handle': '@Rathijitk_PATCH',
      'url': 'https://t.me/Rathijitk_PATCH',
    },
    {
      'icon': Icons.camera_alt_rounded,
      'title': 'Instagram',
      'handle': '@rathijitk_zero',
      'url': 'https://www.instagram.com/rathijitk_zero',
    },
  ];

  @override
  Widget build(BuildContext context) {
    const Color bg = Color(0xFF0F0F14);
    const Color card = Color(0xFF1B1B24);
    final Color accent = Theme.of(context).colorScheme.secondary;
    return Scaffold(
      backgroundColor: bg,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 40),
          children: [
            const SizedBox(height: 20),
            Center(
              child: ClipOval(
                child: SizedBox(
                  width: 126,
                  height: 126,
                  child: Image.asset(
                    'assets/profile.png',
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stack) => Image.asset(
                      'assets/ic_launcher.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 28),
            const Text(
              'RYÚK ZÉRÖ',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 6),
            const Text(
              'in short: Rathijit',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white70, fontSize: 16),
            ),
            const SizedBox(height: 6),
            const Text(
              'Independent Developer and Creator',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white38, fontSize: 15),
            ),
            const SizedBox(height: 22),
            Center(
              child: Container(
                width: 64,
                height: 4,
                decoration: BoxDecoration(
                  color: accent,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
            const SizedBox(height: 32),
            Container(
              decoration: BoxDecoration(
                color: card,
                borderRadius: BorderRadius.circular(28),
              ),
              child: Column(
                children: links.map((e) {
                  return ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 22,
                      vertical: 8,
                    ),
                    leading: Icon(e['icon'] as IconData, color: Colors.white70),
                    title: Text(
                      e['title'].toString(),
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    subtitle: Text(
                      e['handle'].toString(),
                      style: const TextStyle(color: Colors.white54),
                    ),
                    trailing: const Icon(
                      Icons.chevron_right_rounded,
                      color: Colors.white38,
                    ),
                    onTap: () => launchUrl(
                      Uri.parse(e['url'].toString()),
                      mode: LaunchMode.externalApplication,
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
