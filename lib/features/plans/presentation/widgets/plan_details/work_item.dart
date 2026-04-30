import 'package:fitness_app/features/plans/data/models/plan_step_model.dart';
import 'package:flutter/material.dart';
import 'package:fitness_app/core/extensions/responsive_extension.dart';

class WorkoutItem extends StatelessWidget {
  const WorkoutItem({super.key, required this.workout});

  final PlanStepModel workout;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16.w(context), vertical: 8.h(context)),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(8.r(context)),
            decoration: BoxDecoration(
              color: const Color(0xFF0F172A),
              borderRadius: BorderRadius.circular(8.r(context)),
            ),
            child: const Icon(
              Icons.fitness_center,
              color: Colors.blue,
              size: 18,
            ),
          ),
          SizedBox(width: 12.w(context)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                workout.workoutName,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.r(context),
                ),
              ),
              Text(
                '${workout.duration} sets × ${workout.reps} reps',
                style: TextStyle(color: Colors.grey, fontSize: 12.r(context)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
