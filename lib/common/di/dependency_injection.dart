import 'package:EnigmaAssignement/application/di.dart';
import 'package:EnigmaAssignement/ui/login/provider.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';

class Dependency {
  Dependency._internal();

  static final Dependency _container = Dependency._internal();

  factory Dependency() => _container;

  Injector injector;

  T inject<T>() {
    return injector.get<T>();
  }

  void initialise() {
    injector = Injector.getInjector();

    ///Application classes.
    AppModule(injector);
    injector.map<LandingPageProvider>((injector) => LandingPageProvider());
  }
}
