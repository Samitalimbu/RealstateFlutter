import 'package:flutter_test/flutter_test.dart';
import 'package:sparrow/Response/QuestionResponse.dart';
import 'package:sparrow/api/PropertyAPI.dart';
import 'package:sparrow/api/api_service.dart';
import 'package:sparrow/models/otp_response.dart';

void main() {
  test("user login test", () async {
    bool expected = true;
    String phone = "654321";
    String password = "1234";
    bool actual = await APIService().login(phone, password);
    expect(actual, expected);
  });

  // change password test and expect bool
  test("change password test and expect bool", () async {
    String id = "63ff994811d2f3001cd0535b";
    String oldPassword = "12345";
    String newPassword = "12345";
    bool expected = true;
    bool actual = await APIService.changePassword(id, oldPassword, newPassword);
    expect(actual, expected);
  });
}