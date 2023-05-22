import 'package:flutter/material.dart';

import './aux_res.dart';
import './aux_page.dart';

import 'package:wikired_alerts/wikired_alerts.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

// important!!!
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
// solo usado en el ejemplo
const String titulo = 'Wikired Alertas';

// prueba
//inicializa la clase wra con el navigatorKey
// final wra = WrAlerts(GlobalKey<NavigatorState>());
final wra = WrAlerts(navigatorKey);

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: titulo,
      navigatorKey: navigatorKey,           // important!!!
      debugShowCheckedModeBanner: false,    // wikired preference
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});



    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(titulo),
        backgroundColor: Colors.blue.shade700,
      ),
      drawer: const WrNavigationDrawer() ,
      body: SafeArea(
          child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[ 
            Expanded(
              child: SingleChildScrollView(
              child: Column(
                children: [
                  const Text('Opciones con context'),
                  MyButton2(
                    buttonText: 'ScaffoldMessenger.showSnackBar',
                    onTap: () {
                      // Wr Alerts().snack('Todo ha salido bien');
                      print('wikired ${wra.contextoGlobal}');
                      wra.snack('Todo ha salido bien');
                    },
                  ),
                  MyButton2(
                    buttonText: 'Opcion 1 + Action',
                    onTap: () {
                      wra.snackSimple('Todo ha salido bien' );
                    },
                  ),
                  MyButton2(
                    buttonText: 'Opcion 1 + Formato',
                    onTap: () {
                      wra.snackFormato('snackbar con formato', time:2);
                    },
                  ),
                  const Divider(height: 10, color: Colors.black45,),
                  const Text('alertas con Widgets'),  
                  MyButton2(
                    buttonText: 'simple OK',
                    onTap: () {
                      wra.simpleOk('Todo ha salido bien');
                    },
                  ), 
                  MyButton2(
                    buttonText: 'simple Alerta',
                    onTap: () {
                      wra.simpleAlerta('OJO con el tiempo');
                    },
                  ), 
                  MyButton2(
                    buttonText: 'simple Informacion',
                    onTap: () {
                      wra.simpleInfo('aviso de informacion');
                    },
                  ),
                  MyButton2(
                    buttonText: ' mensaje de Error',
                    onTap: () {
                      wra.simpleError('Mensaje de Error');
                    },
                  ), 
                  const Divider(height: 10, color: Colors.black45,),
                  const Text('quickAlert con context'),
                  MyButton2(
                    buttonText: 'OK \n por ahora está deshabilitado el parametro time',
                    onTap: () {
                      wra.qaOk(
                        'OK',
                        title: titulo,
                        time: 5,
                        // prueba si con contexto no queda en negro la pantalla
                        contextoOpcional: context
                      );
                    },
                  ),
                  MyButton2(
                    buttonText: 'Error',
                    onTap: () {
                      wra.qaError(
                        'Error',
                        title: titulo,
                      );
                    },
                  ),
                  MyButton2(
                    buttonText: 'Info',
                    onTap: () {
                      wra.qaInfo(
                        'Info',
                        title: titulo, time: 3
                      );
                    },
                  ),
                  MyButton2(
                    buttonText: 'Alerta',
                    onTap: () {
                      wra.qaAlerta(
                        'Alerta',
                        title: titulo, time: 3 , contextoOpcional: context,
                      );
                    },
                  ),
                  MyButton2(
                    buttonText: 'Procesando',
                    onTap: () {
                      wra.qaProcesando(
                        'Procesando',
                        title: titulo, time: 3
                      );
                    },
                  ),
                  MyButton2(
                    buttonText: 'CallbAck get.',
                    onTap: ()  {
                      // opcion tradicional
                      /*
                      final MaterialPageRoute ruta = MaterialPageRoute(builder: (context) {
                        return const TestPage();
                      });
                      wra.wrOKCallbackOld(
                        'Procesando', ruta,
                        title: titulo, time: 2 , pop: false
                      );
                      */
                      // opcion con Get
                      
                      wra.qaCallback(
                        'Procesando', ruta: const AuxPage(), 
                        title: titulo, time: 0 
                      );
                    },
                  ),                            
                  const Divider(height: 10, color: Colors.black45,
                  ),
                  const Text('Opciones sin context'),
                  MyButton2(
                    buttonText: 'Get.snackbar top',
                    onTap: () {
                      wra.getSnackTop('Get.snackbar top',
                      icono : const Icon(Icons.question_mark));
                    },
                  ),
                  MyButton2(
                    buttonText: 'Get.snackbar bottonm',
                    onTap: () {
                      wra.getSnackBottom('Get.snackbar bottom',
                      icono : const Icon(Icons.question_mark),
                      title: 'Aviso Importante');
                    },
                  ),  
                  MyButton2(
                    buttonText: 'Get.defaultDialog',
                    onTap: () {
                      wra.getDialog('This is a default dialog',
                      title: 'Aviso Importante');
                    },
                  ),                         
                  MyButton2(
                    buttonText: 'Get.to',
                    onTap: () {
                      Get.to(const AuxPage());
                    },
                  ),
                ],
              ),
                      ),
            ),
            Expanded(
              child: SingleChildScrollView(
              child: Column(
                children: [
                  const Text('toastification'),
                  MyButton2(
                    buttonText: 'ok',
                    onTap: () {
                      wra.toast('Todo ha salido bien', contextoOpcional: context , type:'ok', title: 'titulo');
                    },
                  ),
                  MyButton2(
                    buttonText: 'error',
                    onTap: () {
                      wra.toast('Algo ha salido mal', contextoOpcional: context, type:'error');
                    },
                  ),
                  MyButton2(
                    buttonText: 'Aviso',
                    onTap: () {
                      wra.toast('Prestar mas atencion, por favor', contextoOpcional: context , type:'aviso');
                    },
                  ),                                        
                  MyButton2(
                    buttonText: 'Info',
                    onTap: () {
                      wra.toast('Hoy está lloviendo mucho', contextoOpcional: context);
                    },
                  ),
                  MyButton2(
                    buttonText: 'Random',
                    onTap: () {
                      wra.toast('Hoy está lloviendo mucho', contextoOpcional: context, type:'random');
                    },
                  ),
                ],
              ),
                      ),
            ),
 
          ]
        ),
      )),
    );
  }
}
