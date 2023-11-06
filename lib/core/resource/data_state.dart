import 'package:dio/dio.dart';

//cung cap 1 trừu tượng để quản lý các trạng thái khác nhau của dữ liệu
//được nhận từ các yêu cầu HTTP
abstract class DataState<T> {
  final T? data;
  final DioException? error;

  DataState({this.data, this.error});
}

class DataSuccess<T> extends DataState<T> {
  DataSuccess(T data) : super(data: data);
}

class DataFailed<T> extends DataState<T> {
  DataFailed(DioException error) : super(error: error);
}
