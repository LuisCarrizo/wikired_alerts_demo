import 'package:flutter/material.dart';
import 'aux_res.dart';



class AuxPage extends StatelessWidget {
  const AuxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina de Prueba'),
        backgroundColor: Colors.red.shade700,
      ),
      body: Center(
        child: MyButton2(
          buttonText: 'Volver',
          onTap: () {
            //WrAlerts().snack('Todo ha salido bien');
            // Get.to(const MainPage());
            // Get.back();
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}