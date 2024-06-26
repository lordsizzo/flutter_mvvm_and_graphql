import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/mainview_model_online.dart';
import '../repository/mainview_repository_online.dart';

final apiServiceProvider = Provider<ServerViewModel>((ref) => ServerViewModel());

class ServerViewModel extends StateNotifier<List<GraphQLModel>> {
  ServerViewModel() : super([]);

  final _mainViewRepositoryOnlineApi = MainViewRepositoryOnlineApi();
  Future<List<GraphQLModel>> getRepositories() async => state = await _mainViewRepositoryOnlineApi.getRepositories();
}