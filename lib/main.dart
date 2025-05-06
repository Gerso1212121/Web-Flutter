import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'vista/vista_login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _openCartDrawer(BuildContext context) {
    Scaffold.of(context).openEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF003366),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu, color: Colors.white),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              padding: EdgeInsets.zero,
              iconSize: 24,
            );
          },
        ),
        title: Row(
          children: [
            Image.asset(
              'assets/logo.png',
              height: 35,
              fit: BoxFit.contain,
            ),
            Expanded(
              child: Center(
                child: Container(
                  height: 35,
                  width: 1000,
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Busca aquí',
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                      suffixIcon: Icon(Icons.search, size: 20),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite, size: 22, color: Colors.white),
            onPressed: () {},
          ),
          Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.shopping_cart,
                  size: 22, color: Colors.white),
              onPressed: () {
                _openCartDrawer(context);
              },
            ),
          ),
          IconButton(
            icon: const Icon(Icons.person, size: 22, color: Colors.white),
            onPressed: () {},
          ),
        ],
        toolbarHeight: 60,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: const Text('Carpintería Chavarría',
                  style: TextStyle(color: Colors.white)),
              accountEmail: const Text('contacto@chavarria.com',
                  style: TextStyle(color: Colors.white)),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.business,
                  color: Colors.blue,
                  size: 50,
                ),
              ),
              decoration: BoxDecoration(
                color: const Color(0xFF003366),
              ),
            ),
            ListTile(
              title:
                  const Text('Inicio', style: TextStyle(color: Colors.black)),
              leading: const Icon(Icons.home, color: Colors.black),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Productos',
                  style: TextStyle(color: Colors.black)),
              leading: const Icon(Icons.view_list, color: Colors.black),
              onTap: () {},
            ),
            ListTile(
              title:
                  const Text('Ofertas', style: TextStyle(color: Colors.black)),
              leading: const Icon(Icons.local_offer, color: Colors.black),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Cerrar sesión',
                  style: TextStyle(color: Colors.black)),
              leading: const Icon(Icons.exit_to_app, color: Colors.black),
              onTap: () {
                // Cierra sesión y redirige a LoginPage quitando todo lo anterior en el historial
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => LoginPage()),
                  (Route<dynamic> route) => false,
                );
              },
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        // Drawer del carrito
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: const Text('Tu Carrito',
                  style: TextStyle(color: Colors.white)),
              accountEmail: const Text('Carrito de compras',
                  style: TextStyle(color: Colors.white)),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.shopping_cart,
                  color: Colors.blue,
                  size: 50,
                ),
              ),
              decoration: BoxDecoration(
                color: const Color(0xFF003366),
              ),
            ),
            const Divider(),
            ListTile(
              title: const Text('Ir a comprar',
                  style: TextStyle(color: Colors.black)),
              leading: const Icon(Icons.payment, color: Colors.black),
              onTap: () {
                print("Ir a comprar");
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 350,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/fondo.png'),
                  fit: BoxFit.cover,
                ),
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.6),
                    Colors.transparent,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'Carpintería Chavarria',
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Haz clic para ver productos',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: null,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      child: const Text('Ver Productos'),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Ofertas',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 8),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              itemCount: 6,
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.grey[300],
                  height: 200,
                  child: const Center(
                    child: Text('Imagen Producto'),
                  ),
                );
              },
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Más Vendidos',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 8),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              itemCount: 6,
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.grey[300],
                  height: 200,
                  child: const Center(
                    child: Text('Imagen Producto Más Vendido'),
                  ),
                );
              },
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(16.0),
              color: const Color(0xFFF1F1F1),
              child: Column(
                children: [
                  const Text(
                    'Síguenos en redes sociales',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(FontAwesomeIcons.facebook, color: Colors.black),
                      SizedBox(width: 16),
                      Icon(FontAwesomeIcons.instagram, color: Colors.black),
                    ],
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
