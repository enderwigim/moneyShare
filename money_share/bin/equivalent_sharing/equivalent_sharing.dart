import 'contributors.dart';
import 'list_contributors.dart';
import 'dart:io';

class EquivalentSharing {
  late int total;
  late int gastos;
  void launch() {
    print("""
--------------------------------------------------
¿Cuanto fueron de gastos este mes?""");
    double expenses = double.parse(stdin.readLineSync()?? '0.00');

    Listcontributors contributors = Listcontributors();

    addContributors(contributors);

    String result = contributors.showEveryContributor(expenses);
    (result != '')? print(result) : print("Un error ha ocurrido");
    print("Presiona Enter para volver al menú principal.");
    stdin.readLineSync();
  }

  void addContributors(Listcontributors contributors) {
    print("""
--------------------------------------------------
Cuanto contribuidores?""");
    int contributorAmount = int.parse(stdin.readLineSync()?? '0');
    int i = 0;
    while (i < contributorAmount) {
      print("Añade el nombre del contribuidor.");
      String? name = stdin.readLineSync();
      print("¿Cuanto aporta?");
      double moneyAmount = double.parse(stdin.readLineSync()?? '0.00');
      if (contributors.addContributor(name, moneyAmount)) {
        print("""
--------------------------------------------------
Contribuidor añadido!
--------------------------------------------------
""");
        }
      else { 
        print("El nombre del contribuidor no puede ser nulo.");
        i--;
      }
      i++;
    }
  }
}