import 'package:flutter/material.dart';
class Home2 extends StatelessWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(

          children: [
            Container(
              width: 428,
              height: 83,
              color: Color(0xff0E3C6E),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 50,
                    height:50,
                    decoration: BoxDecoration(
                      color: Colors.white,

                      borderRadius: BorderRadius.circular(50),
                    ),
                    child:Icon(Icons.arrow_back,color: Color(0xff0C55EC),) ,
                  ),
                  Container(
                    width: 50,
                    height:50,
                    decoration: BoxDecoration(
                      color: Colors.white,

                      borderRadius: BorderRadius.circular(50),
                    ),
                    child:Icon(Icons.bookmark_outline,color: Colors.black,) ,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(width: 428,
                  height: 271,
                  child: Hero(
                    tag: 'img',
                    child: Image.asset('assets/clg1.jpg'),
                  ),),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'GHJK Engineering college',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          width: 250,
                          height: 100,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 2,right: 5
                            ),
                            child: Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus .'
                              ,
                              style: TextStyle(
                                fontSize: 14,
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
                        SizedBox(height: 20,),
                        Container(
                          height: 74,
                          width: 52,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.green,
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 10,),
                              Text('4.3',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                              SizedBox(height: 10,),
                              Icon(Icons.star,color: Colors.white,),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10,),
            //navbar





//Tab contents








          ],
        ),
        // InkWell(
        //   child: Container(
        //     width: double.infinity,
        //     height: 56,
        //
        //     decoration: BoxDecoration(
        //       borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10),bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)),
        //       color: Color(0xff0E3C6E),
        //     ),
        //     child: Center(
        //       child: Text(
        //         "Apply Now",
        //         style: TextStyle(
        //           fontSize: 20,
        //           fontWeight: FontWeight.w700,
        //           color: Colors.white,
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
