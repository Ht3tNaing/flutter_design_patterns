import 'dart:convert';

class YoutubeApi {
  String getPost() {
    return '''

[
{
"title":"Get 1M Views in 1Min",
"desc":"Today i will show..."
},
{
"title":"Get 1M Profit in 1Min",
"desc":"Today i will show..."
}
]
''';
  }
}

class FacebookApi {
  String getPost() {
    return '''
[
{
"header":"Hello i am new at facebook",
"bio":"br nyar tha ya kar"
},
{
"header":"Like pay par",
"bio":"Like ta taung sar"
}
]
''';
  }
}

abstract class IPostApi {
  List<Post> getAllPost();
}

class Post {
  final String title;
  final String description;

  Post({required this.title, required this.description});
}

class GetYotubeApi implements IPostApi {
  final _api = YoutubeApi();
  @override
  List<Post> getAllPost() {
    final data = jsonDecode(_api.getPost()) as List;
    return data
        .map((e) => Post(title: e['title'], description: e['desc']))
        .toList();
  }
}

class GetFacebookApi implements IPostApi {
  final _api = FacebookApi();
  @override
  List<Post> getAllPost() {
    final data = jsonDecode(_api.getPost()) as List;
    return data
        .map((e) => Post(title: e['header'], description: e['bio']))
        .toList();
  }
}

class ApiAdapter implements IPostApi {
  final _ytApi = GetYotubeApi().getAllPost();
  final _fbApi = GetFacebookApi().getAllPost();
  @override
  List<Post> getAllPost() {
    return _ytApi + _fbApi;
  }
}
