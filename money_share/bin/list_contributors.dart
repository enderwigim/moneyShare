import 'contributors.dart';

class Listcontributors {
  final List<Contributor> _contributors = [];

  Listcontributors();

  bool addContributor(String? name, double? amount){
    if (name != null){
      _contributors.add(Contributor(name, amount));
      return true;
    }
    return false;
  }

  double sumAmount(){
    double total = 0;
    for (Contributor contributor in _contributors) {
      total += contributor.amount;
    }
    return total;
  }

  void setTotalToPay(double expenses, double total){
    for (Contributor contributor in _contributors) {
      contributor.totalToPay = contributor.calcTotalToPay(expenses, total);
    }
  }

  String showEveryContributor(double expenses){
    double total = sumAmount();
    setTotalToPay(expenses, total);

    String everyContributor = '';
    for (Contributor contributor in _contributors){
      everyContributor += "${contributor.name} ha puesto ${contributor.amount}€ y debe pagar ${contributor.totalToPay}€\n";
    }
    return everyContributor;
  }
}