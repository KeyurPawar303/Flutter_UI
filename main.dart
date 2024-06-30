import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ui/Alert_Widget.dart';
import 'package:ui/Animate_Text.dart';
import 'package:ui/Bottom_Navigation.dart';
import 'package:ui/Bottom_sheet.dart';
import 'package:ui/Button.dart';
import 'package:ui/Drawer.dart';
import 'package:ui/Drop_Down.dart';
import 'package:ui/Images_widget.dart';
import 'package:ui/List_Grid.dart';
import 'package:ui/RowsCols.dart';
import 'package:ui/SnakBar.dart';
import 'package:ui/Dissimisble.dart';
import 'package:ui/cloning_ui.dart';
import 'package:ui/forms_input.dart';
import 'package:ui/geo_locator.dart';
import 'package:ui/tab_bar.dart';
import 'package:ui/u_i.dart';
import 'Container_Size.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(UIDesign());
}

class UIDesign extends StatelessWidget {
  const UIDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.orange,
      ),
      home: CloningUi(),
    );
  }
}
