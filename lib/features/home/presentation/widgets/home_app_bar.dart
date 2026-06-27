import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
      child: Row(
        children: [
          _CircleButton(icon: Icons.menu_rounded, onTap: () {}),

          const Spacer(),

          Container(
            height: 38,
            padding: const EdgeInsets.symmetric(horizontal: 18),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.06),
                  blurRadius: 12,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: const Row(
              children: [
                CircleAvatar(radius: 3, backgroundColor: Color(0xffFF4D67)),
                SizedBox(width: 8),
                Text("Daily 25", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
              ],
            ),
          ),

          const Spacer(),

          _CircleButton(icon: Icons.bolt_outlined, onTap: () {}),

          const SizedBox(width: 10),

          _CircleButton(icon: Icons.tune, onTap: () {}),

          const SizedBox(width: 10),

          Stack(
            children: [
              _CircleButton(icon: Icons.notifications_none, onTap: () {}),

              Positioned(
                right: 10,
                top: 10,
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: const BoxDecoration(color: Color(0xffFF4D67), shape: BoxShape.circle),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _CircleButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const _CircleButton({required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      elevation: 1,
      shadowColor: Colors.black12,
      shape: const CircleBorder(),
      child: InkWell(
        onTap: onTap,
        customBorder: const CircleBorder(),
        child: SizedBox(width: 42, height: 42, child: Icon(icon, size: 22, color: Colors.black87)),
      ),
    );
  }
}
