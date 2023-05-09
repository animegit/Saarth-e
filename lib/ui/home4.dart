import 'package:flutter/material.dart';

import 'home2.dart';


class Home4 extends StatefulWidget {
  const Home4({Key? key}) : super(key: key);

  @override
  State<Home4> createState() => _Home4State();
}

class _Home4State extends State<Home4> {


  @override
  Widget build(BuildContext context) {


    return Scaffold(

      body:DefaultTabController(
        length: 4,
        child: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  backgroundColor: Colors.white,
                  collapsedHeight: 500,
                  expandedHeight: 200,
                  flexibleSpace: Home2(),
                ),
              ];
            },
            body: Column(
              children: [
                Container(
                  height: 46,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        blurRadius: 5,
                        offset: Offset(0, -1),
                      ),
                    ],
                  ),
                  child: TabBar(
                    tabs: [
                      Tab(text: 'About college'),
                      Tab(text: 'Hostel Facility'),
                      Tab(text: 'Q&A'),
                      Tab(text: 'Events'),
                    ],
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Colors.blue,
                    isScrollable: true,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 30.0),
                    child: TabBarView(
                      children: [
                        Tab1Content(),
                        Tab2Content(),
                        Tab1Content(),
                        Tab2Content(),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width*0.95,

                    decoration: BoxDecoration(
                      color: Color(0xff0E3C6E),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(5),bottomRight: Radius.circular(5),bottomLeft: Radius.circular(5),topRight: Radius.circular(5)),
                    ),
                    child: Center(
                      child: Text(
                        'Apply Now',
                        style: TextStyle(
                        color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      )


    );
  }
}













class Tab1Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return        Container(
      height: 600,
      child: SingleChildScrollView(
        child: Column(


          children: [
            Container(
              width: 364,
              height: 130,
              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Description",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff969797),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),

            Container(
              width: 364,
              height: 184,
              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Location",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    width: 364,
                    height: 150,
                    decoration: BoxDecoration(

                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/map.png',
                        width: 364,
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                ],
              ),
            ),

            SizedBox(height: 10,),
            Container(
              width: 364,
              height: 100,
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(20),

              ),


              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Student Review',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20),


                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20),


                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20),


                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20),


                        ),
                      ),
                      Container(
                        width: 77,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xffE7E6E6),
                          borderRadius: BorderRadius.circular(20),

                        ),
                        child: Center(child: Text('+12',style:TextStyle(color:Color(0xff0E3C6E)))),
                      ),



                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: 364,
              height: 130,
              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Arun Sai",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff969797),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star,color: Colors.yellow,fill: 1,),
                      Icon(Icons.star,color: Colors.yellow,fill: 1.0,),
                      Icon(Icons.star,color: Colors.yellow,fill: 0.1,),
                    ],
                  )
                ],
              ),
            ),







          ],
        ),
      ),
    );
  }
}

class Tab2Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
         children:[ Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 69,
                height: 31,
                decoration: BoxDecoration(
                  color: Color(0xff0E3C6E),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(5),bottomRight: Radius.circular(5),bottomLeft: Radius.circular(5),topRight: Radius.circular(5)),

                ),
                child: Center(

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.bed,color: Colors.white,),
                      Text('4',style: TextStyle(color: Colors.white),),
                    ],
                  ),
                ),
              ),
              Container(
                width: 69,
                height: 31,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color:Color(0xff0E3C6E)
                  ),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(5),bottomRight: Radius.circular(5),bottomLeft: Radius.circular(5),topRight: Radius.circular(5)),

                ),
                child: Center(

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.bed,color: Colors.black,),
                      Text('3',style: TextStyle(color: Colors.black),),
                    ],
                  ),
                ),
              ),
              Container(
                width: 69,
                height: 31,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color:Color(0xff0E3C6E)
                  ),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(5),bottomRight: Radius.circular(5),bottomLeft: Radius.circular(5),topRight: Radius.circular(5)),

                ),
                child: Center(

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.bed,color: Colors.black,),
                      Text('2',style: TextStyle(color: Colors.black),),
                    ],
                  ),
                ),
              ),
              Container(
                width: 69,
                height: 31,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color:Color(0xff0E3C6E)
                  ),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(5),bottomRight: Radius.circular(5),bottomLeft: Radius.circular(5),topRight: Radius.circular(5)),

                ),
                child: Center(

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.bed,color: Colors.black,),
                      Text('1',style: TextStyle(color: Colors.black),),
                    ],
                  ),
                ),
              ),



            ],
          ),
           SizedBox(height: 40,),
           MyImageRow(),
           SizedBox(height: 20,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text('GHJK Enginnering Hostel',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),),
               Container(
                 height: 22,
                 width: 52,
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [

                     Text('4.3',style: TextStyle(color: Colors.white,fontSize:13,fontWeight: FontWeight.w800 ),),
                     Icon(Icons.star,color: Colors.white,size: 15,)
                   ],
                 ),
                 decoration: BoxDecoration(
                   color: Colors.green,
                   borderRadius: BorderRadius.circular(10),

                 ),
               ),
             ],
           ),
           SizedBox(height: 10,),
           Row(
             children: [
               Icon(Icons.location_on_sharp,color: Colors.blue,),
               Text('Lorem ipsum dolor sit amet, consectetur ',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color: Color(0xff4A4A4A)),)
             ],
           ),
SizedBox(height: 10,),
Container(
  width: 364,
  height: 111,
  child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14,color: Color(0xff969797)),),
),
           SizedBox(height: 20,),
           Column(



             children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Text('Facilities',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                 ],
               ),
               SizedBox(height: 10,),
               Row(
                 children: [
                   Image.asset('assets/uni.png',width: 26,height: 26,),
                   SizedBox(width:5),
                   Text('College in 400 meters')
                 ],
               ),
               SizedBox(height: 10,),
               Row(
                 children: [
                   Image.asset('assets/bath.png',width: 26,height: 26,),
                   SizedBox(width:5),
                   Text('Bathroom: 2')
                 ],
               ),

             ],
           ),


        ],),
      ),
    );
  }
}

class MyDelegate extends SliverPersistentHeaderDelegate {
  MyDelegate(this.tabbar);

  final TabBar tabbar;

  @override
  double get maxExtent => tabbar.preferredSize.height;

  @override
  double get minExtent => tabbar.preferredSize.height;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return tabbar;
  }

  @override
  bool shouldRebuild(covariant MyDelegate oldDelegate) {
    return false;
  }
}




class MyImageRow extends StatefulWidget {
  @override
  _MyImageRowState createState() => _MyImageRowState();
}

class _MyImageRowState extends State<MyImageRow> {
  final List<String> _images = [   'bed.jpg',    'bed.jpg',    'bed.jpg',    'bed.jpg'  'bed.jpg',  ];
  final PageController _pageController = PageController(viewportFraction: 0.85);
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 137,
          child: PageView.builder(
            controller: _pageController,
            itemCount: _images.length,
            onPageChanged: (int index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemBuilder: (BuildContext context, int index) {
              return Container(
                width: 154,
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage('assets/bed.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 10.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _buildPageIndicator(),
        ),
      ],
    );
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < _images.length; i++) {
      indicators.add(
        Container(
          margin: EdgeInsets.symmetric(horizontal: 2.0),
          width: 8.0,
          height: 8.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentPage == i ? Colors.blue : Colors.grey[400],
          ),
        ),
      );
    }
    return indicators;
  }
}









