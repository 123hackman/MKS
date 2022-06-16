import 'package:flutter/material.dart';
import 'package:squizzy/pages/home/autres.dart';
import 'package:squizzy/pages/home/menu.dart';
import 'package:squizzy/pages/home/plus.dart';
import 'package:squizzy/pages/home/profil.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int currentIndex = 0;
  final List<Widget> screens = [
    Menu(),
    Autres(),
    Profil(),
    Plus()
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentPage = Menu();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageStorage(
        bucket: bucket, 
        child: currentPage),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.orange,
          onPressed: (){
            modalDialogue(context);
          },
          child: const Icon(Icons.send, color: Colors.white,),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            notchMargin: 10,
            child: Container(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      MaterialButton(
                        minWidth: 40,
                        onPressed: (){
                          setState(() {
                            currentPage = Menu();
                            currentIndex = 0;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.dashboard, color: currentIndex == 0 ? Colors.orange: Colors.grey),
                            Text("Menu", style: TextStyle(color: currentIndex == 0 ? Colors.orange: Colors.grey),)
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: 40,
                        onPressed: (){
                          setState(() {
                            currentPage = Autres();
                            currentIndex = 1;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.shop, color: currentIndex == 1 ? Colors.orange: Colors.grey),
                            Text("Autres", style: TextStyle(color: currentIndex == 1 ? Colors.orange: Colors.grey),)
                          ],
                        ),
                        )                
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      MaterialButton(
                        minWidth: 40,
                        onPressed: (){
                          setState(() {
                            currentPage = Profil();
                            currentIndex = 3;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.person, color: currentIndex == 3 ? Colors.orange: Colors.grey),
                            Text("Profile", style: TextStyle(color: currentIndex == 3 ? Colors.orange: Colors.grey),)
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: 40,
                        onPressed: (){
                          setState(() {
                            currentPage = Autres();
                            currentIndex = 4;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.more, color: currentIndex == 4 ? Colors.orange: Colors.grey),
                            Text("Plus", style: TextStyle(color: currentIndex == 4 ? Colors.orange: Colors.grey),)
                          ],
                        ),
                        )                
                    ],
                  )
                
                ],
              ),
            ),
          ),
          
    );
    
  }
  void modalDialogue(context){
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context, 
      builder: (context)=>Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30)
          )
        ),
        child: Center(
          child: Text("choisir une destination"),
        ),
      ),
      
      );
  }
}