import 'package:architecture_template_v2/product/service/dio_service.dart';
import 'package:architecture_template_v2/product/service/service_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gen/gen.dart';

void main() {
  late List<User>? list;

  setUp(() async {
    list = await DioService.instance!
        .fetchData(ServicePath.user.rawValue, const User());
  });

  test('Fetch data test', () {
    if (list!.isNotEmpty) {
      debugPrint(list![0].address?.city);
    } else {
      debugPrint("boş");
    }
  });
}
