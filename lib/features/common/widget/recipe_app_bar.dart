
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../core/utils/colors.dart';
import 'recipe_icon_button.dart';

class RecipeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const RecipeAppBar({
    super.key,
    required this.title,
    this.bottom,
    this.toolbarHeight = 72,
    required this.actions,
    this.centerTitle = true,
  });
  final bool centerTitle;
  final String title;
  final double toolbarHeight;
  final PreferredSizeWidget? bottom;

  final List<Widget>? actions;

  @override
  Size get preferredSize {
    final double? bottomHeight = bottom?.preferredSize.height;
    final height = bottomHeight == null ? toolbarHeight : bottomHeight + toolbarHeight;
    return Size(double.infinity, height);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 36.w, vertical: 10.h),
      child: AppBar(
        toolbarHeight: toolbarHeight,
        leading: Align(
          alignment: Alignment.centerLeft,
          child: RecipeIconButton(
            image: "assets/icons/back-arrow.svg",
            size: const Size(25, 17),
            callback: () => context.pop(),
          ),
        ),
        centerTitle: centerTitle,
        title: Text(
          title,
          style: TextStyle(
            color: AppColors.redPinkMain,
            fontFamily: "Poppins",
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: actions,
        bottom: bottom,
      ),
    );
  }
}
