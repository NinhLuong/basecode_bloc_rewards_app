import 'package:magic_rewards/config/env/app_env_config.dart';

/// class [ApisUrls] contains all URLs to external services, services,
/// or APIs, according to the following figure
///
/// add new APIs URL in this way:
/// EX: static final String {verb}featureName = '$_baseApiUrl/{route}';

class ApisUrls {
  /// [_baseUrl] base server url
  static final String _baseUrl = AppEnvConfig.apiBaseUrl; //live
  // static final String _baseUrl = 'https://dev.magic-rewards.com/admin';//dev
  // static final String _baseUrl = 'http://10.0.2.2:8000/admin';//local
  // static final String _baseUrl = 'http://172.20.10.4/admin';//ubuntu

  /// [_baseApiUrl] base API url
  // static final String _baseApiUrl = '$_baseUrl/api/v3';
  static final String _baseApiUrl = '$_baseUrl/api/v4';

  /// [_baseImagesUrl] base Images Url
  static final String _baseImagesUrl = '$_baseUrl/images';

  static String baseImagesUrl(String url) => '$_baseImagesUrl/$url';

  static String privacyPolicy =
      '${_baseUrl.replaceAll('/admin', '')}/privacypolicy.html';

  /// Auth Feature APIs
  static final String login = '$_baseApiUrl/account.signIn.php';
  static final String register = '$_baseApiUrl/account.signUp.php';
  static final String checkEmail = '$_baseApiUrl/account.verify.email.php';

  /// Category Feature APIs
  static String getCategories(String id) =>
      '$_baseApiUrl/categories/section/$id?lang=en';

  ///Offer Walls
  static final String home = '$_baseApiUrl/account.home.php';

  ///Blance
  static final String blance = "$_baseApiUrl/account.Balance.php";

  ///LiveOffers
  static final String liveOffers = '$_baseApiUrl/account.live.offers.php';

  ///rewards
  static final String payouts = '$_baseApiUrl/account.Payouts.php';
  static final String redeem = '$_baseApiUrl/account.Redeem.php';
  static final String orders = '$_baseApiUrl/account.orders.php';
  static final String transactions = '$_baseApiUrl/account.transactions.php';
  static final String profile = '$_baseApiUrl/account.profile.php';
  static final String deleteAccount = '$_baseApiUrl/account.delete.php';

  ///top users
  static final String topUsers = '$_baseApiUrl/account.top.users.php';

  ///tasks
  static final String tasks = '$_baseApiUrl/account.tasks.php';
  static final String reserveComment =
      '$_baseApiUrl/account.reserve.comment.php';
  static final String addTaskOrder = '$_baseApiUrl/account.add.task.order.php';
  static final String tasksOrders = '$_baseApiUrl/account.tasks.orders.php';
}
