import 'package:flutter/material.dart';
import 'package:fitness_app/core/extensions/responsive_extension.dart';

class Chip extends StatelessWidget {
  const Chip({super.key, required this.label, required this.color});

  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w(context), vertical: 4.h(context)),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6.r(context)),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: Colors.white,
          fontSize: 11.r(context),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class StatItem extends StatelessWidget {
  const StatItem({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.r(context)),
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E2E),
        borderRadius: BorderRadius.circular(12.r(context)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Colors.blue, size: 22.r(context)),
          SizedBox(height: 8.h(context)),
          Text(
            label,
            style: TextStyle(color: Colors.grey, fontSize: 12.r(context)),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 4.h(context)),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              value,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.r(context)),
            ),
          ),
        ],
      ),
    );
  }
}
