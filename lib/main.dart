import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavigationExample(),
    );
  }
}

class NavigationExample extends StatefulWidget {
  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          selectedIndex: currentPageIndex,
          backgroundColor: Colors.blueGrey[800],
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
              selectedIcon: Icon(Icons.home),
            ),
            NavigationDestination(
              icon: Icon(Icons.local_hospital_outlined),
              label: 'Hospital',
              selectedIcon: Icon(Icons.local_hospital),
            ),
            NavigationDestination(
              icon: Icon(Icons.shop_outlined),
              label: 'Shop',
              selectedIcon: Icon(Icons.shop),
            ),
          ],
        ),
        body: <Widget>[
          Container(

            color: Colors.white,
            alignment: Alignment.center,
            child: Form(
              key: formKey,
              child: Column(
              children: [
                Text("Sign Up",style: TextStyle(fontSize:25,fontWeight: FontWeight.bold ),),
                Padding(padding: EdgeInsets.all(20.0)),
                SizedBox(height: 16.0),
            TextFormField(
              validator:(value){
                if(value==null||value.isEmpty)
                {
                  return 'please enter the value';
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: 'First Name',
                border: OutlineInputBorder(),
              ),

            ),
                SizedBox(height: 16.0),
                TextFormField(
                  validator:(value){
                    if(value==null||value.isEmpty)
                    {
                      return 'please enter the value';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Last Name',
                    border: OutlineInputBorder(),
                  ),

                ),
                SizedBox(height: 16.0),
                TextFormField(
                  validator:(value){
                    if(value==null||value.isEmpty)
                    {
                      return 'please enter the value';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Email ',
                    border: OutlineInputBorder(),
                  ),

                ),
                SizedBox(height: 16.0),
                TextFormField(
                  validator:(value){
                    if(value==null||value.isEmpty)
                    {
                      return 'please enter the value';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),

                ),
                SizedBox(height: 20),
                ElevatedButton(onPressed: (){
                  if(formKey.currentState!.validate()){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Processing Data")));

                  }
                }, child: Text('Submit'))
    ],

    ),
          ),

          ),


          Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: Row(

              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[

                Image(
                  image: AssetImage('images/Abc.jpeg'),
                  width: 300,
                  height: 300,
                ),
                SizedBox(width: 30),
                Expanded(
                  child: Text(
                    'A hospital is a healthcare institution providing patient treatment with specialized health science and auxiliary healthcare staff and medical equipment.[1] The best-known type of hospital is the general hospital, which typically has an emergency department to treat urgent health problems ranging from fire and accident victims to a sudden illness. A district hospital typically is the major health care facility in its region, with many beds for intensive care and additional beds for patients who need long-term care. Specialized hospitals include trauma centers, rehabilitation hospitals, children (geriatric) hospitals, and hospitals for dealing with specific medical needs such as psychiatric treatment (see psychiatric hospital) and certain disease categories. Specialized hospitals can help reduce health care costs compared to general hospitals.[2] Hospitals are classified as general, specialty, or government depending on the sources of income received..',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),

          ),


          Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: <Widget>[

                Padding(padding: EdgeInsets.all(20.0)),

                Image(
                  image: AssetImage('images/shop.jpeg'),
                  width: 600,
                  height: 200,

                ),

                SizedBox(width: 30),

                Padding(padding: EdgeInsets.all(20.0)),
                Expanded(

                  child: Text(
                'Online shopping is a form of electronic commerce which allows consumers to directly buy goods or services from a seller over the Internet using a web browser or a mobile app. Consumers find a product of interest by visiting the website of the retailer directly or by searching among alternative vendors using a shopping search engine, which displays the same products availability and pricing at different e-retailers. As of 2020, customers can shop online using a range of different computers and devices, including desktop computers, laptops, tablet computers and smartphones..',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      )
                    ),
                  ),

              ],
            ),

          ),
        ][currentPageIndex]

    );

  }
}