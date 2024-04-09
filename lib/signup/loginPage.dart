import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:onboarding_screens/constants/emoticons.dart';
import 'package:onboarding_screens/constants/textfieldtile.dart';
import 'package:onboarding_screens/onboarding.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    super.key,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
  }

  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.fromLTRB(20, 18, 15, 60),
        child: ListView(
          children: [
            Row(
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const Onboarding(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.arrow_back),
                  label: const Text('Back'),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Row(
              children: [
                Text(
                  'Let\'s Get Started',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                EmoticonFace(emoticonFace: '🎊')
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'Register and experience personalized shopping with exclusive offers and easy checkout using Speed pay',
              style: TextStyle(
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //first & Last Name
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'First & Last Name',
                ),
                SizedBox(
                  height: 10,
                ),
                TextFieldTile(
                    textFieldHint: 'eg: Divine ikubor',
                    textEditController: ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
