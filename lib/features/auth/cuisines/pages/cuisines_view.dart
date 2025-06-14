import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipe_app/core/utils/colors.dart';
import 'package:recipe_app/features/common/widget/recipe_text_button_container.dart';

import '../cuisines_bloc.dart';
import '../cuisines_state.dart';

class CuisinesView extends StatelessWidget {
  const CuisinesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 37, right: 36, top: 15, bottom: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Select your cuisines preferences",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 20, fontFamily: "Poppins"),
            ),
            SizedBox(height: 15),
            Text(
              "Please select your cuisines preferences for a better recommendations or you can skip it.",
              style: TextStyle(
                fontFamily: "poppins",
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 20),
            BlocBuilder<CuisinesBloc, CuisinesState>(
              builder: (context, state) {
                if (state.status == CuisinesStatus.loading) {
                  return Center(child: CircularProgressIndicator());
                }
                if (state.status == CuisinesStatus.error) {
                  return Center(child: Text("Xatolik yuz berdi"));
                }
                if (state.status == CuisinesStatus.success) {
                  return Expanded(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 20.h,
                        crossAxisSpacing: 11.w,
                        mainAxisExtent: 141.h,
                      ),
                      itemCount: state.cuisines.length,
                      itemBuilder: (context, index) {
                        final category = state.cuisines[index];
                        return Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: AppColors.pinkSub,
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.network(
                                  category.image,
                                  width: 111.w,
                                  height: 111.h,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              category.title,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                fontFamily: "Poppins",
                              ),
                            )
                          ],
                        );
                      },
                    ),
                  );
                }
                return Center(child: Text("Ma'lumotlar yo'q"));
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.transparent,
        padding: EdgeInsets.only(bottom: 61),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RecipeTextButtonContainer(
              containerHeight: 45.h,
              containerWidth: 162.w,
              text: "skip",
              textColor: AppColors.redPinkMain,
              containerColor: AppColors.pink,
              callback: () {},
            ),
            RecipeTextButtonContainer(
              containerHeight: 45.h,
              containerWidth: 162.w,
              text: "Continue",
              textColor: Colors.white,
              containerColor: AppColors.redPinkMain,
              callback: () {},
            ),
          ],
        ),
      ),
    );
  }
}
