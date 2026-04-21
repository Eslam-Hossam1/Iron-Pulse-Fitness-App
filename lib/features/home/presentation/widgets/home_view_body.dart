import 'package:flutter/material.dart';
import 'package:fitness_app/core/widgets/spacing/sliver_height_space.dart';
import 'package:fitness_app/features/home/presentation/widgets/header/custom_home_app_bar.dart';
import 'package:fitness_app/features/home/presentation/widgets/featured_plans/featured_plans_builder.dart';
import 'package:fitness_app/features/home/presentation/widgets/common/home_section_header.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverHeightSpace(height: 24),
        SliverToBoxAdapter(child: CustomHomeAppBar()),
        SliverHeightSpace(height: 24),
        SliverToBoxAdapter(
          child: HomeSectionHeader(title: 'Featured Workout Plans'),
        ),
        SliverHeightSpace(height: 16),
        FeaturedPlansBuilder(),
        SliverHeightSpace(height: 24),
      ],
    );
  }
}
