import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool circular = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 80.0,
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(
                    "https://cdn-icons-png.flaticon.com/512/44/44169.png"),
              ),
              Text(
                "Iniciar Sesion",
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "o",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              textItem("email..."),
              SizedBox(
                height: 15,
              ),
              textItem("contraseña..."),
              SizedBox(
                height: 30,
              ),
              colorButton(),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "¿no tienes cuenta?",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  /*Text(
                    "registrate",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),*/
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget colorButton() {
    return InkWell(
      onTap: () async {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const pantalla()),
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width - 100,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 42, 176, 229),
            Color.fromARGB(255, 30, 169, 204),
            Color.fromARGB(255, 108, 185, 253)
          ]),
        ),
        child: Center(
          child: circular
              ? CircularProgressIndicator()
              : Text(
                  "login",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
        ),
      ),
    );
  }

  Widget textItem(
    String labelText,
  ) {
    return Container(
      width: MediaQuery.of(context).size.width - 70,
      height: 55,
      child: TextFormField(
        style: TextStyle(
          fontSize: 17,
          color: Colors.white,
        ),
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(
            fontSize: 17,
            color: Colors.white,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              width: 1.5,
              color: Color.fromARGB(255, 6, 208, 50),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              width: 1,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }

  /*Widget textItem(String labelText) {
    return Container(
      width: MediaQuery.of(context).size.width - 70,
      height: 55,
      child: TextFormField(
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(
            fontSize: 17,
            color: Colors.white,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              width: 1,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }*/
}

class pantalla extends StatelessWidget {
  const pantalla({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Color.fromARGB(0, 10, 158, 17),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {},
            color: Colors.black,
          ),
          title: Text('CARLOS H',
              style: TextStyle(
                  color: Color.fromARGB(255, 3, 135, 179),
                  fontWeight: FontWeight.bold)),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
              color: Colors.grey,
            ),
          ],
        ),
        body: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10.0),
                  height: 250.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 80.0,
                        backgroundColor: Colors.grey,
                        backgroundImage: NetworkImage(
                            "https://cdn-icons-png.flaticon.com/512/44/44169.png"),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.0),
                Padding(
                  padding: const EdgeInsets.only(left: 17.0),
                  child: Text(
                    'OVERVIEW:',
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 15.0),
                GridView.count(
                  crossAxisCount: 2,
                  primary: false,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 0.85,
                  mainAxisSpacing: 10.0,
                  shrinkWrap: true,
                  children: <Widget>[
                    _adquirirProducto(
                        'sent', 'S/150', 'assets/chocolate.jpg', 64, 22, 1),
                    _adquirirProducto(
                        'receive', 'S/200', 'assets/cupcake.jpg', 64, 22, 2),
                    _adquirirProducto(
                        'loan', 'S/400', 'assets/alfajor.jpg', 64, 22, 3),
                  ],
                ),
                SizedBox(height: 10.0)
              ],
            )
          ],
        ));
  }

  Widget _adquirirProducto(String nombre, String precio, String cardImage,
      int megusta, int comentarios, int cardIndex) {
    return Padding(
      padding: cardIndex.isEven
          ? EdgeInsets.only(right: 15.0)
          : EdgeInsets.only(left: 15.0),
      child: Container(
        height: 400.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
                color: Color.fromARGB(255, 42, 48, 117).withOpacity(0.2),
                style: BorderStyle.solid,
                width: 1.0)),
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 125.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0)),
                      image: DecorationImage(
                          image: AssetImage(cardImage), fit: BoxFit.cover)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, top: 5.0),
                  child: Text(
                    nombre,
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 15.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    precio,
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 12.0,
                        color: Color.fromARGB(255, 94, 92, 174)),
                  ),
                ),
                SizedBox(height: 3.0),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, top: 10.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.favorite,
                        color:
                            Color.fromARGB(255, 77, 79, 147).withOpacity(0.4),
                      ),
                      SizedBox(width: 2.0),
                      Text(
                        megusta.toString(),
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 12.0,
                            color: Colors.grey),
                      ),
                      SizedBox(width: 10.0),
                      Icon(
                        Icons.chat_bubble,
                        color:
                            Color.fromARGB(255, 91, 94, 156).withOpacity(0.4),
                      ),
                      SizedBox(width: 2.0),
                      Text(
                        comentarios.toString(),
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 12.0,
                            color: Color.fromARGB(255, 81, 88, 137)),
                      )
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              left: 110.0,
              top: 102.0,
              child: Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Color.fromARGB(211, 13, 12, 13)),
                child: Center(
                  child: Icon(Icons.shopping_cart, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
