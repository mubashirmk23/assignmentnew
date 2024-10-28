import 'package:flutter/material.dart';
import 'package:flutter_application_1/database.dart';

class BurgerDesign extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: Icon(Icons.arrow_back,color: Colors.black,size: 17),
        centerTitle: true,
        title: Text('Details',style: TextStyle(color: Colors.black,fontSize: 25),

        ),
        actions: [
          Icon(Icons.favorite,color: Colors.red,size: 20),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              height: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(image: AssetImage("assets/images/burger1.jpg"),
                fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 5,
                  backgroundColor: Colors.red,
                ),
                SizedBox(width: 15),
                 CircleAvatar(
                  radius: 5,
                  backgroundColor: Colors.grey,
                ),
                 SizedBox(width: 15),
                 CircleAvatar(
                  radius: 5,
                  backgroundColor: Colors.grey,
                ),
              ],
            ),
            SizedBox(height:25),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
          Text("Beef Burger",style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
           Text("\$7.50",style: TextStyle(color: Colors.red,fontSize: 30,fontWeight: FontWeight.bold),),
  
                ],
                
              ),
    
            
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Icon(Icons.star,color: Colors.yellow),
                  SizedBox(width: 5),
                   Icon(Icons.star,color: Colors.yellow),
                  SizedBox(width: 5),
                   Icon(Icons.star,color: Colors.yellow),
                  SizedBox(width: 5),
                   Icon(Icons.star,color: Colors.yellow),
                  SizedBox(width: 5),
                ],
              ),
      
            ),
            SizedBox(height: 35),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
           Text('ingrediants',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            SizedBox(height: 10),
            Expanded(child:
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:4,
              crossAxisSpacing: 25,
              childAspectRatio: 0.7,
              ),
              itemCount: Database.mylist.length,
              itemBuilder: (context, index){
                return Container(
                height: 50,
                width: 70,
                decoration: BoxDecoration(
                  image: DecorationImage(image:AssetImage(Database.mylist[index]["image"])),
                ),
              
                );
              }
              ),
            ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Description',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
              
                children: [
     Text('This beef burger uses 100% quality beef with\n sliced tomatos,cucumbers,vegtables\n and onions....Read More',
      style: TextStyle(fontSize: 18)),
              
                  ]
                ),
                
              
              ),
              SizedBox(height:30),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 70,
                      width: 180,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(128, 255, 255, 255),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 60,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(128, 255, 255, 255),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: 
                                Text('-',style: 
                                TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
                              
                              
                            ),
                            

                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("1",style:TextStyle(fontSize: 35,fontWeight: FontWeight.bold,
                              color: Colors.black
                              ),
                              
                              ),
                            ],
                          ),
                          Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 243, 66, 53),
                              borderRadius: BorderRadius.circular(10),
                            
                            ),
                            child: Center(
                              child: 
                          
                                Icon(Icons.add,size: 25,color: Colors.white,),
                                
                              
                            ),
                            ),
                        ],
                          ),
                        
                        ],
                      ),
                    ),
                    SizedBox(width:70),
                    Row(
                      children: [
                    Container(
                      height: 70,
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromARGB(255, 243, 66, 53),
                      ),
                      child: Center(
                        child: Text(
                          "Add To Cart",style: TextStyle(color: Colors.white,
                          fontSize: 25,
                          ),
                        ),
                      ),
                    ),
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