import 'package:flutter/material.dart';
import 'package:simplonline_mobile/brief.dart';

class Briefs extends StatelessWidget {
  const Briefs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
        appBar: AppBar(
          title: const Text('Briefs'),

          //make your navigator pop
          // automaticallyImplyLeading: false,
          // leading: IconButton(
          //   onPressed: () {
          //     Navigator.of(context).pop();
          //   },
          //   icon: const Icon(Icons.arrow_back),

          // ),
        ),
        body: SingleChildScrollView(
          child: Center(
              child: Column(
                
                children: [
                  //brief
                  GestureDetector(
                    onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return const Brief();
                              },
                            ),
                          );
                    },
                    child: Container(
                        width: MediaQuery.of(context).size.width - 90,
                        margin: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                        child: Center(
                          child: Column(
                            children: [
                              Image.asset('images/brief.jpeg'),
                              Container(
                                color: Colors.white,
                                width: double.infinity,
                                padding: const EdgeInsets.all(15),
                                child: Column(children: const [
                                  Text(
                                  'CVThèque',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                // ignore: unnecessary_const
                                const Text(
                                  'brief mini description',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                ],)
                              ),
                            ],
                          )
                        )),
                  ),
                    
                    
                  //brief
                  GestureDetector(
                    onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return const Brief();
                              },
                            ),
                          );
                    },
                    child: Container(
                        width: MediaQuery.of(context).size.width - 90,
                        margin: const EdgeInsets.only(bottom: 15),
                        child: Center(
                          child: Column(
                            children: [
                              Image.asset('images/brief.jpeg'),
                              Container(
                                color: Colors.white,
                                width: double.infinity,
                                padding: const EdgeInsets.all(15),
                                child: Column(children: const [
                                  Text(
                                  'CVThèque',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                // ignore: unnecessary_const
                                const Text(
                                  'brief mini description',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                ],)
                              ),
                            ],
                          )
                        )),
                  ),
                    
                    
                  //brief
                  GestureDetector(
                    onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return const Brief();
                              },
                            ),
                          );
                    },
                    child: Container(
                        width: MediaQuery.of(context).size.width - 90,
                        margin: const EdgeInsets.only(bottom: 15),
                        child: Center(
                          child: Column(
                            children: [
                              Image.asset('images/brief.jpeg'),
                              Container(
                                color: Colors.white,
                                width: double.infinity,
                                padding: const EdgeInsets.all(15),
                                child: Column(children: const [
                                  Text(
                                  'CVThèque',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                // ignore: unnecessary_const
                                const Text(
                                  'brief mini description',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                ],)
                              ),
                            ],
                          )
                        )),
                  ),
                    
                    
                  //brief
                  GestureDetector(
                    onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return const Brief();
                              },
                            ),
                          );
                    },
                    child: Container(
                        width: MediaQuery.of(context).size.width - 90,
                        margin: const EdgeInsets.only(bottom: 15),
                        child: Center(
                          child: Column(
                            children: [
                              Image.asset('images/brief.jpeg'),
                              Container(
                                color: Colors.white,
                                width: double.infinity,
                                padding: const EdgeInsets.all(15),
                                child: Column(children: const [
                                  Text(
                                  'CVThèque',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                // ignore: unnecessary_const
                                const Text(
                                  'brief mini description',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                ],)
                              ),
                            ],
                          )
                        )),
                  ),
                    
                      
                  //brief
                  GestureDetector(
                    onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return const Brief();
                              },
                            ),
                          );
                    },
                    child: Container(
                        width: MediaQuery.of(context).size.width - 90,
                        margin: const EdgeInsets.only(bottom: 15),
                        child: Center(
                          child: Column(
                            children: [
                              Image.asset('images/brief.jpeg'),
                              Container(
                                color: Colors.white,
                                width: double.infinity,
                                padding: const EdgeInsets.all(15),
                                child: Column(children: const [
                                  Text(
                                  'CVThèque',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                // ignore: unnecessary_const
                                const Text(
                                  'brief mini description',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                ],)
                              ),
                            ],
                          )
                        )),
                  )
                ],
              ),
            // ),
          ),
        ));
  }
}
