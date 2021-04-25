import 'package:beta_kart/screens/manage_product.dart';

import 'package:supabase/supabase.dart';

class AuthController{
  ManageProduct manageProduct = ManageProduct();
 
   
  final client = SupabaseClient('https://pnfwlonqfmegmtcnpblh.supabase.co','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoiYW5vbiIsImlhdCI6MTYxODc0ODkzOCwiZXhwIjoxOTM0MzI0OTM4fQ.eocWrASlR8xneYHTMIzFCyVQ_TSUvRUSCAyDhc23n_o');
  Future<void> signUpUser(String email, String password)async{
    await client.auth.signUp(email, password);
  }
    // Future<void> login()async{
    //   var p = await client.auth.signUp("nayakpradeep777@gmail.com", "pradeep");
      //  var p =await client.from('test').select().execute();//get
      //  var p =await client.from('test').insert({"item":"hello test"}).execute();//post
      //var p =await client.from('test').update({"item":"m"}).eq("id", 1).execute();//update //put
      //var p =await client.from('test').delete().eq("id", 2).execute(); //delete
      // var p = await authClient.signIn(email:"nayakpradeep777@gmail.com",password: "pradeep");
      // print(p.error);
      // Future<void> addItems()async{
      //   await client.from('test').insert({"id" : manageProduct , "item_name": "vivo y95", "category" : "mobiles"}).execute();
      // }

      
    }


    
