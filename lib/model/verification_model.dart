class DrugVerification {
  DrugVerification({
    required this.status,
    required this.brand,
    required this.regNo,
    required this.response,
  });

  String status;
  String brand;
  String regNo;
  String response;

  factory DrugVerification.fromJSON(Map<String, dynamic> drugVerification) =>
      DrugVerification(
        status: drugVerification["status"] ?? '',
        brand: drugVerification["brand"],
        regNo: drugVerification["regNo"],
        response: drugVerification["response"],
      );
}
