import 'package:angular/angular.dart';
import 'package:http/http.dart';
import 'package:http/browser_client.dart';

import 'dart:async';
import 'dart:convert';

@Component(
  selector: 'my-app',
  template: '<h1>Hello </h1>',
)
class AppComponent implements OnInit {

String userResponse;

void httpReq() async {
    dynamic client = new BrowserClient();
    String url = 'https://api.github.com/users/koushikkothagal';
    dynamic response =
        await client.get(url);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    userResponse = response.body;
}

  ngOnInit() {
    httpReq();
  }
}
