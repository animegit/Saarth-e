import 'package:flutter/material.dart';

import 'home3.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex = 0;
  int sort1=0;int sort2=1;int sort3=2;int sort4=3;

  int course=1;

  final List<Widget> _pages = [
    Container(
      color: Colors.red,
      child: Center(
        child: Text('Page 1'),
      ),
    ),
    Container(
      color: Colors.green,
      child: Center(
        child: Text('Page 2'),
      ),
    ),
    Container(
      color: Colors.blue,
      child: Center(
        child: Text('Page 3'),
      ),
    ),
    Container(
      color: Colors.orange,
      child: Center(
        child: Text('Page 4'),
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(

        child: Column(
          children: [
            Container(
              width: 428,
              height: 225,
              decoration: BoxDecoration(
                color: Color(0xff0E3C6E),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
              ),
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [

                      Icon(Icons.notification_add, color: Colors.white,),
                    ],
                  ),
                  SizedBox(height: 10.0),

                  Padding(
                    padding: const EdgeInsets.only(right: 90),
                    child: Column(
                        children: [

                          Text(
                            'Find your own way',
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 20,
                              color: Colors.white,


                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 28),
                            child: Text(
                              'Search in 600 colleges around!',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                color: Colors.white,


                              ),
                            ),
                          ),


                        ]),
                  ),
                  SizedBox(height: 50,),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(

                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search, color: Colors.grey[400],),
                            hintText: 'Search for colleges,schools..',
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide: BorderSide.none,
                            ),

                          ),

                        ),
                      ),
                      SizedBox(width: 10.0),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: IconButton(
                          icon: Icon(Icons.mic, color: Color(0xff0E3C6E),),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 30,),
            Expanded(child: Column(

              children: [
                Container(
                  height: 300,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {


                            showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {

    return Container(

    height: 396.0,
    child: Column(
    children: [
      ListTile(

        title: Text('Sort by',style: TextStyle(color: Colors.black),
        ),
        trailing: Icon(Icons.cancel_outlined),
      ),
    GestureDetector(
      onTap:(){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>Home3()));
      },
      child: ListTile(
leading:Icon(Icons.add_outlined),
      title: Text('Bachelors of Technology',style: TextStyle(color: Colors.black),
      ),
      trailing: Radio(
        value: 1,
        groupValue: course,
        onChanged: (value){
setState(() {
  course=value!;
});
        },
      ),
      ),
    ),
      ListTile(
        leading:Icon(Icons.add_outlined),
        title: Text('Bachelors of Architecture',style: TextStyle(color: Colors.black),
        ),
        trailing: Radio(

          value: 2,
          groupValue: course,
          onChanged: (value){

            setState(() {
              course=value!;
            });
          },
        ),
      ),
      ListTile(
        leading:Icon(Icons.add_outlined),
        title: Text('Pahrmacy',style: TextStyle(color: Colors.black),
        ),
        trailing: Radio(
          value: 3,
          groupValue: course,
          onChanged: (value){
            setState(() {
              course=value!;
            });
          },
        ),
      ),
      ListTile(
        leading:Icon(Icons.add_outlined),
        title: Text('Law',style: TextStyle(color: Colors.black),
        ),
        trailing: Radio(
          value: 4,
          groupValue: course,
          onChanged: (value){
            setState(() {
              course=value!;
            });
          },
        ),
      ),
      ListTile(
        leading:Icon(Icons.add_outlined),
        title: Text('Management',style: TextStyle(color: Colors.black),
        ),
        trailing: Radio(
          value: 5,
          groupValue: course,
          onChanged: (value){
            setState(() {
              course=value!;
            });
          },
        ),
      ),



    ],
    ),
    );
    },
    );
    

                            // Show the sort by widget
                          },

                          child: Container(
                            color: Colors.white,
                            child: Container(
                              width: 300,
                              height: 158,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage('assets/clg.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 130, top: 20),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Top Colleges',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 25.0),
                                          child: Text(
                                            'Search through thousands of accredited colleges and universities online to find the right one for you.  Apply in 3 min, and connect with your future.',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // Align widget for new text
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 12, right: 8),
                                      child: Text(
                                        '+126 Colleges',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          color: Colors.white,
                          child: Container(
                            width: 300,
                            height: 158,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: AssetImage('assets/schl.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 110, top: 20),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Top Schools',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20.0),
                                        child: Text(
                                          'Searching for the best school for you just got easier! With our Advanced School Search, you can easily filter out the schools that are fit for you.',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // Align widget for new text
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 25, right: 8),
                                    child: Text(
                                      '+106 Schools',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          color: Colors.white,
                          child: Container(
                            width: 300,
                            height: 158,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: AssetImage('assets/exm.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 130, top: 20),
                                  child: Column(
                                    children: [
                                      Text(
                                        'Exams',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 25.0),
                                        child: Text(
                                          'Find an end to end information about the exams that are happening in India',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // Align widget for new text
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 30, right: 8),
                                    child: Text(
                                      '+16 Exams',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: 37,),
                SafeArea(
                  child: Container(

                    child: BottomNavigationBar(
                      type: BottomNavigationBarType.fixed,
                      backgroundColor: Color(0xff0E3C6E),
                      selectedItemColor: Colors.blue,
                      unselectedItemColor: Colors.grey,
                      currentIndex: _selectedIndex,
                      onTap: _onItemTapped,
                      items: [
                        BottomNavigationBarItem(
                          icon: Icon(Icons.home),
                          label: 'Home',
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.bookmark_add),
                          label: 'Saved',
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.favorite),
                          label: 'Saved',
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.person),
                          label: 'Account',
                        ),
                      ],
                    ),
                  ),
                ),

              ],

            ),),
          ],
        ),
      )
      ,
    );
  }

// Define a method to show the sort by widget
}
