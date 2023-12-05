import 'package:app1/widgets/nuemorphic_container.dart';
import 'package:flutter/material.dart';

class AccountSettings extends StatefulWidget {
  const AccountSettings({super.key});

  @override
  State<AccountSettings> createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {
  @override
  Widget build(BuildContext context) {
    return NuemorphicC(Content_child: Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
      backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        leading: BackButton(
          style:
              ButtonStyle(visualDensity: VisualDensity.adaptivePlatformDensity),
        ),
        title: const Text(
          "Account Settings",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
    ),
    body: Center(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(5))
          ),
          
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Container(child: Text("CHINEPOH DIVINE-FAVOUR"),),
                MyTextField(),
                MyTextField(),
                MyTextField(),
                SizedBox(height: 15,),
                TextButton(onPressed: (){

                }, child: Text("UPDATE PROFILE"), style: ButtonStyle(
                  backgroundColor:MaterialStatePropertyAll(Color(99))
                ),)
              ],
            ),
          ),
        ),
      ),
    ),
    
    ));
  }
}

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:8.0),
      child: TextField(
        strutStyle: StrutStyle(),
        readOnly: true,
      ),
    );
  }
}