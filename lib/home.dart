import 'package:flutter/material.dart';
import 'package:assignment/Controller/game_controller.dart';
import 'package:get/get.dart';
import 'package:assignment/Model/Game.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GameController gameController = Get.put(GameController());
    return Scaffold(
      backgroundColor: Color(0xFFffe2e3),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Colors.white,
        ),
        padding: EdgeInsets.only(top: 10, left: 15, right: 15),
        margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS693rzvZPWXRASQ2EYLJor2IFN6c3iicveBA&usqp=CAU",
                  height: 50,
                ),
                Image.network(
                  "https://cdn1.iconfinder.com/data/icons/avatars-55/100/avatar_profile_user_music_headphones_shirt_cool-512.png",
                  height: 60,
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(children: [
              Text(
                "Trending",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 40,
                ),
              ),
              Container(
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbnsW_siH8YXYHGdgMAdHmJ8Gkns5fLOdR1A&usqp=CAU",
                  height: 60,
                ),
              )
            ]),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24)),
                      width: 180,
                      height: 400,
                      child: Column(
                        children: [
                          InkWell(
                            onTap: (){
                              gameController.open();
                            },
                              child: Image.network(
                                  "https://cdn.dribbble.com/userupload/2688794/file/original-081325d5cdba5b04b14f0c28c17ff2c3.jpg?compress=1&resize=400x300&vertical=top")),
                          SizedBox(
                            height: 10,
                          ),
                          Obx(()=>Text(
                            gameController.text.value,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24)),
                      width: 180,
                      height: 300,
                      child: Column(
                        children: [
                          Image.network(
                              "https://cdn.dribbble.com/users/10974618/screenshots/19954032/media/a93c7a35631c60f0178e81aac3cd1cca.png?compress=1&resize=400x300&vertical=top"),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "CALL OF DUTY",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 190,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Container(
                      child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXmZKNpRiL-CmgiPMgC0wD6Hf-A7CoOJFGiQ&usqp=CAU"),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
