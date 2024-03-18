
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';




class AddVibes extends StatefulWidget {
  const AddVibes({Key? key}) : super(key: key);

  @override
  _AddVibesState createState() => _AddVibesState();
}

class _AddVibesState extends State<AddVibes> {





  final _postvibe = TextEditingController();


  void _postVibe() {
    final vibes = _postvibe.text;

    final Time =DateTime.now().toString();

//    Time = DateFormat('kk:mm').format(now);



    FirebaseFirestore.instance
        .collection('Add Vibes')
        .add({'Vibes': vibes, 'time': Time});

  }

  @override
  Widget build(BuildContext context) {
    return FlutterSizer(builder: (context, orientation, deviceType) {
      return ListView(
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
                  Container(
                    height: 40.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        gradient:const LinearGradient(
                            colors: [Colors.pinkAccent, Colors.blue]
                        ),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: TextField(
                      maxLines: 8,
                      controller: _postvibe,
                      textInputAction: TextInputAction.done,
                      maxLength: 400,
                      decoration:
                      const InputDecoration(hintText: 'Enter Vibes Here'),
                    ),
                  ),

                  ElevatedButton(
                      onPressed: (){
                        setState(() {
                          _postVibe();

                        });

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>Container()));
                      }, child: const Text("Send"))
                ],
              )
            ],
          ),

        ],
      );
    });
  }
}

