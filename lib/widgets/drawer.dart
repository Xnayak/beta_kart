import 'package:beta_kart/screens/manage_product.dart';
import 'package:flutter/material.dart';


class MyDrawer extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blue,
        child: ListView(
          children: [
            
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("name"),
                accountEmail: Text("email@gmail.com"),
              )
              ),
             Divider(
               height: 1,
               thickness: 1,
               color: Colors.white,
             ),
             ListTile(
               title: Text("My Orders",
               style: TextStyle(
                 color: Colors.white,
                 fontSize: 20,
                 fontWeight: FontWeight.bold,
               ),),
               leading: Icon(Icons.card_giftcard_rounded,
               color: Colors.white,),
             ),
             ListTile(
               title: Text("My Cart",
               style: TextStyle(
                 color: Colors.white,
                 fontSize: 20,
                 fontWeight: FontWeight.bold,
               ),),
               leading: Icon(Icons.shopping_cart_rounded,
               color: Colors.white,),
             ),
             ListTile(
               title: Text("My Wishlist",
               style: TextStyle(
                 color: Colors.white,
                 fontSize: 20,
                 fontWeight: FontWeight.bold,
               ),),
               leading: Icon(Icons.favorite,
               color: Colors.white,),
             ),
             ListTile(
               title: Text("My Accounts",
               style: TextStyle(
                 color: Colors.white,
                 fontSize: 20,
                 fontWeight: FontWeight.bold,
               ),),
               leading: Icon(Icons.account_circle,
               color: Colors.white,),
             ),
             ListTile(
               title: Text("My Chats",
               style: TextStyle(
                 color: Colors.white,
                 fontSize: 20,
                 fontWeight: FontWeight.bold,
               ),),
               leading: Icon(Icons.chat_rounded,
               color: Colors.white,),
             ),
             Divider(
               height: 1,
               thickness: 1,
               color: Colors.white,
             ),
             ListTile(
               title: Text("About Us",
               style: TextStyle(
                 color: Colors.white,
                 fontSize: 20,
                
               ),),
               
             ),
            ListTile(
               title: Text("Help Center",
               style: TextStyle(
                 color: Colors.white,
                 fontSize: 20,
                 
               ),),
               
             ),
              ListTile(
               title: Text("Manage Product",
               style: TextStyle(
                 color: Colors.white,
                 fontSize: 20,
                 
               ),
               ),
               onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context) => ManageProduct()));
               },
               
             ),
             ListTile(
               title: Text("Logout",
               style: TextStyle(
                 color: Colors.white,
                 fontSize: 20,
                 
               ),),
               
             ),
                
              
          ],
        ),
      ),
    );
  }
}