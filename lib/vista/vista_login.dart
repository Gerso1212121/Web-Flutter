import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4E3D0),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 271,
        toolbarHeight: 60,
        leading: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 209, 106, 3),
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(10)),
          ),
          child: Row(
            children: [

                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 10),
                  child: IconButton(
                    icon: const Icon(Icons.menu, color: Colors.white),
                    iconSize: 30, // Aumenta el tamaño del ícono
                    onPressed: () {},
                  ),
                ),
              
              SizedBox(width: 10),
              Container(
                width: 200,
                padding: EdgeInsets.symmetric(horizontal: 10),
                margin: EdgeInsets.only(left: 5),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 51, 51, 51),
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(10)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Chavarria',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Disfruta al máximo',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Text(
                      'LOGO',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        centerTitle: true,
        title: SizedBox(
          width: 600,
          child: TextField(
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              hintText: "Buscar...",
              prefixIcon: Icon(Icons.search),
              suffixIcon: Container(
                margin: EdgeInsets.only(right: 0),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: IconButton(
                  icon: Icon(Icons.search, color: Colors.white),
                  onPressed: () {
                    print("Botón de búsqueda presionado");
                  },
                ),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 0),
              isDense: true,
            ),
          ),
        ),
        actions: [SizedBox(width: 0)],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: FractionallySizedBox(
                  widthFactor: 0.4,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: [
                                  IconButton(
                                    icon: const Icon(Icons.arrow_back),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                              Row(children: [
                                Expanded(
                                  child: Center(
                                    child: const Text(
                                      "Inicia Sesión",
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                              const SizedBox(height: 50),
                              SizedBox(
                                width: 350,
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: 'Correo',
                                    isDense: true,
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 10),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20), // Espaciado
                              SizedBox(
                                width: 350,
                                child: TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    labelText: 'Contraseña',
                                    isDense: true,
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 10),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              SizedBox(
                                width: 350,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        'Restablecer contraseña',
                                        style: TextStyle(color: Colors.green),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10),
                              SizedBox(
                                width: 250,
                                child: ElevatedButton.icon(
                                  onPressed: () {},
                                  icon: const Icon(Icons.login),
                                  label: const Text("Iniciar Sesión"),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFFEC7521),
                                    foregroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 14),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text("¿No tienes cuenta? "),
                                  TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'Regístrate aquí',
                                      style: TextStyle(color: Colors.green),
                                    ),
                                  ),
                                ],
                              ),
                              const Divider(height: 30),
                              const Text("O inicia con:"),
                              const SizedBox(height: 10),
                              OutlinedButton.icon(
                                onPressed: () {},
                                icon: Icon(FontAwesomeIcons.google, size: 18),
                                label: const Text("Iniciar con Google"),
                                style: OutlinedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 24, vertical: 12),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const AppFooter(),
          ],
        ),
      ),
    );
  }
}

class AppFooter extends StatelessWidget {
  const AppFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Texto + Iconos en una misma fila
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "DISFRUTA AL MÁXIMO",
                style: TextStyle(
                  color: Colors.orangeAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(width: 20),
              Icon(FontAwesomeIcons.facebook, color: Colors.orange, size: 20),
              SizedBox(width: 10),
              Icon(FontAwesomeIcons.instagram, color: Colors.orange, size: 20),
            ],
          ),
          const SizedBox(height: 10),
          // Textos en una sola línea
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                Text(
                  "2008 - 2025 ©. Carpintería Chavarría S.A. De C.V    ",
                  style: TextStyle(color: Colors.white70, fontSize: 12),
                ),
                Text(
                  "Ruta Militar, Col. San Francisco, San Miguel    ",
                  style: TextStyle(color: Colors.white70, fontSize: 12),
                ),
                Text(
                  "carpinteriachavarria@gmail.com | 503 2230-4976",
                  style: TextStyle(color: Colors.white70, fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
