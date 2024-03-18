import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ViewingCollection extends StatefulWidget {
  const ViewingCollection({super.key});

  @override
  State<ViewingCollection> createState() => _ViewingCollectionState();
}

class _ViewingCollectionState extends State<ViewingCollection> {
  final CollectionReference _games =
  FirebaseFirestore.instance.collection('Games');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  FutureBuilder(
          future: _games.get(),
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
                    Container(
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
                              child: Image.network('${document['image']}', fit: BoxFit.fill
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

                  ],
                )).toList() ,
              );
            }


            return CircularProgressIndicator();



          }
      ),
    );
  }
}
