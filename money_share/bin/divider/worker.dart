class Worker {
  late String name;
  late int daysWorked;
  late double totalSalary;


  void setSalary(int totalDaysOfWork, double totalAmmount){
    // GET THE PERCENTAGE OF DAYS WORKED IN THE TOTAL DAYS WORKED BY THE WORKERS
    double percentage = calcPercentage(totalDaysOfWork);
    // CALCULATE THE TOTAL SALARY OF THE WORKER
    totalSalary = calcTotalWithPercentage(percentage, totalAmmount);
  }

  double calcPercentage(int totalDaysOfWork) {
    return ((daysWorked * 100)/totalDaysOfWork).roundToDouble();
  }
  double calcTotalWithPercentage(double percentage, double totalAmmount){
    return ((percentage*totalAmmount)/100).roundToDouble();
  }
}