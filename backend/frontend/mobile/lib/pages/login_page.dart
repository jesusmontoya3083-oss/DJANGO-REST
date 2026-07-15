import 'package:flutter/material.dart';
import '../services/api_services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage>{
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final ApiServices apiServices =ApiServices();
  bool isLoading = false;
  Future<void> iniciarSesion() async{
    if(usernameController.text.isEmpty || passwordController.text.isEmpty){
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Por favor ingrese usuario y contraseña'))
      );
      return;
    }
    setState((
      isLoading = true;
    ));
    try{
      final respuesta = await ApiServices.login(usernameController.text,passwordController.text);
      print(respuesta);

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('inicio exitoso')
        ),
      );
      //aqui se redirecciona al dashboard o menu

    }catch
  }
}