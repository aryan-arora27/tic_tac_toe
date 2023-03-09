import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tic_tac_toe/constants.dart';
import 'package:tic_tac_toe/screens/start_screen.dart';

class GridScreen extends StatefulWidget {
  String? playerAname;
  String? playerBname;
  GridScreen({required this.playerAname, required this.playerBname, Key? key})
      : super(key: key);

  @override
  State<GridScreen> createState() => _GridScreenState();
}

class _GridScreenState extends State<GridScreen> {
  List<String> checkList = ["", "", "", "", "", "", "", "", ""];
  bool chance = true;
  late int scoreA;
  late int scoreB;
  late int filledGrid;
  int lastIndex = 0;
  List<Color?> gridColor = [];

  checkWin() {
    if ((checkList[0] == checkList[1] &&
        checkList[1] == checkList[2] &&
        checkList[0] != "")) {
      if (checkList[0] == '×') {
        scoreA++;
        getSnackbar("${widget.playerAname} wins", context);
      } else {
        scoreB++;
        getSnackbar("${widget.playerBname} wins", context);
      }
      setState(() {
        gridColor[0] = gridColor[1] = gridColor[2] = Colors.blue;
      });
      Future.delayed(const Duration(seconds: 3), () {
        reset();
      });
    } else if ((checkList[3] == checkList[4] &&
        checkList[4] == checkList[5] &&
        checkList[5] != "")) {
      if (checkList[3] == '×') {
        scoreA++;
        getSnackbar("${widget.playerAname} wins", context);
      } else {
        scoreB++;
        getSnackbar("${widget.playerBname} wins", context);
      }
      setState(() {
        gridColor[3] = gridColor[4] = gridColor[5] = Colors.blue;
      });
      Future.delayed(const Duration(seconds: 3), () {
        reset();
      });
    } else if ((checkList[6] == checkList[7] &&
        checkList[7] == checkList[8] &&
        checkList[8] != "")) {
      if (checkList[8] == '×') {
        scoreA++;
        getSnackbar("${widget.playerAname} wins", context);
      } else {
        scoreB++;
        getSnackbar("${widget.playerBname} wins", context);
      }
      setState(() {
        gridColor[6] = gridColor[7] = gridColor[8] = Colors.blue;
      });
      Future.delayed(const Duration(seconds: 3), () {
        reset();
      });
    } else if ((checkList[0] == checkList[3] &&
        checkList[3] == checkList[6] &&
        checkList[6] != "")) {
      if (checkList[6] == '×') {
        scoreA++;
        getSnackbar("${widget.playerAname} wins", context);
      } else {
        scoreB++;
        getSnackbar("${widget.playerBname} wins", context);
      }
      setState(() {
        gridColor[0] = gridColor[3] = gridColor[6] = Colors.blue;
      });
      Future.delayed(const Duration(seconds: 3), () {
        reset();
      });
    } else if ((checkList[1] == checkList[4] &&
        checkList[4] == checkList[7] &&
        checkList[7] != "")) {
      if (checkList[7] == '×') {
        scoreA++;
        getSnackbar("${widget.playerAname} wins", context);
      } else {
        scoreB++;
        getSnackbar("${widget.playerBname} wins", context);
      }
      setState(() {
        gridColor[1] = gridColor[4] = gridColor[7] = Colors.blue;
      });
      Future.delayed(const Duration(seconds: 3), () {
        reset();
      });
    } else if ((checkList[2] == checkList[5] &&
        checkList[5] == checkList[8] &&
        checkList[8] != "")) {
      if (checkList[8] == '×') {
        scoreA++;
        getSnackbar("${widget.playerAname} wins", context);
      } else {
        scoreB++;
        getSnackbar("${widget.playerBname} wins", context);
      }
      setState(() {
        gridColor[2] = gridColor[5] = gridColor[8] = Colors.blue;
      });
      Future.delayed(const Duration(seconds: 3), () {
        reset();
      });
    } else if ((checkList[0] == checkList[4] &&
        checkList[4] == checkList[8] &&
        checkList[8] != "")) {
      if (checkList[8] == '×') {
        scoreA++;
        getSnackbar("${widget.playerAname} wins", context);
      } else {
        scoreB++;
        getSnackbar("${widget.playerBname} wins", context);
      }
      setState(() {
        gridColor[0] = gridColor[4] = gridColor[8] = Colors.blue;
      });
      Future.delayed(const Duration(seconds: 3), () {
        reset();
      });
    } else if ((checkList[2] == checkList[4] &&
        checkList[4] == checkList[6] &&
        checkList[6] != "")) {
      if (checkList[6] == '×') {
        scoreA++;
        getSnackbar("${widget.playerAname} wins", context);
      } else {
        scoreB++;
        getSnackbar("${widget.playerBname} wins", context);
      }
      setState(() {
        gridColor[4] = gridColor[6] = gridColor[2] = Colors.blue;
      });
      Future.delayed(const Duration(seconds: 3), () {
        reset();
      });
    } else if (filledGrid == 9) {
      getSnackbar("Draw", context);
      Future.delayed(const Duration(seconds: 3), () {
        reset();
      });
    }
  }

  reset() {
    setState(() {
      for (int i = 0; i < 9; i++) {
        checkList[i] = "";
        gridColor[i] = Colors.grey[700];
      }
      chance = true;
      filledGrid = 0;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    gridColor = [
      Colors.grey[700],
      Colors.grey[700],
      Colors.grey[700],
      Colors.grey[700],
      Colors.grey[700],
      Colors.grey[700],
      Colors.grey[700],
      Colors.grey[700],
      Colors.grey[700]
    ];
    scoreB = 0;
    scoreA = 0;
    filledGrid = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${widget.playerAname}: $scoreA',
                    style: GoogleFonts.nunito(color: kGreenColor, fontSize: 20),
                  ),
                  const SizedBox(
                    width: 80,
                  ),
                  Text(
                    '${widget.playerBname}: $scoreB',
                    style: GoogleFonts.nunito(color: kRedColor, fontSize: 20),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10, top: 50),
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      filledGrid++;
                      lastIndex = index;
                      setState(() {
                        if (checkList[index] == "") {
                          if (chance) {
                            checkList[index] = '×';
                          } else {
                            checkList[index] = 'o';
                          }
                          chance = !chance;
                        }
                      });
                      checkWin();
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: gridColor[index],
                          borderRadius: BorderRadius.circular(10)),
                      alignment: Alignment.center,
                      child: Text(
                        checkList[index],
                        style: TextStyle(color: Colors.white, fontSize: 50),
                      ),
                    ),
                  );
                },
                itemCount: 9,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        checkList[lastIndex] = "";
                        filledGrid--;
                        chance = !chance;
                      });
                    },
                    child: Icon(
                      Icons.undo,
                      color: kYellowColor,
                    ),
                  ),
                  const SizedBox(
                    width: 150,
                  ),
                  GestureDetector(
                    onTap: () {
                      reset();
                    },
                    child: Icon(
                      Icons.restart_alt,
                      color: kBlueColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
