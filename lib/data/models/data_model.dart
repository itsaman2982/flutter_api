enum Status { success, failure }

class DataModel {
  final Status status;
  final String message;
  dynamic data;

  DataModel({required this.status, required this.message, this.data});
}
