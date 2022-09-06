import 'package:flutter/material.dart';
import 'package:ejercicio/pages/menu.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool isRememberMe = false;
  final cuenta = TextEditingController();
  final contra = TextEditingController();

  void _showToast(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('Datos incorrectos'),
      ),
    );
  }


  Widget buildEmail(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Email',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color:Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                offset: Offset(0,2),
              ),
            ],
          ),
          height: 60,
          child: TextField(
            controller: cuenta,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
              border:InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.email,
                color:Color(0x662a4e6c),
              ),
              hintText: 'Email',
              hintStyle: TextStyle(
                color:Colors.black38,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildPassword(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Password',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color:Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
                offset: Offset(0,2),
              ),
            ],
          ),
          height: 60,
          child: TextField(
            controller: contra,
            obscureText: true,
            style: TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
              border:InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.email,
                color:Color(0x662a4e6c),
              ),
              hintText: 'Password',
              hintStyle: TextStyle(
                color:Colors.black38,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildForgotPassbtn(){
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () => print("Forgot Password pressed"),
        padding: EdgeInsets.only(right: 0),
        child: Text(
          'Olvide mi contraseña',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget buildRememberCb(){
    return Container(
      height: 20,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              value: isRememberMe,
              checkColor: Colors.lightBlueAccent,
              activeColor: Colors.white,
              onChanged: (value){
                setState(() {
                  isRememberMe = value;
                });
              },
            ),
          ),
          Text(
            'Recordarme',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSingUpBtn(){
    return GestureDetector(
      onTap: () => print("Sign up pressed"),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'No tengo cuenta.  ',
              style: TextStyle(
                color:Colors.white,

                fontWeight: FontWeight.normal
              ),
            ),
            TextSpan(
              text:'Registrarme',
              style: TextStyle(
                color: Colors.white,

                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildLoginBtn(){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5,
        onPressed: () => {
          if(cuenta.text == 'tienda@hotmail.com' && contra.text == '123456'){
            if(!isRememberMe){
              cuenta.text = "",
              contra.text = "",
            },
            print('Jefe'),
            Navigator.of(context).push(
              MaterialPageRoute(
                builder:(context) => menu(mensaje: 'Jefe'),
              )
            )
          }
          else{
            if(cuenta.text == 'empleado@hotmail.com' && contra.text == '123456'){
              if(!isRememberMe){
                cuenta.text = "",
                contra.text = "",
              },
              print('Empleado'),
            }
            else{
              _showToast(context),
            }
          }
        },
        padding: EdgeInsets.all(15),
        shape:RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: Colors.white,
        child: Text(
          'Ingresar',
          style: TextStyle(
            color: Color(0xff2a4e6c),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child:GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors:[
                      Color(0x662a4e6c),//50%
                      Color(0x992a4e6c),//50%
                      Color(0xcc2a4e6c),//50%
                      Color(0xff2a4e6c),//50%
                    ]
                  )
                ),
                child:SingleChildScrollView(
                  padding: EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 120,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Iniciar sesion',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 50),
                      buildEmail(),
                      SizedBox(height: 20),
                      buildPassword(),
                      buildForgotPassbtn(),
                      buildRememberCb(),
                      buildLoginBtn(),
                      buildSingUpBtn(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
