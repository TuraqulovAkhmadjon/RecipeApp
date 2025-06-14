import 'package:recipe_app/core/client.dart';
import 'package:recipe_app/data/cuisines/cuisines_model.dart';

class CuisinesRepository {
  CuisinesRepository({required this.client});

  final ApiClient client;

  List<CuisinesModel> cuisines = [];

  Future<List<CuisinesModel>> fetchCuisines() async {
    final rawCuisines = await client.genericGetRequest<List<dynamic>>("/cuisines/list");
    final cuisines  = rawCuisines.map((item) => CuisinesModel.fromJson(item as Map<String, dynamic>)).toList();
    return cuisines;
  }
}
