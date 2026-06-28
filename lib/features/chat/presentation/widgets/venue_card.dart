import 'package:flutter/material.dart';
import 'package:ftfl_task/core/constants/app_colors.dart';


class VenueCard extends StatelessWidget {
  const VenueCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 18),
      padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
      decoration: BoxDecoration(
        color: AppColors.white.withValues(alpha: 0.4),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(26) , bottomRight: Radius.circular(26)),
        border: Border(left: BorderSide(color: AppColors.primary.withValues(alpha: 0.4), width: 1), right: BorderSide(color: AppColors.primary.withValues(alpha: 0.4), width: 1),bottom: BorderSide(color: AppColors.primary.withValues(alpha: 0.4), width: 1)),
      ),
      child: Column(spacing:8,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(26) , bottomRight: Radius.circular(18)),
            ),
            child: const Row(spacing:4,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.shield_outlined,
                  size: 18,
                  color: Colors.blueGrey,
                ),
                Expanded(
                  child: Text(
                    "Meet at the venue - your exact location stays private.\nHave a great date!",
                    style: TextStyle(
                      fontSize: 11,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 120,
            decoration: BoxDecoration(
              color: AppColors.scaffold.withValues(alpha: 0.5),
              borderRadius: BorderRadius.circular(22),
              border: Border.all(
                color: AppColors.primary.withValues(alpha: .10),
              ),
            ),
            child: Stack(
              children: [
                Positioned.fill(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(22),
                    child: CustomPaint(
                      painter: _GridPainter(),
                    ),
                  ),
                ),

                Center(
                  child: Icon(
                    Icons.location_on,
                    size: 36,
                    color: AppColors.primary,
                  ),
                ),

                Align(alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: const Row(spacing:2,
                      children: [
                        Icon(
                          Icons.location_pin,
                          color: AppColors.primary,size: 14,
                        ),
                        Text(
                          "Blue Tokai",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Add to calendar",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(width: 14),

              Expanded(
                child: SizedBox(
                  height: 52,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                        color: AppColors.grey.withValues(alpha: .2),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Get directions",
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _GridPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xffF2E8EC)
      ..strokeWidth = .8;

    const gap = 28.0;

    for (double x = 0; x < size.width; x += gap) {
      canvas.drawLine(
        Offset(x, 0),
        Offset(x, size.height),
        paint,
      );
    }

    for (double y = 0; y < size.height; y += gap) {
      canvas.drawLine(
        Offset(0, y),
        Offset(size.width, y),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}