import 'package:flutter/material.dart';
import 'contact.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  
  
  @override
  Widget build(BuildContext context) {
  
    List<Contact> contactList = [
      Contact('Sutthisak','080-161-9126','assets/images/avatar1.png'),
      Contact('Saksri','087-965-5526','assets/images/avatar2.png'),
      Contact('Wasin','081-222-3344','assets/images/avatar3.png'),
      Contact('Jirus', '089-001-2231','assets/images/avatar4.png'),
      Contact('Worawut', '084-223-1142','assets/images/avatar5.png'),
      Contact('Narongsak', '090-225-8879','assets/images/avatar6.png'),
      Contact('Yuwanan','082-333-4455','assets/images/avatar7.png'),
      Contact('Paweena', '086-225-5998','assets/images/avatar8.png'),
      Contact('Ketsaraporn', '085-887-9844','assets/images/avatar9.png'),
      Contact('Junpen', '085-886-8554','assets/images/avatar10.png'),
      Contact('Aikapun', '094-442-5323','assets/images/avatar11.png'),
      Contact('Jedsada', '090-665-0000','assets/images/avatar12.png')
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("IT KBS Contact"),
      ),
      body: ListView.builder(
        itemCount: contactList.length,
        itemBuilder: (BuildContext context, int index) { 

          Contact contact = contactList[index];

          return ListTile(
            leading: Image.asset(contact.imageSource),
            title: Text(contact.name),
            subtitle: Text(contact.phoneNumber),
            onTap: () {
              launch('tel:${contact.phoneNumber}');
            },
          );
          },)
      );
  }
}

