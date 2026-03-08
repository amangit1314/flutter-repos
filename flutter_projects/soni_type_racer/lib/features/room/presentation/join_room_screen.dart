import 'package:flutter/material.dart';
import 'package:soni_type_racer/shared/widgets/custom_button.dart';
import 'package:soni_type_racer/shared/widgets/custom_text_field_input.dart';

class JoinRoomScreen extends StatefulWidget {
  static const String routeName = 'join-room';
  const JoinRoomScreen({super.key});

  @override
  State<JoinRoomScreen> createState() => _JoinRoomScreenState();
}

class _JoinRoomScreenState extends State<JoinRoomScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _roomIdController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
    _roomIdController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Join Room',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
                SizedBox(height: size.height * 0.08),
                CustomTextFieldInput(
                  textEditingController: _nameController,
                  hintText: 'Enter your nickname',
                  textInputType: TextInputType.text,
                ),
                const SizedBox(height: 20),
                CustomTextFieldInput(
                  textEditingController: _roomIdController,
                  hintText: 'Enter room id',
                  textInputType: TextInputType.text,
                ),
                const SizedBox(height: 30),
                CustomButton(
                  content: 'Join',
                  color: Colors.black,
                  textColor: Colors.white,
                  fontSize: 17,
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
