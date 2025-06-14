import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:recipe_app/features/common/widget/recipe_icon_button.dart';
import '../../cuisines/cuisines_bloc.dart';
import '../../cuisines/pages/cuisines_view.dart';
import '../maneger/allergic_bloc.dart';
import '../widget/allergic.dart';

class AllergicView extends StatelessWidget {
  const AllergicView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: RecipeIconButton(image: "assets/icons/back-arrow.svg", callback: context.pop),
          bottom: PreferredSize(
            preferredSize: Size.zero,
            child: TabBar(
              dividerHeight: 12,
              indicatorWeight: 12,
              indicatorSize: TabBarIndicatorSize.values.first,
              dividerColor: Theme.of(context).colorScheme.onPrimary,
              padding: EdgeInsets.symmetric(horizontal: 100),
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Theme.of(context).colorScheme.primary,
              ),
              tabs: [
                SizedBox.shrink(),
                SizedBox.shrink(),
                SizedBox.shrink(),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('1-bosqich')),
            BlocProvider(
                create: (context) => CuisinesBloc(
                      cuisinesRepo: context.read(),
                    ),
                child: CuisinesView()),
            BlocProvider(
                create: (context) => AllergicBloc(
                      allergicRepo: context.read(),
                    ),
                child: Allergic()),
          ],
        ),
      ),
    );
  }
}
