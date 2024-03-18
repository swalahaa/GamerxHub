import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HomepageTopPlayer extends StatefulWidget {
  const HomepageTopPlayer({super.key});

  @override
  State<HomepageTopPlayer> createState() => _HomepageTopPlayerState();
}

class _HomepageTopPlayerState extends State<HomepageTopPlayer> {
  final CollectionReference _topplayer =
  FirebaseFirestore.instance.collection('Top Players');

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [

            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black12,


              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('3rd'),
                  CircleAvatar(
                    radius: 40,
                  ),

                  CircleAvatar(
                    radius: 70,
                  ),

                  CircleAvatar(
                    radius: 40,
                  )
                ],
              ),
            ),


            FutureBuilder(
                future: _topplayer.get(),
                builder: (context,snapshot){
                  if(snapshot.hasError){
                    return Scaffold(
                      body: Center(child: Text('Error: ${snapshot.error}'),),
                    );
                  }


                  if(snapshot.connectionState== ConnectionState.done){
                    return Column(
                      children: snapshot.data!.docs.map((document) => Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                            child: Container(
                              height: 70,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircleAvatar(
                                      child: Text('${document['rank']}'),
                                    ),
                                    Text('${document['name']}'),
                                    CircleAvatar(
                                        backgroundImage:NetworkImage('${document['image']}')
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),

                        ],
                      )).toList() ,
                    );
                  }


                  return CircularProgressIndicator();



                }
            ),


          ],
        ),
      ),
    );
  }
}
