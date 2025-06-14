import 'package:recipe_app/core/client.dart';
import 'package:recipe_app/data/model/onboarding/onboarding_model.dart';

class OnboardingRepository {
  final ApiClient client;

  OnboardingRepository({required this.client});

  Future<List<OnboardingModel>> fetchOnboarding() async {
    final rawOnboarding = await client.genericGetRequest<List<dynamic>>("/onboarding/list");
    final onboarding = rawOnboarding.map((item) => OnboardingModel.fromJson(item as Map<String, dynamic>)).toList();

    return onboarding;
  }
}
