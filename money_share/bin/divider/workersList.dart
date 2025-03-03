import 'worker.dart';

class Workerslist {
  final List<Worker> _workers = [];
  int totalDaysOfWork = 0;

  bool addWorker(String name, int daysWorked){
    Worker worker = Worker();
    worker.name = name;
    worker.daysWorked = daysWorked;
    if (name == null || daysWorked == null){
      return false;
    }
    totalDaysOfWork += daysWorked;
    _workers.add(worker);
    return true;
  }
  bool isWorkersEmpty(){
    return _workers.isEmpty;
  }

  String showEveryWorker(double totalAmmount){
    for (Worker worker in _workers){
      worker.setSalary(totalDaysOfWork, totalAmmount);
    }
    String everyWorker = '';
    for (Worker worker in _workers){
      everyWorker += "El trabajador ${worker.name} ha trabajado ${worker.daysWorked} días, tiene un salario total de ${worker.totalSalary}€\n";
    }
    return everyWorker;
  }
}