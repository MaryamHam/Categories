import 'package:flutter/material.dart';
import 'package:gridview/models/category.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  List<Category> Categories = [

    Category(
      image: "assets/light.webp",
      name: "Lights"
    ),

     Category(
      image: "assets/iphone.jpg",
      name: "Phones"
    ),

     Category(
      image: "assets/mac.jpg",
      name: "Laptob"
    ),

     Category(
      image: "assets/office.webp",
      name: "Office"
    ),
  
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(title: Text("Categories",style: TextStyle(fontSize: 20, ),),centerTitle: true,),

body: GridView.builder(
  // scrollDirection: ,
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
  itemCount: Categories.length,
  itemBuilder: (context,index){

  return Container(
    width: 150,
    height: 80,
    margin: EdgeInsets.all(15),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
    image: DecorationImage(image: AssetImage(Categories[index].image!),fit: BoxFit.cover)
    ),
    child: Center(
      child: Text(Categories[index].name!, 
      style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),
      
      ),
    ),
     
  );
  
  
  
//   Card(
//     child: ListTile(
//       leading: Image.network(Categories[index].image!),
//       title: Text(Categories[index].name!),

//  ),
//   );
  
},

)



      
  );
  }
}