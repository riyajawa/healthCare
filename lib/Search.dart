import 'package:flutter/material.dart';

void main() {
  runApp(Sear());
}

class Sear extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new SearchPage(),

    );
  }
}

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('FirstAid'),
        backgroundColor: Color(0xFF3CAA78),
        
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: (){
            showSearch(context: context, delegate: DataSearch());
          })
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              color: Color(0xFF3CAA78),
              child: Center(
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://img.favpng.com/2/15/4/doctor-symbol-png-favpng-H2aJfXLCvZeVrj5Y05G5aD47v.jpg'
                            ),
                            fit: BoxFit.cover
                        ),
                      ),


                    )
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home",style: TextStyle(fontSize: 18),),
              onTap: () {
                Navigator.pushNamed(context, '/dashboard');
              },
            ),
            ListTile(
              leading: Icon(Icons.search),
              title: Text("Search",style: TextStyle(fontSize: 18),),
              onTap: null,
            ),
            ListTile(
              leading: Icon(Icons.medical_services),
              title: Text("Medicines",style: TextStyle(fontSize: 18),),
              onTap: () {
                Navigator.pushNamed(context, '/med');
              },
            ),
            ListTile(
              leading: Icon(Icons.mode_edit),
              title: Text("BMI",style: TextStyle(fontSize: 18),),
              onTap: ()
              {
                Navigator.pushNamed(context, '/bmi');
              },
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text("Call Doctor",style: TextStyle(fontSize: 18),),
              onTap: null,
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout",style: TextStyle(fontSize: 18),),
              onTap: null,
            )

          ],
        ),

      ),
      
    );
    
  }
}

class DataSearch extends SearchDelegate<String>{
  final med=[
    "citirizine",
    "paracetamol",
    "ibuprofen",
    "diazepam",
    "acetaminophen",
    "midorine",
    "thiazide diuretics",
    "clindamycim",

  ];

  final recentmed=[
    "citirizine",
    "paracetamol",
    "ibuprofen",
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    // actions for appbar
    return[
      IconButton(icon: Icon(Icons.clear), onPressed: (){
        query = "";
      })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // leading icon on the left of the bar
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed:(){
          close(context, null);
        } );
  }

  @override
  Widget buildResults(BuildContext context) {
    // show results based on actions
    return Container(
      height:1000,
      child: Row(
        children: [
          Container(
            margin: new EdgeInsets.symmetric(horizontal: 10.0),

            child: Text('Cetirizine is an antihistamine that\n'
                ' reduces the natural chemical\n'
                ' histamine in the body\n'
                ' Histamine can produce symptoms \n'
                ' of sneezing, itching,\n '
                ' watery eyes, and runny nose.\n'
                ' It is used to treat cold or allergy\n'
                ' symptoms such as sneezing, itching,\n'
                ' watery eyes, or runny nose. \n',style: TextStyle(
              fontSize: 20.0,

              color: Color(0xFF205072),

            ),),
          ),


        ],
      ),



      decoration: BoxDecoration(
          color: Color(0xFFE0ECDE),

          borderRadius: BorderRadius.all(Radius.circular(20))

      ),

    );



  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // show when someone search for something
    final suggestionlist = query.isEmpty?
    recentmed:med.where((p) => p.startsWith(query)).toList();

    return ListView.builder(
      itemBuilder: (context,index)=>ListTile(
        onTap: (){
          showResults(context);
        },
        leading: Icon(Icons.medical_services),
        title: RichText(text: TextSpan(
          text: suggestionlist[index].substring(0,query.length),
          style: TextStyle(
              color: Colors.black ,
              fontWeight: FontWeight.bold
          ),
          children: [TextSpan(
              text: suggestionlist[index].substring(query.length),
              style: TextStyle(color: Colors.grey)
          )],
        ),
        ),
      ),
      itemCount: suggestionlist.length,
    );
  }

}

