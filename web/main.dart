import 'package:angular/angular.dart';
import 'package:angular_app/app_component.template.dart' as ng;

import 'package:http/http.dart';
import 'package:http/browser_client.dart';

import 'main.template.dart' as self;

@GenerateInjector([
  ClassProvider(BrowserClient),
])
final InjectorFactory injector = self.injector$Injector;

void main() {
  runApp(ng.AppComponentNgFactory, createInjector: injector);
}
