class PAConstantData {
  final double containerRadius;
  final double cardRadius;
  final double buttonRadius;

  PAConstantData({this.containerRadius = 8, this.cardRadius = 8, this.buttonRadius=8});
}

class PAConstant {
  static PAConstantData constant = PAConstantData();

  static setConstant(PAConstantData constantData) {
    constant = constantData;
  }
}
