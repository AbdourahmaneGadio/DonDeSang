import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Don de sang',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Don de sang'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  late String boutonChoisi = "";

  late List donListe = [];

  late List recoitListe = [];

  List donAvecAPlus = [
"A+", "AB+"
  ];
  List recoitAPlus = [
 "A+", "A-", "O+" ,"O-"
  ];


  List donAvecAMoins = [
"A+", "A-", "AB+", "AB-"
  ];
  List recoitAMoins = [
    "A-", "O-"
  ];

  
  List donAvecABPlus = [
"AB+"
  ];
List recoitABPlus = [
"A+", "A-", "AB+", "AB-", "B+", "B-", "O+", "O-"
];



  List donAvecABMoins = [
"AB+", "AB-"
  ];
List recoitABMoins = [
 "A-", "AB-", "B-", "O-"
];


  List donAvecBPlus = [
"AB+", "B+"
  ];
List recoitBPlus = [
"B+", "B-", "O+", "O-"
];



  List donAvecBMoins = [
"AB+", "AB-", "B+", "B-"
  ];
  List recoitBMoins = [
    "B-", "O-"
  ];

  List donAvecOPlus = [
"AB+", "A+", "B+", "O+"
  ];
List recoitOPlus = [
"O+", "O-"
];


  List donAvecOMoins = [
"A+", "A-", "AB+", "AB-", "B+", "B-", "O+", "O-"
  ];
  List recoitOMoins = [
    "O-"
    ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        
        title: Text(widget.title),
      ),
      body: Container(
        padding: const EdgeInsets.all(30.0),

child: Column(
  
        children: [ 
          
          // 1ère ligne
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [
            
                  ElevatedButton(
                     child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.yellow.shade200,
              ),
                    child: Padding(
padding: EdgeInsets.all(30.0),
child:
                      Text(
                        'A+',
                        style: TextStyle(
                          fontSize: 30,
color: getButtonColor("A+"),
                        ),
                        ),

                    
                  ),
                  ),
                                    onPressed: (){
                                      setState(() {
                                        boutonChoisi = "A+";
                                        donListe = donAvecAPlus;
                                        recoitListe = recoitAPlus;
                                      });
                                    }

                ),
          

            
                  ElevatedButton(
                     child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.yellow.shade200,
              ),
                    child: Padding(
padding: EdgeInsets.all(30.0),
child:
                      Text(
                        'A-',
                        style: TextStyle(
                          fontSize: 30,
color: getButtonColor("A-"),
                        ),
                        ),

                    
                  ),
                  ),
                                    onPressed: (){
                                      setState(() {
                                        boutonChoisi = "A-";
                                        donListe = donAvecAMoins;
                                        recoitListe = recoitAMoins;
                                      });
                                    }

                ),

          ],

        ),

        // 2ème ligne
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [
                         
                  ElevatedButton(
                     child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.yellow.shade200,
              ),
                    child: Padding(
padding: EdgeInsets.all(30.0),
child:
                      Text(
                        'AB+',
                        style: TextStyle(
                          fontSize: 30,
color: getButtonColor("AB+"),
                        ),
                        ),

                    
                  ),
                  ),
                                    onPressed: (){
                                      setState(() {
                                        boutonChoisi = "AB+";
                                        donListe = donAvecABPlus;
                                        recoitListe = recoitABPlus;
                                      });
                                    }

                ),
                                         
                  ElevatedButton(
                     child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.yellow.shade200,
              ),
                    child: Padding(
padding: EdgeInsets.all(30.0),
child:
                      Text(
                        'AB-',
                        style: TextStyle(
                          fontSize: 30,
color: getButtonColor("AB-"),
                        ),
                        ),

                    
                  ),
                  ),
                                    onPressed: (){
                                      setState(() {
                                        boutonChoisi = "AB-";
                                        donListe = donAvecABMoins;
                                        recoitListe = recoitABMoins;
                                      });
                                    }

                ),
          ],

        ),

// 3ème ligne
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [
            
                  ElevatedButton(
                     child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.yellow.shade200,
              ),
                    child: Padding(
padding: EdgeInsets.all(30.0),
child:
                      Text(
                        'B+',
                        style: TextStyle(
                          fontSize: 30,
color: getButtonColor("B+"),
                        ),
                        ),

                    
                  ),
                  ),
                                    onPressed: (){
                                      setState(() {
                                        boutonChoisi = "B+";
                                        donListe = donAvecBPlus;
                                      });
                                    }

                ),

                             

            
                  ElevatedButton(
                     child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.yellow.shade200,
              ),
                    child: Padding(
padding: EdgeInsets.all(30.0),
child:
                      Text(
                        'B-',
                        style: TextStyle(
                          fontSize: 30,
color: getButtonColor("B-"),
                        ),
                        ),

                    
                  ),
                  ),
                                    onPressed: (){
                                      setState(() {
                                        boutonChoisi = "B-";
                                        donListe = donAvecBMoins;
                                      });
                                    }

                ),
          ],

        ),

         // 4ème ligne
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [
            
                  ElevatedButton(
                     child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.yellow.shade200,
              ),
                    child: Padding(
padding: EdgeInsets.all(30.0),
child:
                      Text(
                        'O+',
                        style: TextStyle(
                          fontSize: 30,
color: getButtonColor("O+"),
                        ),
                        ),

                    
                  ),
                  ),
                                    onPressed: (){
                                      setState(() {
                                        boutonChoisi = "O+";
                                        donListe = donAvecOPlus;
                                      });
                                    }

                ),
                                         
                  ElevatedButton(
                     child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.yellow.shade200,
              ),
                    child: Padding(
padding: EdgeInsets.all(30.0),
child:
                      Text(
                        'O-',
                        style: TextStyle(
                          fontSize: 30,
color: getButtonColor("O-"),
                        ),
                        ),

                    
                  ),
                  ),
                                    onPressed: (){
                                      setState(() {
                                        boutonChoisi = "O-";
                                        donListe = donAvecOMoins;
                                      });
                                    }

                ),
          ],

        ),

        // Ligne de texte
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey,
              ),
                  child: const Padding(
padding: EdgeInsets.all(30.0),  
child:

Text(
              "Appuyez sur votre groupe sanguin"
              ),
            ),
          
          ),
        ],
    ), 
        ],
    )
    )
    );

          

  }

  getButtonColor(buttonTitle){
if(boutonChoisi == buttonTitle){
return Colors.blue;
}
else if(donListe.contains(buttonTitle)){
  return Colors.green;
}
else if(recoitListe.contains(buttonTitle)){
  return Colors.deepPurple.shade300;
}
else{
  return Colors.black;
}
  }
}
