class UserModel {
  final String id;
  final String userName;
  final String qrCode;

  String balance = "10000";

  UserModel(
    this.id,
    this.userName,
    this.qrCode,
  );

  //Transfer money
  // void transfer(int amount) {
  //   balance -= amount;

  //   notifyListeners();
  // }

  String getBalance() {
    return balance;
  }

  String getQrCode() {
    return qrCode;
  }
}
