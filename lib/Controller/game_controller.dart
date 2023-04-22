import 'package:get/get.dart';
import 'dart:io';
import 'package:path/path.dart' as p;
class GameController extends GetxController{
   var text ='MARIO'.obs;
   open(){
     text.value ='Thank You';
   }
}
