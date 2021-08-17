import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learnflutter/controller/changeTextController.dart';

class Home extends StatelessWidget {
  // ChangeTextController _changeTextController1 = Get.put(ChangeTextController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          child: Column(
            children: [
              GetX<ChangeTextController>(
                  init: ChangeTextController(),
                  builder: (_changeTextController) {
                    return Column(
                      children: [
                        Text(
                          '${_changeTextController.counter.value}',
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            _changeTextController.changeTextUI();
                          },
                          icon: Icon(Icons.change_circle),
                        ),
                      ],
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
