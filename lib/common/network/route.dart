abstract class APIRoutes {
  APIRoutes._();



  static const auth = _Auth();
}

class _Auth {
  const _Auth();

  final login = 'dashboard/login';
  final logout = 'dashboard/logout';

}