class Contributor {
  String name;
  double? _amount;
  double? _totalToPay;

  Contributor(this.name, this._amount);

  // Getter for _amount
  double get amount => _amount?? 0;
  // Setter for _amount
  set amount(double value) {
    if (value >= 0) {
      _amount = value;
    } else {
      throw ArgumentError("Amount cannot be negative");
    }
  }

  // Getter for _totalToPay
  double get totalToPay => _totalToPay?? 0;
  // Setter for _totalToPay
  set totalToPay(double value) {
    if (value >= 0) {
      _totalToPay = value;
    } else {
      throw ArgumentError("Amount cannot be negative");
    }
  }


  double calcPercentage(double total) {
    return ((amount * 100)/total);
  }

  double calcTotalToPay(double expenses, double total) {
    return ((calcPercentage(total)*expenses)/100).roundToDouble();
  }

}