import 'dart:io';
import 'workersList.dart';

class Divider {
  late double totalAmmount;
  Workerslist workers = Workerslist();
  bool isMenuRunning = true;

  void launch() {
    while (isMenuRunning) {
    print("""
==================================================
██████╗ ██╗██╗   ██╗██╗██████╗ ███████╗██████╗ 
██╔══██╗██║██║   ██║██║██╔══██╗██╔════╝██╔══██╗
██║  ██║██║██║   ██║██║██║  ██║█████╗  ██████╔╝
██║  ██║██║╚██╗ ██╔╝██║██║  ██║██╔══╝  ██╔══██╗
██████╔╝██║ ╚████╔╝ ██║██████╔╝███████╗██║  ██║
╚═════╝ ╚═╝  ╚═══╝  ╚═╝╚═════╝ ╚══════╝╚═╝  ╚═╝ 
==================================================
       División de Dinero en Base a Porcentajes
==================================================
[1] Agregar Total Ganado
[2] Agregar Trabajadores
[3] Visualizar Trabajadores
[4] Volver al menú principal
--------------------------------------------------
Seleccione una opción:
""");
  switch (int.parse(stdin.readLineSync() ?? '0')) {
    case 1:
      print("""--------------------------------------------------""");
      print("¿Cuánto fue el total del mes?");
      totalAmmount = double.parse(stdin.readLineSync() ?? '0.00');
      print("""--------------------------------------------------""");
      break;
    case 2:
      addWorkers();
      break;
    case 3:
      print("${workers.showEveryWorker(totalAmmount)}");
      print("""--------------------------------------------------
      Presiona Enter para volver al menú de divider.""");
      stdin.readLineSync();
      break;
    case 4:
      isMenuRunning = false;
      break;
    default:
      print("Opción no válida");
    }
  }
  }
  void addWorkers() {
    if (!workers.isWorkersEmpty()){
      print("""--------------------------------------------------
      Desea eliminar a todos los trabajadores actuales? (s/n)""");
      String deleteWorkers = stdin.readLineSync()?? "n";
      if (deleteWorkers.toLowerCase() == 's') {
        workers = Workerslist();
      }
    }
    print("""--------------------------------------------------
    ¿Cuántos trabajadores desea agregar?""");
    int workerAmount = int.parse(stdin.readLineSync() ?? '0');
    int i = 0;
    while (i < workerAmount) {
      print("Nombre del trabajador:");
      String name = stdin.readLineSync() ?? '';
      print("Días trabajados:");
      int daysWorked = int.parse(stdin.readLineSync() ?? '0');
      if (workers.addWorker(name, daysWorked)){
        print("""--------------------------------------------------
Trabajador añadido!""");
        i++;
      } else {
        print("El nombre del trabajador no puede ser nulo. Vuelva a intentarlo.");
      };
    }
  }
}
