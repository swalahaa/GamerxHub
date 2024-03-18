import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class AddCollection extends StatefulWidget {
  const AddCollection({super.key});

  @override
  State<AddCollection> createState() => _AddCollectionState();
}

class _AddCollectionState extends State<AddCollection> {

  final _name = TextEditingController();
  final _country = TextEditingController();
  final _age = TextEditingController();
  final _rank = TextEditingController();
  final _image = TextEditingController();


  void _addtopplayer() {
    final name = _name.text;
    final country = _country.text;
    final age = _age.text;
    final rank = _rank.text;
    final image = _image.text;




//    Time = DateFormat('kk:mm').format(now);



    FirebaseFirestore.instance
        .collection('Top Players')
        .add({
      'name': name,
      'country': country,
      'age': age,
      'rank': rank,
      'image': image

        });

  }

  @override
  Widget build(BuildContext context) {
    return  FlutterSizer(builder: (context, orientation, deviceType) {
      return Scaffold(

        body: ListView(
          children: [


            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Column(
                          children: const [
                            Text('Lets Discuss about the diverse things with', style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),),
                            Text(' anonymous people')
                          ],
                        ),
                      )
                    ],
                  ),
                ),

                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: Container(
                        height: 70,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            gradient:const LinearGradient(
                                colors: [Colors.pinkAccent, Colors.blue]
                            ),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: TextField(
                          maxLines: 8,
                          controller: _image,
                          textInputAction: TextInputAction.done,
                          maxLength: 400,
                          decoration:
                          const InputDecoration(hintText: 'Enter Vibes Here'),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: Container(
                        height: 70,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            gradient:const LinearGradient(
                                colors: [Colors.pinkAccent, Colors.blue]
                            ),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: TextField(
                          maxLines: 8,
                          controller: _name,
                          textInputAction: TextInputAction.done,
                          maxLength: 400,
                          decoration:
                          const InputDecoration(hintText: 'Enter Namw Here'),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: Container(
                        height: 70,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            gradient:const LinearGradient(
                                colors: [Colors.pinkAccent, Colors.blue]
                            ),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: TextField(
                          maxLines: 8,
                          controller: _age,
                          textInputAction: TextInputAction.done,
                          maxLength: 400,
                          decoration:
                          const InputDecoration(hintText: 'Enter Age Here'),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: Container(
                        height: 70,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            gradient:const LinearGradient(
                                colors: [Colors.pinkAccent, Colors.blue]
                            ),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: TextField(
                          maxLines: 8,
                          controller: _country,
                          textInputAction: TextInputAction.done,
                          maxLength: 400,
                          decoration:
                          const InputDecoration(hintText: 'Enter Country Here'),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: Container(
                        height: 70,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            gradient:const LinearGradient(
                                colors: [Colors.pinkAccent, Colors.blue]
                            ),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: TextField(
                          maxLines: 8,
                          controller: _rank,
                          textInputAction: TextInputAction.done,
                          maxLength: 400,
                          decoration:
                          const InputDecoration(hintText: 'Enter Vibes Ranks Here'),
                        ),
                      ),
                    ),

                    ElevatedButton(
                        onPressed: (){
                          setState(() {
                            _addtopplayer();

                          });

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Container()));
                        }, child: const Text("Send"))
                  ],
                )
              ],
            ),

          ],
        ),
      );
    });
  }
}




