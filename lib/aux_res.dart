import 'package:flutter/material.dart';

import '/aux_page.dart';

// ignore: depend_on_referenced_packages
import 'package:get/get.dart';


class WrNavigationDrawer extends StatelessWidget {
  const WrNavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildHeader(context),
          buildMenuItems(context),
        ]
    ),
  ));
  
  Widget buildHeader(BuildContext context) => Material(
    color: Colors.blue.shade700,
    child: InkWell(
      // onTap: (){},
      onTap:() { 
        /* metodo tradicional de navegacion
        // close navigation drwer before
        Navigator.pop(context);
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const AuxPage(),
        ));
        */
        // metodo con Get
        Get.back();
        Get.to(const AuxPage());
      },

      child: Container(
        padding: EdgeInsets.only(
          top: 24 + MediaQuery.of(context).padding.top,
          bottom: 24,
        ),
        child: const Column(
          children: [
            CircleAvatar(
              radius: 52,
              backgroundImage: NetworkImage(
                "https://lh3.googleusercontent.com/-QeiJ65lBy8w/AAAAAAAAAAI/AAAAAAAAA34/IQOsDVnzXXY/s96-c/photo.jp"),
            ),
            SizedBox(height: 12,),
            Text(
              'Luis Carrizo',
              style:TextStyle(
                fontSize: 28,
                color: Colors.white,
              )
            ),
            Text(
              'lcarrizo2012@gmail.com',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              )
            ),
          ],
        ),
      ),
    ),
  );

  Widget buildMenuItems(BuildContext context) => Container(
    padding: const EdgeInsets.all(24),
    child: Wrap(
      runSpacing: 16,
      children: [
        ListTile(
          leading: const Icon(Icons.home_outlined),
          title:const Text('Home'),

          // onTap:(){}
          onTap:()=> Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => const AuxPage(),
          )),
        ),
        ListTile(
          leading: const Icon(Icons.workspaces_outline),
          title:const Text('Workflow'),
          // onTap:(){}


          onTap:() { 
            // close navigation drawer before
            Navigator.pop(context);
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const AuxPage(),
            ));
          },

        ),
        ListTile(
          leading: const Icon(Icons.update),
          title:const Text('Updates'),
          onTap:(){}
        ),
        const Divider(color: Colors.black54),
        ListTile(
          leading: const Icon(Icons.account_tree_outlined),
          title:const Text('Plugins'),
          onTap:(){}
        ),
        ListTile(
          leading: const Icon(Icons.notifications_outlined),
          title:const Text('Notifications'),
          onTap:(){}
        ),
      ],
    ),
  );
  
  }

class MyButton extends StatelessWidget {
  final Function()? onTap;
  final String buttonText;

  // MyButton({super.key, required this.buttonText, required this.onTap});
  const MyButton({super.key, required this.buttonText, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 2),
        decoration: BoxDecoration(
            color: Colors.amber[500],
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.black, width: 2)),
        child: Center(
          child: Text(
            buttonText,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
      ),
    ); // GestureDetector
  }
}

class MyButton2 extends StatelessWidget {
  final Function()? onTap;
  final String buttonText;

  // MyButton({super.key, required this.buttonText, required this.onTap});
  const MyButton2({super.key, required this.buttonText, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue.shade800,
          ),        
        child: Text(
          buttonText, 
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white, 
            fontWeight: FontWeight.bold,
            fontSize: 20
          ) ,
        ),
      ),
    );
/*
    GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 2),
        decoration: BoxDecoration(
            color: Colors.amber[500],
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.black, width: 2)),
        child: Center(
          child: Text(
            buttonText,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
      ),
    ); // GestureDetector
*/
  }
}

/*
ElevatedButton(
                child: const Text('Show Snackbar'),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: const Text('Awesome Snackbar!'),
                      action: SnackBarAction(
                        label: 'Action',
                        onPressed: () {
                          // Code to execute.
                        },
                      ),
                    ),
                  );
                },
              ),
*/
