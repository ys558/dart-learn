/*
Dart中的库主要有三种：
1、自定义的库     
  import 'lib/xxx.dart';
2、系统内置库       
  import 'dart:math';    
  import 'dart:io'; 
  import 'dart:convert';
3、Pub包管理系统中的库  
  https://pub.dev/packages
  https://pub.flutter-io.cn/packages
  https://pub.dartlang.org/flutter/

  1、需要在自己想项目根目录新建一个pubspec.yaml
  2、在pubspec.yaml文件 然后配置名称 、描述、依赖等信息
  3、然后运行 pub get 获取包下载到本地  
  4、项目中引入库 import 'package:http/http.dart' as http; 看文档使用
 */

//2. 内置库:
import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main() async{
  // 2.
  print(min(12, 23));
  print(max(12, 23));

  // 
  var result = await getDataFromZhihuAPI();
  print(result);
}


// api接口: http://new-at.zhihu.com/api/3/stories/latest
getDataFromZhihuAPI() async {
  // 1. 创建HttpClient对象
  var httpClient = new HttpClient();
  // 2. 创建uri对象
  var uri = new Uri.http('news-at.zhihu.com', '/api/3/stories/latest');
  // 3. 发起请求,等待请求
  var request = await httpClient.getUrl(uri);
  // 4. 关闭请求,等待响应
  var response = await request.close();
  // 5. 解码响应的内容
  return await response.transform(utf8.decoder).join();
}