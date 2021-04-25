import 'package:beta_kart/controllers/auth.dart';
import 'package:beta_kart/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:supabase/supabase.dart';

class ManageProduct extends StatefulWidget {
  
  @override
  _ManageProductState createState() => _ManageProductState();
  
}

class _ManageProductState extends State<ManageProduct> {
  
  AuthController authController = AuthController();
  TextEditingController idController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController categoryController = TextEditingController();

  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                controller: idController,
                decoration:InputDecoration(
                  labelText: 'enter Product Id'
                ),
              ),
              TextFormField(
                controller: nameController,
                decoration:InputDecoration(
                  labelText: 'enter Product Name'
                ),
              ),
               TextFormField(
                controller: categoryController,
                decoration:InputDecoration(
                  labelText: 'enter Product Category'
                ),
              ),
              ElevatedButton(
                onPressed: ()async{
                  await authController.client.from('test').insert({"id" : idController.text , "item_name": nameController.text, "category" : categoryController.text}).execute();
                }, 
              child: Text("Add"),
              ),
              SizedBox(height: 10,),
             ListView.builder(
               itemCount: authController.client.from('test').
               itemBuilder: (BuildContext context, int index){
                 return ListTile(
                   trailing: Text(""),
                   title: Text(""),
                   leading: Text(""),
                 );
               }
               )
            ],
          ),
        )
      ),
      
    );
  }
}