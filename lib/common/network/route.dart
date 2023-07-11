abstract class APIRoutes {
  APIRoutes._();

  static const baseUrl = "https://demo.powerofcode.net/bashar/public/api/";

  static const auth = _Auth();
  static const home=_Home();
}

class _Auth {
  const _Auth();

  final login = 'dashboard/login';
  final logout = 'dashboard/logout';
  final profile = "dashboard/user-profile";
}
class _Home {
  const _Home();

  final getHome = 'dashboard/post';
}
