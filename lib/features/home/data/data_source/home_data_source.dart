import 'package:magic_rewards/features/home/data/models/home_model.dart';
import 'package:magic_rewards/features/home/domain/parameters/home_parameters.dart';

abstract class HomeDataSource {
  Future<HomeModel> getHome(HomeParameters parameters);
}
