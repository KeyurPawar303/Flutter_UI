import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                    overlayColor: MaterialStateProperty.all(Colors.black),
                    elevation: MaterialStateProperty.all(20),
                    backgroundColor: MaterialStateProperty.all(Colors.blue)),
                onPressed: () {},
                child: const Text(
                  "clickMe",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                )),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 200,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)))),
                  onPressed: () {
                    print("LikeKro");
                  },
                  child: const Text(
                    "clickME",
                    style: TextStyle(fontSize: 20,color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
