import "package:auto_route/auto_route.dart";
import "app_router.gr.dart";

@AutoRouterConfig(replaceInRouteName: "Screen|Page,Route")
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.cupertino(); //.cupertino, .adaptive ..etc

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: ChatRoute.page, path: "/"),


  ];
}