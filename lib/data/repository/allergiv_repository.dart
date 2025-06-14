import 'package:recipe_app/core/client.dart';

import '../model/allergic/allergic_model.dart';

class AllergicRepository {
  AllergicRepository({required this.client});

  final ApiClient client;

  List<AllergicModel> allergic = [];

  Future<List<AllergicModel>> fetchAllergic() async {
    final rawAllergic = await client.genericGetRequest<List<dynamic>>("/allergic/list");
    final allergic = rawAllergic.map((item) => AllergicModel.fromJson(item as Map<String, dynamic>)).toList();
    return allergic;
  }
}
