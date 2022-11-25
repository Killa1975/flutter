import 'package:flutter/material.dart';

class IPhone13mini extends StatelessWidget {
  const IPhone13mini({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 250, 246, 245),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Stack(
              children: <Widget>[
                Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset('img/background.png',
                        fit: BoxFit.cover)),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 281, 0, 0),
                    child: Image.asset('img/Plug.png',
                        fit: BoxFit.cover)),
                Container(
                    margin: const EdgeInsets.fromLTRB(133, 248, 0, 0),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(
                                side: BorderSide(
                                    color: Color.fromARGB(255, 250, 246, 245))),
                            shadowColor:
                                const Color.fromARGB(255, 250, 246, 245)),
                        child: Image.asset('img/Play.png',
                            height: 80, width: 80))),
                Container(
                    margin: const EdgeInsets.fromLTRB(2, 25, 0, 0),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(
                                side: BorderSide(
                                    color: Color.fromARGB(0, 0, 0, 0))),
                            shadowColor: const Color.fromARGB(0, 0, 0, 0)),
                        child: Image.asset('img/Back.png',
                            height: 52, width: 52)))
              ],
            ),
            Column(
              children: [
                Container(
                    margin: const EdgeInsets.only(top: 5),
                    child: const Align(
                        alignment: Alignment.topCenter,
                        child: Text('Secrets of Atlantis',
                            style: TextStyle(
                                color: Color.fromARGB(255, 17, 17, 17),
                                
                                fontSize: 34.81,
                                fontWeight: FontWeight.w700)))),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: SizedBox(
                    width: 150,
                    height: 35,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            shadowColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(255, 254, 122, 21)),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(255, 250, 246, 245)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0)))),
                        child: const Text('Follow',
                            style: TextStyle(
                                color: Color.fromARGB(255, 254, 122, 21),
                                
                                fontSize: 17))))),
                Container(
                    margin: const EdgeInsets.fromLTRB(5, 15, 5, 0),
                    child: Image.asset('img/first.png',
                        fit: BoxFit.cover)),
                Container(
                    margin: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                    child: Image.asset('img/isecond.png',
                        fit: BoxFit.cover)),
              ],
            ),
          ],
        )));
  }
}
