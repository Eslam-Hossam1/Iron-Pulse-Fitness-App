import 'package:fitness_app/features/plans/data/models/plan_step_model.dart';
import 'package:fitness_app/features/plans/presentation/widgets/plan_details/work_item.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app/core/extensions/responsive_extension.dart';

class DayCard extends StatelessWidget {
  const DayCard({
    super.key,
    required this.day,
    required this.workouts,
    required this.isExpanded,
    required this.onTap,
  });

  final int day;
  final List<PlanStepModel> workouts;
  final bool isExpanded;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h(context)),
      decoration: BoxDecoration(
        color: const Color(0xFF1E1E2E),
        borderRadius: BorderRadius.circular(12.r(context)),
      ),
      child: Column(
        children: [
          InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(12.r(context)),
            child: Padding(
              padding: EdgeInsets.all(16.r(context)),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'DAY $day',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 12.r(context),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4.h(context)),
                        Text(
                          'Day $day Workout',
                          style: TextStyle(
                            fontSize: 16.r(context),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    isExpanded
                        ? Icons.keyboard_arrow_down
                        : Icons.keyboard_arrow_right,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ),
          if (isExpanded)
            ...workouts.map((workout) => WorkoutItem(workout: workout)),
        ],
      ),
    );
  }
}
