class DrugVerification {
  DrugVerification({
    required this.status,
    required this.brand,
    required this.regNo,
    required this.response,
  });

  final String? status;
  final String? brand;
  final String? regNo;
  final String? response;

  factory DrugVerification.fromJSON(Map<String, dynamic> drugVerification) =>
      DrugVerification(
        status: drugVerification["Status"],
        brand: drugVerification["Brand"],
        regNo: drugVerification["RegNo"],
        response: drugVerification["Response"],
      );
}
