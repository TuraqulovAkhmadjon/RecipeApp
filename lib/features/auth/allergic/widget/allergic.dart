import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipe_app/core/utils/colors.dart';

import '../maneger/allergic_bloc.dart';
import '../maneger/allergic_state.dart';

class Allergic extends StatelessWidget {
  const Allergic({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 37, right: 36),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "¿You have any allergic?",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 20, fontFamily: "Poppins"),
          ),
          SizedBox(height: 15),
          Text(
            "Lorem ipsum dolor sit amet consectetur. Leo ornare ullamcorper viverra ultrices in.",
            style: TextStyle(
              fontFamily: "poppins",
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 20),
          BlocBuilder<AllergicBloc, AllergicState>(
            builder: (context, state) {
              if (state.status == AllergicStatus.loading) {
                return Center(child: CircularProgressIndicator());
              }
              if (state.status == AllergicStatus.error) {
                return Center(child: Text("Xatolik yuz berdi"));
              }
              if (state.status == AllergicStatus.success) {
                return Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 20.h,
                      crossAxisSpacing: 11.w,
                      mainAxisExtent: 141.h,
                    ),
                    itemCount: state.allergic.length,
                    itemBuilder: (context, index) {
                      final category = state.allergic[index];
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
    );
  }
}
