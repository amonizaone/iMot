// import 'package:dio/dio.dart';
import 'package:dio/dio.dart';
import 'package:imot/utilities/ApiBaseHelper.dart';
import 'package:imot/utilities/contstants.dart';

class LoginRepository {
  Dio? client;
  // BaseOptions opts;
  // ApiBaseHelper api = ApiBaseHelper();
  // LoginRepository() {
  //   BaseOptions opts = BaseOptions(
  //     baseUrl: AppConstants.BASE_URL,
  //     responseType: ResponseType.json,
  //     connectTimeout: 30000,
  //     receiveTimeout: 30000,
  //   );
  //   this.client = Dio(opts);
  // }

  LoginRepository() : super() {
    print("You are inside Child constructor!!");
    BaseOptions opts = BaseOptions(
      baseUrl: AppConstants.BASE_URL,
      responseType: ResponseType.json,
      connectTimeout: 30000,
      receiveTimeout: 30000,
    );
    this.client = Dio(opts);
  }
  //  client = client ?? Dio();

  // ButtonGroup({
  //   Key? key,
  //   this.titles,
  //   this.onTab,
  //   int? current,
  //   Color? color,
  //   Color? secondaryColor,
  // })  : assert(titles != null),
  //       current = current ?? 0,
  //       color = color ?? Colors.blue,
  //       secondaryColor = secondaryColor ?? Colors.white,
  //       super(key: key);

  Future<Map<String, dynamic>> login(String username, String password,
      String? mobileId, String? fcmToken) async {
    // url = "TEST";
    try {
      Response res = await client!.post('/users/auth', data: {
        "Username": username,
        "Password": password,
        "FCMToken": fcmToken,
        "MobileId": mobileId
      });

      Map<String, dynamic> result = res.data;

      // print(res);
      return result;
    } catch (e) {
      // final Map<String, dynamic> resError = e.response.data;
      // return resError;
      // return e;
      throw e;
    }
  }
}
