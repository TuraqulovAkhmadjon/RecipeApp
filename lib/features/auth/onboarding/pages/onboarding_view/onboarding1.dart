import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/utils/colors.dart';
import '../../../../common/widget/recipe_text_button_container.dart';
import '../../../../common/widget/title_and_discription.dart';
import '../../maneger/onboarding_bloc.dart';
import '../../maneger/onboarding_state.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: BlocBuilder<OnboardingBloc, OnboardingState>(
        builder: (context, state) {
          return switch (state.status) {
            OnboardingStatus.error => const Center(
                child: Text("Xatolik bor"),
              ),
            OnboardingStatus.loading => const Center(
                child: CircularProgressIndicator(),
              ),
            OnboardingStatus.initial => state.onboarding.isNotEmpty
                ? SizedBox.expand(
                    child: Stack(
                      children: [
                        Image.network(
                          state.onboarding[0].image,
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.black.withValues(alpha: 1),
                                Colors.transparent,
                                Colors.transparent,
                                Colors.black.withValues(alpha: 0.8),
                              ],
                              stops: [0.0, 0.4, 0.7, 1],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 26, right: 26),
                          child: TitleAndDescription(
                            title: state.onboarding[0].title,
                            desc: state.onboarding[0].subtitle,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 35),
                            child: RecipeTextButtonContainer(
                              text: "Continue",
                              textColor: AppColors.pinkSub,
                              containerHeight: 45.h,
                              containerWidth: 207.w,
                              containerColor: AppColors.pink,
                              callback: () {
                                context.push(Routes.onboarding2);
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                : Center(child: Text("Hech qanday ma'lumot yo'q")),
          };
        },
      ),
    );
  }
}
