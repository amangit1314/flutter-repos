import 'package:beyond_study/features/auth/data/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../widgets/text_field_input.dart';

class RegistrationForm extends ConsumerStatefulWidget {
  const RegistrationForm({
    super.key,
    required this.inputBorder,
  });

  final OutlineInputBorder inputBorder;

  @override
  ConsumerState<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends ConsumerState<RegistrationForm> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _numberCOntroller = TextEditingController();
  final RegExp emailValidatorRegExp =
      RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  final List<String> errors = [];

  late bool _passwordVisible;
  late bool newuser;

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _numberCOntroller.dispose();
    super.dispose();
  }

  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error!);
      });
    }
  }

  void removeError({String? error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            buildEmailFormField(inputBorder: widget.inputBorder),
            const SizedBox(height: 15),
            buildPasswordFormField(inputBorder: widget.inputBorder),
            const SizedBox(height: 15),
            buildNumberFormField(inputBorder: widget.inputBorder),
            const SizedBox(height: 30),
            Container(
              width: double.maxFinite,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.indigoAccent,
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: MaterialButton(
                child: const Text(
                  "Register",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onPressed: () => ref.watch(authControllerProvider).registerUser(
                      context,
                      email: _emailController.text,
                      password: _passwordController.text,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextFieldInput buildEmailFormField(
      {required OutlineInputBorder inputBorder}) {
    return TextFieldInput(
      inputBorder: inputBorder,
      textEditingController: _emailController,
      preIcon: const Icon(Icons.mail),
      hintText: 'Email',
      textInputType: TextInputType.emailAddress,
      onSaved: (newValue) => _emailController.text = newValue!,
      onChanged: (value) {
        if (value!.isNotEmpty) {
          removeError(error: "Please Enter your email");
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: "Please Enter valid email");
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: "Please Enter your email");
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: "Please Enter valid email");
          return "";
        }
        return null;
      },
    );
  }

  TextFieldInput buildPasswordFormField(
      {required OutlineInputBorder inputBorder}) {
    return TextFieldInput(
      inputBorder: inputBorder,
      textEditingController: _passwordController,
      hintText: 'Password',
      preIcon: const Icon(Icons.fingerprint),
      suffixicon: IconButton(
        icon: Icon(
          _passwordVisible ? Icons.visibility : Icons.visibility_off,
          color: Theme.of(context).primaryColorDark,
        ),
        onPressed: () {
          setState(() {
            _passwordVisible = !_passwordVisible;
          });
        },
      ),
      textInputType: TextInputType.text,
      isPass: true,
      onSaved: (newValue) => _passwordController.text = newValue!,
      onChanged: (value) {
        if (value!.isNotEmpty) {
          removeError(error: "Please Enter your password");
        } else if (value.length >= 8) {
          removeError(error: "Password is too short");
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: "Please Enter your password");
          return "";
        } else if (value.length < 8) {
          addError(error: "Password is too short");
          return "";
        }
        return null;
      },
    );
  }

  TextFieldInput buildNumberFormField(
      {required OutlineInputBorder inputBorder}) {
    return TextFieldInput(
      inputBorder: inputBorder,
      textEditingController: _numberCOntroller,
      hintText: 'Number',
      preIcon: const Icon(Icons.numbers),
      textInputType: TextInputType.number,
      isPass: true,
      onSaved: (newValue) => _passwordController.text = newValue!,
      onChanged: (value) {
        if (value!.isNotEmpty) {
          removeError(error: "Please enter your number");
        } else if (value.length > 10) {
          removeError(error: "Number is too short");
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: "Please enter your number");
          return "";
        } else if (value.length < 10) {
          addError(error: "Number is too short");
          return "";
        }
        return null;
      },
    );
  }
}
