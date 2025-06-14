import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/colors.dart';
import '../../../../category/maneger/category_bloc.dart';
import '../../../../category/maneger/category_state.dart';
import '../../../../common/widget/recipe_icon_button.dart';
import '../../../../common/widget/recipe_text_button_container.dart';
import '../../../../common/widget/title_and_discription.dart';

class Onboarding3 extends StatelessWidget {
  const Onboarding3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: AppColors.beigeColor,
      appBar: AppBar(
        leading: RecipeIconButton(
          image: "assets/icons/back-arrow.svg",
          callback: () => context.pop(),
        ),
        backgroundColor: AppColors.beigeColor,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 26, right: 26, bottom: 20),
        child: BlocBuilder<CategoryBloc, CategoryState>(
          builder: (context, state) {
            if (state.status == CategoryStatus.success) {
              return Column(
                spacing: 15,
                children: [
                  SizedBox(height: 16),
                  Expanded(
                    child: GridView.builder(
                      itemCount: state.category.length > 6 ? 6 : state.category.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 27,
                        crossAxisSpacing: 24,
                      ),
                      itemBuilder: (context, index) {
                        final category = state.category[index];
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
                            category.image,
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                    ),
                  ),
                  TitleAndDescription(
                    title: "Welcome",
                    desc:
                        "Find the best recipes that the world can provide you also with every step that you can learn to increase your cooking skills.",
                  ),
                  RecipeTextButtonContainer(
                    text: "I’m New",
                    containerWidth: 207.w,
                    containerHeight: 45.h,
                    textColor: AppColors.redPinkMain,
                    containerColor: AppColors.pink,
                    callback: () {},
                  ),
                  RecipeTextButtonContainer(
                    text: "I’ve been here ",
                    containerWidth: 207.w,
                    containerHeight: 45.h,
                    textColor: AppColors.redPinkMain,
                    containerColor: AppColors.pink,
                    callback: () {},
                  ),
                ],
              );
            } else if (state.status == CategoryStatus.loading) {
              return Center(child: CircularProgressIndicator());
            } else if (state.status == CategoryStatus.error) {
              return Center(child: Text("Xatolik yuz berdi"));
            } else {
              return Center(child: Text("Ma'lumotlar yo'q"));
            }
          },
        ),
      ),
    );
  }
}
