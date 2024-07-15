import 'package:dio/dio.dart';

class MenuService {
  final Dio _dio = Dio();

  final String _baseUrl = "https://jwvntttldarvgadaupci.supabase.co/rest/v1/";
  final String _apiKey =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imp3dm50dHRsZGFydmdhZGF1cGNpIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjA5Nzk2MjgsImV4cCI6MjAzNjU1NTYyOH0.m7a7jpXmAb0jwGsJ8vu0PFuMQVV0Mryry2rSfYjsraw';

  Future<Response> getMenu() async {
    var baseUrl = '${_baseUrl}menu?select=*';
    final response = await _dio.get(
      baseUrl,
      options: Options(
        headers: {'apikey': _apiKey, 'Authorization': 'Bearer $_apiKey'},
      ),
    );

    return response;
  }

  // Future<Response> addReport(Map<String, dynamic> newReportData) async {
  //   var baseUrl = 'https://kmcrslkjoptlavxsmeti.supabase.co/rest/v1/reports';
  //   final response = await _dio.post(baseUrl,
  //       data: newReportData,
  //       options: Options(
  //         headers: {
  //           'apikey': _apiKey,
  //           'Authorization': 'Bearer $_apiKey',
  //           'Content-Type': 'application/json',
  //           'Prefer': 'return=representation'
  //         },
  //       ));

  //   return response;
  // }

  // Future<Response> deleteReport(int reportId) async {
  //   var baseUrl = '${_baseUrl}reports?id=eq.$reportId';
  //   final response = await _dio.delete(
  //     baseUrl,
  //     options: Options(
  //       headers: {
  //         'apikey': _apiKey,
  //         'Authorization': 'Bearer $_apiKey',
  //       },
  //     ),
  //   );
  //   return response;
  // }
}
