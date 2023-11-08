import 'package:flutter/material.dart';
import './home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Home IoT',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            title: Text('Smart Home IoT'),
            backgroundColor: Color(0xff004aad),
          ),
          body: Container(
            margin: const EdgeInsets.all(50),
            child: LoginForm(),
          )),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  LoginFormState createState() {
    return LoginFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class LoginFormState extends State<LoginForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<LoginFormState>.
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return SingleChildScrollView(
        child: Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('images/idin.png', width: 100, height: 100),
          const Padding(padding: EdgeInsets.only(top: 30)),
          const Text("Username"),
          TextFormField(
            controller: usernameController,
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your username correctly';
              }
              return null;
            },
          ),
          const Padding(padding: EdgeInsets.only(top: 20)),
          const Text("Password"),
          TextFormField(
            controller: passwordController,
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password correctly';
              }
              return null;
            },
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: ElevatedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  if (usernameController.text == 'demo' &&
                      passwordController.text == 'demo123') {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return HomeScreen();
                    }));
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return const AlertDialog(
                          // Retrieve the text the that user has entered by using the
                          // TextEditingController.
                          content: Text("Wrong Credential!"),
                        );
                      },
                    );
                  }
                }
              },
              style:
                  ElevatedButton.styleFrom(backgroundColor: Color(0xff004aad)),
              child: const Text('Login'),
            ),
          ),
        ],
      ),
    ));
  }
}
