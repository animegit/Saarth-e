import 'package:flutter/material.dart';
import 'package:flutter_task/ui/home4.dart';

import 'home3.dart';
class Home3 extends StatefulWidget {
  const Home3({Key? key}) : super(key: key);

  @override
  State<Home3> createState() => _Home3State();
}

class _Home3State extends State<Home3> {

  int _selectedIndex = 0;


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
              height: 153,
              decoration: BoxDecoration(
                color: Color(0xff0E3C6E),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
              ),
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [



                  Padding(
                    padding: const EdgeInsets.only(right: 90),
                    child: Column(
                        children: [




                          ],),



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

            SizedBox(height: 50,),
            Expanded(child: Column(

              children: [
                Container(
                  height: 352,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Home4()));
                          },
                          child: Hero(
                            tag: 'img',
                            child: Card(
                              elevation: 7,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Container(
                                height: 243,
                                width: 354,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),


                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Stack(
                                      children: [
                                        Container(
                                          height: 116,
                                          width: 354,
                                          child: Image.asset(
                                            'assets/clg1.jpg',
                                            fit: BoxFit.cover,

                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                                          ),
                                        ),
                                        Positioned(
                                          top: 0,
                                          left: 0,
                                          child: CircleAvatar(
                                            radius: 20,
                                            backgroundColor: Colors.white,
                                            child: Icon(
                                              Icons.share_outlined,
                                              color: Colors.black,
                                              size: 24,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 0,
                                          right: 0,
                                          child: CircleAvatar(
                                            radius: 20,
                                            backgroundColor: Colors.white,
                                            child: Icon(
                                              Icons.bookmark_outline,
                                              color: Colors.black,
                                              size: 24,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 16),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'GHJK Engineering college',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            SizedBox(height: 10,),
                                            Container(
                                              width: 250,
                                              height: 30,
                                              child: Padding(
                                                padding: const EdgeInsets.only(top: 2),
                                                child: Text(
                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu ut imperdiet sed nec ullamcorper.'
                                                      '',
                                                  style: TextStyle(
                                                    fontSize: 9,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.grey[700],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Spacer(),
                                        Column(
                                          children: [
                                            Container(
                                              height: 22,
                                              width: 52,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(20),
                                                color: Colors.green,
                                              ),
                                              child: Center(child: Text('4.3',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                            ),
                                            SizedBox(height: 8),
                                            Container(
                                              height: 22,
                                              width: 78,
                                              child:  Center(child: Text('Apply Now',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(20),
                                                  color: Color(0xff0E3C6E)
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [

                                        Container(
                                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                                          child: Divider(
                                            thickness: 0.4,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Container(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [


                                              Padding(
                                                padding: const EdgeInsets.only(left: 30),
                                                child: Image.asset('assets/like.png',width: 26,height: 26,),
                                              ),
                                              SizedBox(width: 20,),

                                              Text(
                                                'More than 1000+ students have been placed',
                                                style: TextStyle(fontSize: 9.0, color: Colors.black),
                                              ),
                                              SizedBox(width: 40,),
                                              Padding(
                                                padding: const EdgeInsets.only(left: 1),
                                                child: Row(
                                                  children: [
                                                    Icon(Icons.remove_red_eye_outlined,color: Colors.grey,),
                                                    Text('322+',style: TextStyle(color: Colors.grey),)
                                                  ],
                                                ),
                                              ),



                                            ],
                                          ),
                                        )

                                      ],
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Card(
                          elevation: 7,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            height: 243,
                            width: 354,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),


                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      height: 116,
                                      width: 354,
                                      child: Image.asset(
                                        'assets/clg2.jpg',
                                        fit: BoxFit.cover,

                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                                      ),
                                    ),
                                    Positioned(
                                      top: 0,
                                      left: 0,
                                      child: CircleAvatar(
                                        radius: 20,
                                        backgroundColor: Colors.white,
                                        child: Icon(
                                          Icons.share_outlined,
                                          color: Colors.black,
                                          size: 24,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 0,
                                      right: 0,
                                      child: CircleAvatar(
                                        radius: 20,
                                        backgroundColor: Colors.white,
                                        child: Icon(
                                          Icons.bookmark_outline,
                                          color: Colors.black,
                                          size: 24,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 16),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'GHJK Engineering college',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        SizedBox(height: 10,),
                                        Container(
                                          width: 250,
                                          height: 30,
                                          child: Padding(
                                            padding: const EdgeInsets.only(top: 2),
                                            child: Text(
                                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu ut imperdiet sed nec ullamcorper.'
                                                  '',
                                              style: TextStyle(
                                                fontSize: 9,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.grey[700],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Column(
                                      children: [
                                        Container(
                                          height: 22,
                                          width: 52,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: Colors.green,
                                          ),
                                          child: Center(child: Text('4.3',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                        ),
                                        SizedBox(height: 8),
                                        Container(
                                          height: 22,
                                          width: 78,
                                          child:  Center(child: Text('Apply Now',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20),
                                              color: Color(0xff0E3C6E)
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [

                                    Container(
                                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                                      child: Divider(
                                        thickness: 0.4,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [


                                          Padding(
                                            padding: const EdgeInsets.only(left: 30),
                                            child: Image.asset('assets/like.png',width: 26,height: 26,),
                                          ),
                                          SizedBox(width: 20,),

                                          Text(
                                            'More than 1000+ students have been placed',
                                            style: TextStyle(fontSize: 9.0, color: Colors.black),
                                          ),
                                          SizedBox(width: 40,),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 1),
                                            child: Row(
                                              children: [
                                                Icon(Icons.remove_red_eye_outlined,color: Colors.grey,),
                                                Text('322+',style: TextStyle(color: Colors.grey),)
                                              ],
                                            ),
                                          ),

                                      

                                        ],
                                      ),
                                    )

                                  ],
                                ),

                              ],
                            ),
                          ),
                        ),

                        SizedBox(height: 20,),


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
