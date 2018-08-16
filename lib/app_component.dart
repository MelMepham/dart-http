import 'package:angular/angular.dart';
import 'package:http/http.dart';
import 'package:http/browser_client.dart';

import 'dart:async';
import 'dart:convert';

import 'view/view_component.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  directives: [coreDirectives, ViewComponent]
)
class AppComponent implements OnInit {


  ngOnInit() {
  }
}
