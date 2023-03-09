import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tic_tac_toe/constants.dart';
import 'package:tic_tac_toe/screens/grid_screen.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  String? playerAname;
  String? playerBname;
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 350, top: 50),
              child: IconButton(
                  onPressed: () {
                    ColorConstants().randomiseTheme();
                    setState(() {});
                  },
                  icon: Icon(
                    Icons.color_lens_outlined,
                    color: ColorConstants.colorList[3],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Text(
                'Tic-Tac-Toe',
                style: GoogleFonts.nunito(
                    color: ColorConstants.colorList[1], fontSize: 60),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 70, right: 70),
              child: TextFormField(
                onChanged: (value) {
                  playerAname = value;
                },
                cursorColor: ColorConstants.colorList[3],
                style: GoogleFonts.nunito(
                    fontSize: 15, color: ColorConstants.colorList[0]),
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: ColorConstants.colorList[0])),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: ColorConstants.colorList[0])),
                    labelStyle: GoogleFonts.nunito(
                        fontSize: 15, color: ColorConstants.colorList[0]),
                    labelText: 'Player 1 Name'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 70, right: 70),
              child: TextFormField(
                onChanged: (value) {
                  playerBname = value;
                },
                cursorColor: ColorConstants.colorList[3],
                style: GoogleFonts.nunito(
                    fontSize: 15, color: ColorConstants.colorList[3]),
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: ColorConstants.colorList[3])),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: ColorConstants.colorList[3])),
                    labelStyle: GoogleFonts.nunito(
                        fontSize: 15, color: ColorConstants.colorList[3]),
                    labelText: 'Player 2 Name'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 100, left: 100),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: ColorConstants.colorList[1]),
                onPressed: () {
                  if (playerAname != '' &&
                      playerBname != '' &&
                      playerAname != null &&
                      playerBname != null) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GridScreen(
                                  playerAname: playerAname,
                                  playerBname: playerBname,
                                )));
                  } else {
                    getSnackbar('Please fill in both fields', context);
                  }
                },
                child: Text(
                  'Start',
                  style: GoogleFonts.nunito(
                      color: ColorConstants.colorList[2], fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
