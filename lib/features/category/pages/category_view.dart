import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/features/category/maneger/category_bloc.dart';
import 'package:recipe_app/features/category/maneger/category_state.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Kategoriyalar")),
      body: Padding(
        padding: const EdgeInsets.only(left: 26, right: 26),
        child: BlocBuilder<CategoryBloc, CategoryState>(
          builder: (context, state) {
            if (state.status == CategoryStatus.success) {
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 27,
                  crossAxisSpacing: 24,
                ),
                itemCount: state.category.length > 6 ? 6 : state.category.length,
                itemBuilder: (context, index) {
                  final category = state.category[index];
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
                            category.image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );
            } else if (state.status == CategoryStatus.error) {
              return const Center(child: Text("Xatolik yuz berdi"));
            } else if (state.status == CategoryStatus.loading) {
              return const Center(child: CircularProgressIndicator());
            } else {
              return const Center(child: Text("Ma'lumotlar yo'q"));
            }
          },
        ),
      ),
    );
  }
}
