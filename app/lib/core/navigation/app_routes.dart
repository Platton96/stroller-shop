abstract final class AppRoutes {
  static const tabs = '/';
  static const strollerDetailsPath = 'strollers/:strollerId';
  static const strollerIdParameter = 'strollerId';

  static String strollerDetails(String strollerId) => '/strollers/$strollerId';
}
