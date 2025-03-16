import 'package:eggscheesecofe/ui/styles/colors.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Cabeçalho com imagem de fundo e logo
          Stack(
            children: [
              Image.asset(
                "assets/images/rectangleLogin.png",
                width: double.infinity,
                height: 250,
                fit: BoxFit.fill,
              ),
              Padding(
                padding: const EdgeInsets.all(64.0),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    "assets/images/logo.png",
                    width: 200,
                    height: 120,
                  ),
                ),
              ),
            ],
          ),

          // Área do formulário
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Form(
                key: _formKey,
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        TextFormField(
                          maxLines: 1,
                          decoration: const InputDecoration(labelText: "E-mail"),
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(labelText: "Senha"),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          // Botões de login
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 64.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll<Color>(AppColor.primariaOne),
                    ),
                    onPressed: () {
                        Navigator.pushReplacementNamed(context, "home");
                    },
                    child: Text(
                      "Entrar",
                      style: TextStyle(color: AppColor.grayOne),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const Text("ou"),
                const SizedBox(height: 16),

                // Botões de login social corrigidos
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Image.asset("assets/images/facebook.png"),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {},
                      child: Image.asset("assets/images/google.png"),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {},
                      child: Image.asset("assets/images/x.png"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
