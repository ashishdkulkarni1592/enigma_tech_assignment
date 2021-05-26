import 'package:EnigmaAssignement/application/router.dart';
import 'package:EnigmaAssignement/common/di/base_module.dart';

import 'app.dart';

class AppModule extends BaseModule {
  AppModule(injector) : super(injector) {
    /// Application
    injector.map<AppRouter>((i) => AppRouter());
    injector.map<Application>(
      (i) => Application(
        inject<AppRouter>(),
      ),
    );
  }
}
