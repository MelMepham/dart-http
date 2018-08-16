import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';

import 'package:http/http.dart';
import 'package:http/browser_client.dart';

import 'dart:async';
import 'dart:convert';

@Component(
    selector: 'view-app',
    templateUrl: 'view_component.html',
    styleUrls: ['view_component.css'],
    directives: [formDirectives, coreDirectives],
    )
    
class ViewComponent implements OnInit {

  String usernameText;

  dynamic json_response;

  bool foundProfile = false;
  bool err = false;
  dynamic _extractData(Response resp) => json.decode(resp.body);

  void search() async {
    dynamic client = new BrowserClient();
    String url = 'https://api.github.com/users/' + usernameText;
    final response = await client.get(url);
    final info = (_extractData(response));
    json_response = info;

    if(response.statusCode == 200) {
      foundProfile = true;
      err = false;
    }
    if(response.statusCode != 200) {
      err = true;
    }
  }

  ngOnInit() {}
}
