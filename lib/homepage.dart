import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gamerxhub/call_of_duty/homepage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('Gamerx Hub'),
      ),
      drawer: Drawer(),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [

            Text('Hi Mustapha', style: TextStyle(
                color: Colors.grey
            ),),

            Text('Your favourite Games', style: TextStyle(
                color: Colors.white,
              fontSize: 20
            ),),

            Text('Here!!', style: TextStyle(
                color: Colors.white
            ),),

            Container(
              height: 280,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30)
              ),
              child: CarouselSlider(
                  items:[
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                          height: 150,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(colors: [
                              Colors.white,
                              Colors.blue
                            ]),

                          ),
                        child: Image.asset('assets/images/mus1.jpg', fit: BoxFit.fill,),


                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        height: 150,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(colors: [
                            Colors.white,
                            Colors.blue
                          ]),

                        ),
                        child: Image.asset('assets/images/mus2.jpg', fit: BoxFit.fill,),


                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        height: 150,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(colors: [
                            Colors.white,
                            Colors.blue
                          ]),

                        ),
                        child: Image.asset('assets/images/mus3.jpg', fit: BoxFit.fill,),


                      ),
                    ),

                  ],
                  options: CarouselOptions(
                    height: 280,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 2),
                    autoPlayAnimationDuration: Duration(milliseconds: 1300),
                    autoPlayCurve: Curves.bounceIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.7,

                    scrollDirection: Axis.horizontal,
                  )
              ),
            ),




            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Trending Game', style: TextStyle(
                    color: Colors.white,
                  ),),


                  Text('See All', style: TextStyle(
                    color: Colors.white,
                  ),)
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 1.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return HomepageCodm();
                  }));
                },
                child: Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      gradient: LinearGradient(colors: [
                        Colors.white30,
                        Colors.white60
                      ]),
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 60,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(4)
                          ),
                          child: Image.asset('assets/images/codm.jpg', fit: BoxFit.fill
                            ,),
                        ),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('Call Of Duty'),
                            Text('80 Players active')
                          ],
                        ),

                        Container(
                          height: 40,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                          ),
                          child: Center(child: Text('View')),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return HomepageCodm();
                  }));
                },
                child: Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      gradient: LinearGradient(colors: [
                        Colors.white30,
                        Colors.white60
                      ]),
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 60,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(4)
                          ),
                          child: Image.asset('assets/images/codm.jpg', fit: BoxFit.fill
                            ,),
                        ),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('Call Of Duty'),
                            Text('80 Players active')
                          ],
                        ),

                        Container(
                          height: 40,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                          ),
                          child: Center(child: Text('View')),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return HomepageCodm();
                  }));
                },
                child: Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      gradient: LinearGradient(colors: [
                        Colors.white30,
                        Colors.white60
                      ]),
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 60,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(4)
                          ),
                          child: Image.asset('assets/images/codm.jpg', fit: BoxFit.fill
                            ,),
                        ),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('Call Of Duty'),
                            Text('80 Players active')
                          ],
                        ),

                        Container(
                          height: 40,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                          ),
                          child: Center(child: Text('View')),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return HomepageCodm();
                  }));
                },
                child: Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      gradient: LinearGradient(colors: [
                        Colors.white30,
                        Colors.white60
                      ]),
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 60,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(4)
                          ),
                          child: Image.asset('assets/images/codm.jpg', fit: BoxFit.fill
                            ,),
                        ),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('Call Of Duty'),
                            Text('80 Players active')
                          ],
                        ),

                        Container(
                          height: 40,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                          ),
                          child: Center(child: Text('View')),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return HomepageCodm();
                  }));
                },
                child: Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      gradient: LinearGradient(colors: [
                        Colors.white30,
                        Colors.white60
                      ]),
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 60,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(4)
                          ),
                          child: Image.asset('assets/images/codm.jpg', fit: BoxFit.fill
                            ,),
                        ),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('Call Of Duty'),
                            Text('80 Players active')
                          ],
                        ),

                        Container(
                          height: 40,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                          ),
                          child: Center(child: Text('View')),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return HomepageCodm();
                  }));
                },
                child: Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      gradient: LinearGradient(colors: [
                        Colors.white30,
                        Colors.white60
                      ]),
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 60,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(4)
                          ),
                          child: Image.asset('assets/images/codm.jpg', fit: BoxFit.fill
                            ,),
                        ),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('Call Of Duty'),
                            Text('80 Players active')
                          ],
                        ),

                        Container(
                          height: 40,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                          ),
                          child: Center(child: Text('View')),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return HomepageCodm();
                  }));
                },
                child: Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      gradient: LinearGradient(colors: [
                        Colors.white30,
                        Colors.white60
                      ]),
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 60,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(4)
                          ),
                          child: Image.asset('assets/images/codm.jpg', fit: BoxFit.fill
                            ,),
                        ),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('Call Of Duty'),
                            Text('80 Players active')
                          ],
                        ),

                        Container(
                          height: 40,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                          ),
                          child: Center(child: Text('View')),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),








          ],
        ),
      )
    );
  }
}
