import 'package:flutter/material.dart';
import 'package:soni_type_racer/shared/utils/socket_methods.dart';
import 'package:soni_type_racer/shared/widgets/custom_button.dart';
import 'package:soni_type_racer/shared/widgets/custom_text_field_input.dart';

class CreateRoomScreen extends StatefulWidget {
  static const String routeName = 'create-room';
  const CreateRoomScreen({super.key});

  @override
  State<CreateRoomScreen> createState() => _CreateRoomScreenState();
}

class _CreateRoomScreenState extends State<CreateRoomScreen> {
  final TextEditingController controller = TextEditingController();
  final SocketMethods _socketMethods = SocketMethods();

  @override
  void initState() {
    super.initState();
    _socketMethods.updateGameListener(context);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
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
                  'Create Room',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
                SizedBox(height: size.height * 0.08),
                CustomTextFieldInput(
                  textEditingController: controller,
                  hintText: 'Enter your nickname',
                  textInputType: TextInputType.text,
                ),
                const SizedBox(height: 30),
                CustomButton(
                  content: 'Create',
                  color: Colors.black,
                  textColor: Colors.white,
                  fontSize: 17,
                  onPressed: _socketMethods.createGame(controller.text),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
