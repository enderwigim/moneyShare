import 'equivalent_sharing/equivalent_sharing.dart';
import 'dart:io';

class Menu { 
  int selectedOption = 0;
  bool isRunning = true;

  void startMenu(){
    while(isRunning){
      showMainMenu();
      selectedOption = int.parse(stdin.readLineSync()?? '0');
      switch (selectedOption) {
        case 1:
          startEquivalentSharing();
          break;
        case 2:
          print("Porcentual Divider");
          break;
        case 3:
          print("Salir");
          isRunning = false;
          break;
        default:
          print("Opción no válida");
      }
    }
  }
  void showMainMenu() {
    print("\x1B[2J\x1B[0;0H");
    print("""
==================================================
 ███╗   ███╗ ██████╗ ███╗   ██╗███████╗██╗   ██╗
 ████╗ ████║██╔═══██╗████╗  ██║██╔════╝██║   ██║
 ██╔████╔██║██║   ██║██╔██╗ ██║█████╗  ██║   ██║
 ██║╚██╔╝██║██║   ██║██║╚██╗██║██╔══╝  ██║   ██║
 ██║ ╚═╝ ██║╚██████╔╝██║ ╚████║███████╗╚██████╔╝
 ╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚══════╝ ╚═════╝ 
==================================================
    Bienvenido a Money Admin - Gestión Financiera
==================================================
[1] Money Sharing  - Dividir dinero entre personas
[2] Porcentual Divider - División en base a porcentajes
[3] Salir
--------------------------------------------------
Seleccione una opción:
""");
  }

  void startEquivalentSharing() {
    EquivalentSharing equivalentSharing = EquivalentSharing();
    equivalentSharing.launch();
  }
}