import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/homeScreen.dart';

void main() {
  runApp(const home());
}

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GR HYPERMART',
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final numberEntered = TextEditingController();

  @override
  void dispose() {
    numberEntered.dispose();
    super.dispose();
  }

  String? errorMessage;

  void numChecker() {
    setState(() {
      if (numberEntered.text.length != 10) {
        errorMessage = 'Please enter a valid 10 digit number';
      } else {
        errorMessage = null;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(color: Color(0xffffffff)),
              child: Image.asset('assets/images/logo.png'),
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(color: Color(0xffffffff)),
              child: Column(
                children: [
                  const Text(
                    'Welcome to Piczo',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Manrope',
                      fontWeight: FontWeight.w700,
                      color: Color(0xff000000),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xfff8f8f8),
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                    ),
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.1,
                    child: TextField(
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(10),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      onChanged: (value) {
                        if (value.length == 10) {
                          numChecker();
                        }
                      },
                      controller: numberEntered,
                      keyboardType: TextInputType.phone,
                      style: const TextStyle(
                        fontFamily: 'Manrope',
                        color: Color(0xff000000),
                      ),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Color(0xfff8f8f8),
                        labelText: 'Mobile Number',
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      numChecker();
                      if (errorMessage != null) {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text('Error'),
                              content: Text(errorMessage!),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('OK'),
                                ),
                              ],
                            );
                          },
                        );
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OTPScreen(
                              phoneNumber: numberEntered.text,
                            ),
                          ),
                        );
                      }
                    },
                    child: const Text(
                      'Get OTP',
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(327, 50),
                      backgroundColor: const Color(0xff9754CB),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text(
                        'Login with password',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontFamily: 'Manrope',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff000000),
                        ),
                      ),
                      Text(
                        'Skip login',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontFamily: 'Manrope',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff000000),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OTPScreen extends StatefulWidget {
  final String phoneNumber;
  const OTPScreen({Key? key, required this.phoneNumber}) : super(key: key);

  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final List<TextEditingController> _otpControllers =
      List.generate(4, (index) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(4, (index) => FocusNode());

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(_focusNodes[0]);
    });
  }

  @override
  void dispose() {
    for (var controller in _otpControllers) {
      controller.dispose();
    }
    for (var node in _focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Color(0xffffffff)),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                
                decoration: const BoxDecoration(color: Color(0xffffffff)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'OTP Verification',
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          'We have sent you the OTP code to +91 ${widget.phoneNumber}',
                          style: const TextStyle(
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                        const Text(
                          'The code will expire at 00:17',
                          style: TextStyle(
                            fontFamily: 'Manrope',
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(4, (index) {
                        return Container(
                          width: MediaQuery.of(context).size.width * 0.15,
                          height: 70,
                          decoration: BoxDecoration(
                            color: const Color(0xfff8f8f8),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                          ),
                          child: TextField(
                            focusNode: _focusNodes[index],
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            controller: _otpControllers[index],
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            onChanged: (value) {
                              if (value.isNotEmpty && index < 3) {
                                FocusScope.of(context)
                                    .requestFocus(_focusNodes[index + 1]);
                              } else if (value.isEmpty && index > 0) {
                                FocusScope.of(context)
                                    .requestFocus(_focusNodes[index - 1]);
                              }
                              /*if(value.isNotEmpty && index == 3){
                                Border.all(color: const Color(0xff9754CB));
                              }*/
                            },
                            //onEditingComplete: () => Border.all(color: const Color(0xff9754CB)),
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Color(0xfff8f8f8),
                            ),
                          ),
                        );
                      }),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const homeScreen()),
                        );
                      },
                      child: const Text(
                        'Continue',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(

                        minimumSize: const Size(327, 50),
                        backgroundColor: const Color(0xff9754CB),
                      ),
                    ),
                    const Text(
                      'Resend the code?',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontFamily: 'Manrope',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff000000),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
