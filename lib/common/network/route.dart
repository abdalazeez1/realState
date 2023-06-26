abstract class APIRoutes {
  APIRoutes._();

static const baseUrl = "https://demo.powerofcode.net/bashar/public/api/";

  static const auth = _Auth();
}

class _Auth {
  const _Auth();

  final login = 'dashboard/login';
  final logout = 'dashboard/logout';

}