import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:recipe_app/data/repository/allergiv_repository.dart';
import 'package:recipe_app/data/repository/category_repository.dart';
import 'package:recipe_app/data/repository/cuisines_repository.dart';
import 'package:recipe_app/data/repository/onboarding_repository.dart';

import 'client.dart';

final List<SingleChildWidget> providers = [
  Provider(
    create: (context) => ApiClient(),
  ),
  Provider(
    create: (context) => OnboardingRepository(
      client: context.read(),
    ),
  ),
  Provider(
    create: (context) => CategoryRepository(
      client: context.read(),
    ),
  ),
  Provider(
    create: (context) => AllergicRepository(
      client: context.read(),
    ),
  ),
  Provider(
    create: (context) => CuisinesRepository(client: context.read()),
  )
];
