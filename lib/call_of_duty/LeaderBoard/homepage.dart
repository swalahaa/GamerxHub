import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gamerxhub/call_of_duty/LeaderBoard/multiplayer.dart';

class LeaderBoardCodm extends StatefulWidget {
  const LeaderBoardCodm({super.key});

  @override
  State<LeaderBoardCodm> createState() => _LeaderBoardCodmState();
}

class _LeaderBoardCodmState extends State<LeaderBoardCodm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return LeaderBoardMultiplayer();
                }));
              },
              child: Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10),

                ),
                child: Center(child: Text('Multiplayer')),
              ),
            )
          ],
        ),
      ),
    );
  }
}
