import 'package:flutter/material.dart';

// Tour List
import 'models/tour.dart';
import 'widgets/tourwidget.dart';
// Add photo
import 'models/photo.dart';
import 'widgets/photowidget.dart';
// My trip
import 'models/trip.dart';
import 'widgets/tripwidget.dart';
// My Exprience

import 'models/exprience.dart';
import 'widgets/expriencewidget.dart';

// chat
import 'models/chat.dart';
import 'widgets/chatwidget.dart';

// Notifications
import 'models/notifi.dart';
import 'widgets/notifiwidget.dart';
// Tour
import 'models/tour.dart';
import 'widgets/tourwidget.dart';
// // Tour List
import 'models/tourlist.dart';
import 'widgets/tourlistwidget.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter interface',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SignIn(), // Màn hình mặc định
    );
  }
}

// Màn hình 1 (Sign In)
class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Trang chu
        actions: [
          TextButton(
            onPressed: () {
              // Điều hướng đến SecondPage
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  AddPhoto()),
              );
            },
            child: const Text(
              " Add photo",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(

      child: Column(
        children: [
         
          // dang nhap
          Padding(padding: const EdgeInsets.only(left: 20.0,bottom:20, top:20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

             // Thanh trạng thái
             
          Container(
              padding: const EdgeInsets.all(9.0),
              color: const Color.fromARGB(255, 50, 205, 190),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 
                  Text(
                    '9:41',
                    style: TextStyle(fontSize: 18, 
                    fontWeight: FontWeight.bold, 
                    color: Colors.white,
                    ),
                  ),
                  Row(
                    // Các iconn
                    children: [
                      
                      Icon(Icons.signal_cellular_4_bar, size: 20, color: Colors.white,),
                      SizedBox(width: 4),
                      Icon(Icons.wifi, size: 20,color: Colors.white),
                      SizedBox(width: 4),
                      Icon(Icons.battery_full, size: 20,color: Colors.white,)
                    ],
                  ),
                ],
              ),
            
              
            ),
            //Khung 
            Container( 
             height: 120,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 50, 205, 190),
                borderRadius: BorderRadius.only(
                 
                  ),
                ),

                //Logo
              child: Padding(
                padding: const EdgeInsets.only(left: 35.0,bottom:30), 
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                child: Center(
                  child: Image.asset('images/signin/Group.png'),
                          ),
                  
                ),
              )
            ),
            ),
            // Sign in
            Text(
              "Sign in",
              style: TextStyle(fontSize: 30, 
              fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 10),

            // Welcome
            Text(
              "Welcome back to Thu Thao",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color:const Color.fromARGB(255, 50, 205, 190),
                ),
            ),
            SizedBox(height: 30 ),
            
            // Email textfield
            TextField(
              decoration: InputDecoration(
                labelText: 'Email', labelStyle: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                hintText: 'thao101191@donga.edu.vn',hintStyle: TextStyle(
                  color: const Color.fromARGB(255, 37, 35, 35).withOpacity(0.6),
                          fontSize: 15),
                
                border: UnderlineInputBorder(
                 
                ) ,floatingLabelBehavior: FloatingLabelBehavior.always
              ), 
            ),
            SizedBox(height: 20 ),
          //PassWord
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',labelStyle: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                hintText: '*********',hintStyle: TextStyle(
                  color: const Color.fromARGB(255, 37, 35, 35).withOpacity(0.6),
                          fontSize: 15
                ),
                border: UnderlineInputBorder(
                  
                ), floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
            ),
        // Forgot password
            Align(
              alignment: Alignment.centerLeft,
              child: TextButton(onPressed: () {}, 
              child: Text(
                'Forgot Password',
                style: TextStyle(color: Colors.teal),
              ),
              ),
            ),
            SizedBox(height: 15),

            //Sign in Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {                        
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF00C48C),
                  padding: EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
  
                child: Text(
                  "SIGN IN",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            
            SizedBox( height: 20),
            // Or sign in with
            Center(
              child: Text(
                'Or sign in With',
                style: TextStyle(fontSize: 16),
                ),
            ),
            SizedBox(height: 20),
            // Các icon
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('images/signin/iconFace.png'),
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset('images/signin/iconLime.png'),
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset('images/signin/iconTalk.png'),
                  SizedBox(
                    width: 20,
                   ),
                      ],
                    ),
                  
                    
                  
                  ),
                  SizedBox(height: 60,),
                // 
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  Text(
                    'Do you have a account?',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                    ),
                   SizedBox(width: 10),
                  
                  GestureDetector(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  child: Text("Sign Up",style: TextStyle(
                  color: Colors.teal,
                  fontSize: 15,
                ),
              ),
            ),
                  SizedBox (width: 15,),
                 
                ],
              ),
            ),
            // Thanh ngang cuoi trang
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Image.asset('images/signup/thanhngang.png')
              ],),
            )    
                ],

              ),
            ),
          ],
        ),
      ),
    );
  }
}
// Màn hình 2 (Sign Up)
class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Dang ky
            Padding(padding: const EdgeInsets.only(left: 20.0,bottom:20, top:20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // Thanh trang thai
             Container(
              padding: const EdgeInsets.all(9.0),
              color: const Color.fromARGB(255, 50, 205, 190),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '9:41',
                    style: TextStyle(fontSize: 18, 
                    fontWeight: FontWeight.bold, 
                    color: Colors.white,),),
                  Row(
                    // Các iconn
                    children: [ 
                      Icon(Icons.signal_cellular_4_bar, size: 20, color: Colors.white,),
                      SizedBox(width: 4),
                      Icon(Icons.wifi, size: 20,color: Colors.white),
                      SizedBox(width: 4),
                      Icon(Icons.battery_full, size: 20,color: Colors.white,)
                    ],
                  ),
                ],
              ),  
            ),
            //Khung 
            Container(
             height: 120,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 50, 205, 190),
                borderRadius: BorderRadius.only(),
                ),
                //Logo
              child: Padding(
                padding: const EdgeInsets.only(left: 35.0,bottom:30), 
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                child: Center(
                  child: 
                  Image.asset('images/signup/Group.png'),
                          ),
                ),
              )
            ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:20,left: 25.0,bottom:20),
              child: Align(
                alignment: Alignment.centerLeft,
              child: Text(
              "Sign Up",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
              ),
            ),
            // khung ngang
            Padding(padding: const EdgeInsets.only(left: 25.0),
            child: Align(
                alignment: Alignment.centerLeft,
            child: Row(
              children: [
                // Travel and guide
                  Row(
                    children: [
                      Image.asset('images/signup/select.png'),
                      SizedBox(width: 20,),
                      Text('Traveled',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),),
                      SizedBox(width: 120,),
                      Image.asset('images/signup/Oval.png'),
                      SizedBox(width: 20,),
                      Text("Guide",
                      style: TextStyle(
                        fontSize:20 ,
                        color: Colors.black,
                      ),)
                    ],
              ),
            ],
            ),
            ),
            ),
            SizedBox(height: 25,),
            // Last name and first name
            Padding(padding: const EdgeInsets.only(left: 25.0,right: 25.0),
            child: Align(
                alignment: Alignment.centerLeft,
           child: Column(  
              children: [
                Row(
                  children: [
                    // First Name
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "First Name",
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                          hintText: 'Le',hintStyle: TextStyle(
                          color: const Color.fromARGB(255, 37, 35, 35).withOpacity(0.6),
                          fontSize: 15),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(),
                          ),floatingLabelBehavior: FloatingLabelBehavior.always,
                        ),
                      ),
                    ),
                    SizedBox(width: 25), // Khoảng cách giữa First Name và Last Name
                    // Last Name
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Last Name",
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                          hintText: 'Thu Thao',
                          hintStyle: TextStyle(
                            color: const Color.fromARGB(255, 37, 35, 35).withOpacity(0.6),
                          fontSize: 15),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(),
                          ),floatingLabelBehavior: FloatingLabelBehavior.always,
                        ),
                      ),
                    ),
                  ],
                ),SizedBox(height: 25,),
                // Country
                TextField(
              decoration: InputDecoration(
                labelText: 'Country',labelStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                hintText: 'VietNam',
                hintStyle: TextStyle(
                  color: const Color.fromARGB(255, 37, 35, 35).withOpacity(0.6),
                          fontSize: 15),
                
                border: UnderlineInputBorder(
                  borderSide: BorderSide(
                  ),
                  
                ) ,floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
            ),
            // Email
            SizedBox(height: 25,),
                TextField(
              decoration: InputDecoration(
                labelText: 'Email',labelStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                hintText: 'thao101191@donga.eu.vn',
                hintStyle: TextStyle(
                  color: const Color.fromARGB(255, 37, 35, 35).withOpacity(0.6),
                          fontSize: 15),
                
                border: UnderlineInputBorder(
                  borderSide: BorderSide(

                  ),
                ) , floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
            ),
            // Password
            SizedBox(height: 25,),
                TextField(
              decoration: InputDecoration(
                labelText: 'Password',labelStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                hintText: '***********', 
                hintStyle: TextStyle(
                  color: const Color.fromARGB(255, 37, 35, 35).withOpacity(0.6),
                          fontSize: 15),
                
                border: UnderlineInputBorder(
                  borderSide: BorderSide(

                  ),
                ) , floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
            ),
            //Confirm Password
            SizedBox(height: 15,),
                TextField(
              decoration: InputDecoration(
                labelText: 'Confirm Password',labelStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                hintText: '***********',hintStyle: TextStyle(
                  color: const Color.fromARGB(255, 37, 35, 35).withOpacity(0.6),
                          fontSize: 15),
                
                border: UnderlineInputBorder(
                  borderSide: BorderSide(

                  ),
                ) , floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
            ),
            SizedBox(height: 40),
            // By sign Up
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  " By Signing Up,you agree to our" ), 
                Text(
                  " Terms & Conditions", style: TextStyle(
                    color: Colors.teal,
                  ),
                )
              ],
             ),
             SizedBox(height: 20,),
             // Buttom sign Up
             SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF00C48C),
                  padding: EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  "SIGN UP",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),SizedBox( height: 20,),
            // Already
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  Text(
                    'Already have an account?',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                    ),
                   SizedBox(width: 10),
                   // Xử lý đến giao diện tiếp theo
                  GestureDetector( onTap: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignIn()), );
              },
              child: Text(
                'Sign In',
                style: TextStyle(
                  color: Colors.teal,
                  fontSize: 15,
                ),
              ),
            ),SizedBox (width: 15,),
                 
                ],
              ),
            ),SizedBox(height: 30,),
            // Thanh ngang cuoi trang
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Image.asset('images/signup/thanhngang.png')
              ],),
            ),
              ],    
            ),
            ),
            ),
            ],
          ),
            )
          ], 
        ),
      ),
      
    );
  }
}

// Màn hình 3 (Add photo)
class AddPhoto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     List<Photo> lsPhotos =[
      Photo("images/photo/take_photo.jpg","images/photo/thap.png","images/photo/tree.png"),
      Photo("images/photo/ho.png","images/photo/nui.png","images/photo/bien.png"),
      Photo("images/photo/ho.png","images/photo/food.png","images/photo/tree.png")
    ];
    return Scaffold(
      appBar: AppBar(
      title: const Text(''),
      actions: [
    TextButton(
      onPressed: () {
        // Điều hướng đến MyExprience
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyExprience()),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 60), 
        child: Text(
          "Exprience", 
          style: TextStyle(
            color: Colors.black, 
            fontSize: 20, 
            fontWeight: FontWeight.bold, 
          ),
        ),
      ),
    ),
  ],
),

      body: SingleChildScrollView(
        child:Column(
          children: [
            // Thanh trạng thái
            Padding(
              padding: const EdgeInsets.only(left: 20.0,bottom:20, top:20, right: 20),
          
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  // Thanh trang thái (ví dụ 9:40, tín hiệu, wifi)
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "9:40",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Row(
                          children: const [
                            Icon(Icons.signal_cellular_4_bar, size: 20, color: Colors.black),
                            SizedBox(width: 6),
                            Icon(Icons.wifi, size: 20, color: Colors.black),
                            SizedBox(width: 6),
                            Icon(Icons.battery_full, size: 20, color: Colors.black),
                          ],
                        )
                      ],
                    ),
                  ),
                  // Add Photos bar
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    color: Colors.white,
                    child: Row(
                      children: [
                        const Icon(Icons.close),
                        const SizedBox(width: 150),
                        const Text(
                          "Add Photos",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => MyExprience()));
                          },
                          child: Text(
                            "Done",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.teal,
                          ),
                          ),
                        )
                      ],
                    ),
                  ),
                   SizedBox(height: 20),
                 // Hiển thị lưới hình ảnh

        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: lsPhotos.length, // Số lượng ảnh từ danh sách lsPhotos
          itemBuilder: (context, index) {
            Photo photo = lsPhotos[index];  // Lấy đối tượng photo từ danh sách lsPhotos
            return Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Photowidget(
              anh1: photo.anh1,
              anh2:  photo.anh2, 
              anh3: photo.anh3,          
              ),
            );
            
          },
        ),SizedBox(height: 300),
        
      // Thanh ngang cuoi trang
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Image.asset('images/thanhngang.png')
              ],),
            )
        
        ],
      ),
      ),
      ],

        ),
        
      ),
    );

  }
}

// Màn hình 4 (My Exprience)
class MyExprience extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Exprience> lsExpriences =[
      Exprience("images/exprience/hoian1.png", "images/exprience/hoian2.png", "images/exprience/hoian3.png", 
      "2 Hour Bicycle Tour exploring Hoian", "Hoian, Vietnam", "Jan 25,2020", "1234 Likes"),
      Exprience("images/exprience/fod1.png", "images/exprience/fod2.png", "images/exprience/fod3.png", 
      "Food tour in Danang", "Danang, Vietnam", "Jan 20,2020", "234 Likes"),
    ];
    return Scaffold(
      appBar: AppBar(title: Text('')),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.only(left: 20.0,bottom:20, top:20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20,right: 20),
              color: Colors.white,
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "9:40",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
                    color: Colors.black),
                  ),
                  // SizedBox(width: 100,),
                  Row(
                    children: [
                      Icon(Icons.signal_cellular_4_bar_rounded, size: 20, color: Colors.black),
                      SizedBox(width: 6),
                      Icon(Icons.wifi, size: 20, color: Colors.black),
                      SizedBox(width: 6),
                      Icon(Icons.battery_full_sharp, size: 20, color: Colors.black),
                    ],
                  ),
                  
              ],),
            ),
            SizedBox(height: 10,),
            // My Ẽxrience 
            Container(
                  color: Colors.white,
                    child: Row(
                      
                      children: [
                        const Icon(Icons.chevron_left,size: 50,),
                        const SizedBox(width: 150),
                        const Text(
                          "My Expriences",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        
                      ],
                    ),
            ),
            SizedBox(height: 20,),
            Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0), // Tạo khoảng cách 16 đơn vị hai bên
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0), // Thêm padding bên trong Container
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.teal.withOpacity(0.8), width: 1),
                borderRadius: BorderRadius.circular(9),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    splashColor: const Color.fromARGB(255, 47, 209, 147), // Màu hiệu ứng sóng
                      highlightColor: const Color.fromARGB(255, 100, 200, 100), // Màu khi nhấn
                      splashFactory: InkRipple.splashFactory, // Tạo hiệu ứng sóng lan rộng
                      
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyTrip(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.teal,
                            size: 24,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Add Experience",
                            style: TextStyle(
                              color: Colors.teal,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
          SizedBox(height: 20,),


            // Exprience
           ListView.builder(
          physics: NeverScrollableScrollPhysics(), // Để tránh cuộn bên trong ListView
          shrinkWrap: true,
          itemCount: lsExpriences.length,
          itemBuilder: (context, index) {
            Exprience experience = lsExpriences[index];
            return Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: ExperienceWidgets(
                avatar1: experience.avatar1,
                avatar2: experience.avatar2,
                avatar3: experience.avatar3,
                title: experience.title,
                local: experience.local,
                date: experience.date,
                like: experience.like,
              ),
            );
          },
        ),SizedBox(height: 80,),
        Center(
          child: Image.asset('images/thanhngang.png'),
        )
          ],
        ),
        
        ),

       
      ),
    );
  }
}

// Màn hình 5 (My trip)
class MyTrip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Trip> lsTrips =[
      Trip ("images/trip/hoguom.png","Hanoi, Vietnam","Ho Guom Trip","8:00 - 10:00","Jonathan P","images/trip/cus1.png"),
      Trip ("images/trip/langBac.png","Hanoi, Vietnam","Ho Chi Minh Mausoleum","8:00 - 10:00","Stephne","images/trip/cus2.png"),
      Trip ("images/trip/ducba.png","Ho Chi Minh , Vietnam","Duc Ba Church","8:00 - 10:00","Myung Dea","images/trip/cus3.png"),

    ];
    return Scaffold(
      appBar: AppBar(title: Text('')),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.only(left: 20.0,bottom:20, top:20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          
          children:[
            // Background image
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/trip/danang.png'),
                fit: BoxFit.cover,
              ),
            ), 
          ),
          // My trips
          Padding(padding: const EdgeInsets.only(top: 140, right: 20, left: 10),
          child: 
          Text('My Trips', style: TextStyle(fontWeight: FontWeight.bold, 
          fontSize: 35, 
          color: Colors.white),),
          ),
          // Search
          Padding(padding: const EdgeInsets.only(top: 70, right: 10,left: 490),
          child: 
          CircleAvatar(
         radius: 20, 
         backgroundColor: const Color.fromARGB(255, 196, 192, 192).withOpacity(0.3),
          child:Icon(Icons.search,), 
    ),
          ),
          // App bar với nút back và tín hiệu di động
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Text("9:41", style: TextStyle(
                  fontWeight: FontWeight.bold, 
                  fontSize: 18, color: Colors.white),),
                  // Các icon tín hiệu
                  Row(
                    children: [
                      Icon(Icons.signal_cellular_alt, color: Colors.white),
                      SizedBox(width: 5),
                      Icon(Icons.wifi, color: Colors.white),
                      SizedBox(width: 5),
                      Icon(Icons.battery_full, color: Colors.white),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          // Nội dung chính với tiêu đề và thanh tìm kiếm
          Padding(
            padding: const EdgeInsets.only(top: 200,  // Vị trí cách phần trên của hình ảnh để đè một phần
            left: 16,
            right: 16,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // current Trips
                   Expanded(child: Container(
                    height: 60,
                    child: Center(
                      child: Text("Current Trips",style: TextStyle(
                        color: Colors.grey.withOpacity(0.8),
                      ),),
                    ),
                   ),
                   ),
                   //Next Trips
                    Expanded(child: Container(
                    height: 45,
                    
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      border: Border.all( color: Colors.teal,
            width: 0,),
                      borderRadius: BorderRadius.circular(5),),
                    child: Center(
                      child: Text("Next Trips",style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                      ),
                      ),
                    ),
                   ),
                   ),
                   //Past trips
                    Expanded(child: Container(
                    height: 60,
                    child: Center(
                      child: Text("Past Trips",style: TextStyle(
                        color: Colors.grey.withOpacity(0.8),
                      ),),
                    ),
                   ),
                   ),
                   //Wish List
                    Expanded(child: Container(
                    height: 60,
                    child: Center(
                      child: Text("Wish List",style: TextStyle(
                        color: Colors.grey.withOpacity(0.8),
                      ),),
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
         SizedBox(height: 20,),

            // Danh sach Trip
            ListView.builder(shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(), // Để tránh cuộn bên trong ListView
              itemCount: lsTrips.length,
              itemBuilder: (context, index){
                Trip trip = lsTrips[index];
                return Padding(padding: 
                 const EdgeInsets.only(bottom: 16.0),
                 child: Tripwidget(
                  avatar: trip.avatar,
                  cityName: trip.cityName,
                  date: trip.date,
                  avatarCus: trip.avatarCus,
                  tripName: trip.tripName,
                  customerName: trip.customerName,
                 ),
                );
              },
            ),SizedBox(height: 10,),
            
            // hinh anh
              Center(child: 
              Row(
                mainAxisAlignment: MainAxisAlignment.center, // Để căn giữa hàng ngang
                children: [
                  Icon(Icons.explore, color: Colors.grey, size: 40),
                  SizedBox(width: 50,),
                  Icon(Icons.location_on, color: Colors.teal,size: 40,),
                  SizedBox(width: 50,),
                  GestureDetector(
                    child: InkWell(
                      splashColor: const Color.fromARGB(255, 37, 187, 172),  // Màu khi nhấn
                        // Màu khi giữ nhấn
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MyChat()));
                      },
                      child: Icon(
                        Icons.message,
                        color: Colors.grey, // Màu mặc định của biểu tượng
                        size: 40,
                      ),
                    ),
                  ),
                  SizedBox(width: 50,),
                  GestureDetector(
                    child: InkWell(
                      splashColor: const Color.fromARGB(255, 37, 187, 172),  // Màu khi nhấn
                        // Màu khi giữ nhấn
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Notifications()));
                      },
                      child: Icon(
                        Icons.notifications,
                        color: Colors.grey, // Màu mặc định của biểu tượng
                        size: 40,
                      ),
                    ),
                  ),
                  SizedBox(width: 50,),
                  GestureDetector(
                    child: InkWell(
                      splashColor: const Color.fromARGB(255, 37, 187, 172),  // Màu khi nhấn
                        // Màu khi giữ nhấn
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
                      },
                      child: Icon(
                        Icons.person,
                        color: Colors.grey, // Màu mặc định của biểu tượng
                        size: 40,
                      ),
                    ),
                  ),
                  
                ],
              ),
              ),SizedBox(height: 3,)
              ,
           Center(
              child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Image.asset("images/thanhngang.png"),
              ],
            ),
            ),
          ],
        ),
        ),
        ),
      );// This trailing comma makes auto-formatting nicer for build methods.
    
  }
}

// Màn hình 6 (Edit Profile)
class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('')),
      body: Container(
        
        child: SingleChildScrollView(
          child: Padding(
             padding: const EdgeInsets.only(left: 20.0,bottom:20, top:20, right: 20),
            child: Container(
             
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // App bar với nút back và tín hiệu di động
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "9:41",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black),
                          ),
                          // Các icon tín hiệu
                          Row(
                            children: [
                              Icon(Icons.signal_cellular_alt,
                                  color: Colors.black),
                              SizedBox(width: 5),
                              Icon(Icons.wifi, color: Colors.black),
                              SizedBox(width: 5),
                              Icon(Icons.battery_full, color: Colors.black),
                            ],
                          ),
                        ],
                         
                      ),
                      
                    ),
                    
                  ),
                  // Edit Profile
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 10),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     IconButton(
                      icon: Icon(Icons.close, size: 30, color: Colors.black),
                      onPressed: () {
                        // Quay lại màn hình trước
                        Navigator.pop(context);
                      },
                    ),

                      
                      SizedBox(width: 50,),
                      Text("Edit Profile", style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),),
                      SizedBox(width: 60,),
                      Text("SAVE",style: TextStyle(
                        fontSize: 20,
                        
                        color:const Color.fromARGB(255, 77, 207, 194),
                      ),),
                  

                    ],
                  ),
                  
                  ),
                  SizedBox(height: 20,),
                  // Hinh anh 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Image.asset("images/avatar.png"),
                          Positioned(top: -10,
                          right: -20,
                          child: Image.asset("images/cam.png",width: 60, height: 60,),
                          ),

                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 15,),
                  // PassWord
                   Padding(padding: const EdgeInsets.only(left: 25.0,right: 25.0),
                   child:Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextField(
                    decoration:InputDecoration(
                      labelText: "PassWord",
                      labelStyle: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        height: 30,
                      ),
                      
                      hintText: "**********",
                      hintStyle: TextStyle(
                          fontSize: 15),
                
                border: UnderlineInputBorder(
                  borderSide: BorderSide(
                  ),
                  
                ) ,floatingLabelBehavior: FloatingLabelBehavior.always,
                    ),
                  ),
                  SizedBox(height: 20,),
                  // Change password
                  Row(
                    children: [
                  Text("Change password", style: TextStyle(
                    fontSize: 15,
                    color: const Color.fromARGB(255, 77, 207, 194),
                  ),),
                  ],),
                  SizedBox(height: 20,),

                  // Adress
                  TextField(
                    decoration:InputDecoration(
                      labelText: "Address",
                      labelStyle: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        height: 30,
                      ),
                      
                      hintText: "123 Xo Viet Nghe Tinh",
                      hintStyle: TextStyle(
                          fontSize: 18,
                          height: 2,
                          
                          ),
                
                border: UnderlineInputBorder(
                  borderSide: BorderSide(
                  ),
                  
                ) ,floatingLabelBehavior: FloatingLabelBehavior.always,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      // Danang
                  Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                          hintText: 'Danang',hintStyle: TextStyle(
                          color: const Color.fromARGB(255, 37, 35, 35).withOpacity(0.9),
                          fontSize: 20),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(),
                          ),floatingLabelBehavior: FloatingLabelBehavior.always,
                          
                          
                        ),
                      ),
                    ),SizedBox(width: 20,),
                    // 
                     Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                          hintText: 'Vietnam',hintStyle: TextStyle(
                          color: const Color.fromARGB(255, 37, 35, 35).withOpacity(0.9),
                          fontSize: 20),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(),
                          ),floatingLabelBehavior: FloatingLabelBehavior.always,
                        ),
                      ),
                    ),
                    ],
                  ),SizedBox(height: 
                  20),
                  // Phone number
                    TextField(
                    decoration:InputDecoration(
                      labelText: "Phone number",
                      labelStyle: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        height: 30,
                      ),
                      
                      hintText: "(+84)  912345678",
                      hintStyle: TextStyle(
                          fontSize: 18,
                          height: 2,
                          
                          ),
                
                border: UnderlineInputBorder(
                  borderSide: BorderSide(
                  ),
                  
                ) ,floatingLabelBehavior: FloatingLabelBehavior.always,
                    ),
                  ),
                  SizedBox(height: 30,),
                  // change avaible
                  Row(
                    children: [
                      Text("Change Available time", style: TextStyle(
                        fontSize: 15,
                        
                        color: const Color.fromARGB(255, 77, 207, 194),
                      ),)
                    ],
                  ),
                  SizedBox(height: 200,),
                  Center(
                  child: Image.asset("images/signup/thanhngang.png"),
                  )
                   
                  
                  ],
                   ),

                   ),
                   
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


// Màn hình 7 (Notifications)
class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List <Notifi> lsNos=[
      Notifi("./images/notifi/n1.png", "Yoo Jin chose you for the trip in DaNang,", "Jan 16","images/notifi/v1.png","images/notifi/local.png"," Vietnam on Jan 20, 2020"),
      Notifi("./images/notifi/n1.png", "Yoo Jin pay upfront 50% for the trip in DaNang,", "Jan 16","images/notifi/v2.png","images/notifi/money.png"," Vietnamese on Jan 20, 2020"),
      Notifi("./images/notifi/n1.png", "Yoo Jin left a review for you,", "Jan 24","images/notifi/v3.png","images/notifi/pen.png"," "),
    ];
    return Scaffold(
      appBar: AppBar(title: Text('')),
      body: SingleChildScrollView(


        child: Padding(padding: const EdgeInsets.only(left: 20.0,bottom:20, top:20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          
          children:[
            // Background image
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/notifi/danang.png'),
                fit: BoxFit.cover,
              ),
            ),
            
          ),
          // My trips
          Padding(padding: const EdgeInsets.only(top: 140, right: 20, left: 10),
          child: 
          Text('Notifications', style: TextStyle(fontWeight: FontWeight.bold, 
          fontSize: 35, 
          color: Colors.white),),
          ),
          // Search
          Padding(padding: const EdgeInsets.only(top: 70, right: 10,left: 490),
          child: 
          CircleAvatar(
         radius: 20, 
         backgroundColor: const Color.fromARGB(255, 196, 192, 192).withOpacity(0.3),
          child:Icon(Icons.search,), 
    ),
          ),
          // App bar với nút back và tín hiệu di động
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Text("9:41", style: TextStyle(
                  fontWeight: FontWeight.bold, 
                  fontSize: 18, color: Colors.white),),
                  // Các icon tín hiệu
                  Row(
                    children: [
                      Icon(Icons.signal_cellular_alt, color: Colors.white),
                      SizedBox(width: 5),
                      Icon(Icons.wifi, color: Colors.white),
                      SizedBox(width: 5),
                      Icon(Icons.battery_full, color: Colors.white),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30,),

         
              ],
      ), SizedBox(height: 30,),
       ListView.builder(
          shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(), // Để tránh cuộn bên trong ListView
              itemCount: lsNos.length,
              itemBuilder: (context, index){
                Notifi no = lsNos[index];
                return Padding(padding: 
                 const EdgeInsets.only(bottom: 16.0),
                 child: Notifiwidget(
                  avatar: no.avatar,
                  title: no.title,
                  date: no.date,
                  circle: no.circle,
                  icon: no.icon,
                  title1: no.title1,
                 ),
                );
              },
            ),
            SizedBox(height: 250,),
            Image.asset("images/notifi/TabBar.png", width: double.infinity, fit: BoxFit.cover,),
            SizedBox(height: 10,),
            Center(child: 
            Image.asset("images/chat/thanhngang.png"),),
          ],
      ),
      ),
      
      ),
    );
  }
}

// Màn hình 8 (My chat)
class MyChat extends StatelessWidget {
   List <Chat> lsChats =[
      Chat("images/chat/n3.png", "Pena Valdez"),
      Chat("images/chat/n1.png", "Pena Valdez"),
      Chat("images/chat/n4.png", "Pena Valdez"),
      Chat("images/chat/n2.png", "Pena Valdez"),
      Chat("images/chat/n3.png", "Pena Valdez"),
      Chat("images/chat/n5.png", "Pena Valdez"),
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Back')),
        body:SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0,bottom:20, top:20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  // Thanh trang thái (ví dụ 9:40, tín hiệu, wifi)
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "9:40",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Row(
                          children: const [
                            Icon(Icons.signal_cellular_4_bar, size: 20, color: Colors.black),
                            SizedBox(width: 6),
                            Icon(Icons.wifi, size: 20, color: Colors.black),
                            SizedBox(width: 6),
                            Icon(Icons.battery_full, size: 20, color: Colors.black),
                          ],
                        )
                      ],
                    ),
                  ),
                  // Add Frriends bar
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    color: Colors.white,
                    child: Row(
                      children: [
                        IconButton(
                      icon: Icon(Icons.navigate_before, size: 30, color: Colors.black),
                      onPressed: () {
                        // Quay lại màn hình trước
                        Navigator.pop(context);
                      },
                    ),
                        const SizedBox(width: 120),
                        const Text(
                          "Add Friends",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        const Text(
                          "Done",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.teal,
                          ),
                        ),
                      ],
                    ),
                  ),
                   SizedBox(height: 20),
                   // Thanh tim kiem
                   TextField(
                    
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search Friend', 
                      
                      border: OutlineInputBorder(
                        
                        borderRadius: BorderRadius.circular(30.0),
                      ),filled:true,
                      fillColor: Colors.grey[200],
                      ),
                      
                   ),SizedBox(height: 20),
                   // hinh anh
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
                    Stack(
            children: [
              // Ảnh đại diện tròn 1
              CircleAvatar(
                radius: 30,
              child: Image.asset("images/chat/n1.png", width: double.infinity,fit: BoxFit.cover),
              ),
              Positioned(
                top: 0, // Vị trí phía trên cùng
                right: 0, // Vị trí góc trái
                child: Image.asset(
                  "images/chat/Close.png", // Đường dẫn đến ảnh dấu "X"
                  width: 20, // Điều chỉnh kích thước dấu "X"
                  height: 20,
                ),
              ),
            ],
          ),SizedBox(width: 15,),
          Stack(
            children: [
              // Ảnh đại diện tròn 2
              CircleAvatar(
                radius: 30,
              child: Image.asset("images/chat/n2.png", width: double.infinity,fit: BoxFit.cover),
              ),
              Positioned(
                top: 0, // Vị trí phía trên cùng
                right: 0, // Vị trí góc trái
                child: Image.asset(
                  "images/chat/Close.png", // Đường dẫn đến ảnh dấu "X"
                  width: 20, // Điều chỉnh kích thước dấu "X"
                  height: 20,
                ),
              ),
            ],
          ),

          ],
        ),SizedBox(height: 40,),

            ListView.builder(
              shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: lsChats.length, // Số lượng ảnh từ danh sách lsPhotos
          itemBuilder: (context, index) {
            Chat chat = lsChats[index]; 
            return Padding(padding: 
            const EdgeInsets.only(bottom: 16.0),
            child: Chatwidget(
              avatar: chat.avatar, 
              name: chat.name),
            );
          },
            ),SizedBox(height: 100,),
            // Thanh ngang cuoi trang
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Image.asset('images/chat/thanhngang.png')
              ],),
            )

          ],
        ),
      ),
          ],
        ),
      ),
        
    );
  }
}


// Màn hình 9 (Tour Detail)
class TourDetail extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
     List<Tour> lsTours =[
      Tour("6:00 AM", "Lorem Ipsum is simply dummy text of the" ,"printing and typesetting industry. Lorem Ipsum",
      "has been the industry's standard dummy text","ever since the 1500s, when an unknown printer","took a galley of type and scrambled."),
      Tour("10:00 AM", "Lorem Ipsum is simply dummy text of the" ,"printing and typesetting industry. Lorem Ipsum",
      "has been the industry's standard dummy text","ever since the 1500s, when an unknown printer","took a galley of type and scrambled."),
      Tour("1:00 AM", "Lorem Ipsum is simply dummy text of the" ,"printing and typesetting industry. Lorem Ipsum",
      "has been the industry's standard dummy text",
      "ever since the 1500s, when an unknown printer","took a galley of type and scrambled."),
      Tour("8:00 AM", "Lorem Ipsum is simply dummy text of the" ,"printing and typesetting industry. Lorem Ipsum",
      "has been the industry's standard dummy text",
      "ever since the 1500s, when an unknown printer","took a galley of type and scrambled."),

    ];
    return Scaffold(
      appBar: AppBar(title: Text('')),
     body: SingleChildScrollView(
        
        child: Column(
         
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Padding(
             padding: const EdgeInsets.only(left: 20.0,bottom:20, top:20, right: 20),
          child: Column(
            children: [
              Container(
                
                  
                child: Stack(
                 children: [
                  Image.asset("images/tour/ho.png", width: double.infinity,fit: BoxFit.cover),
                  Positioned(
                    top:30,
                    child: 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    
                    children: [
                      Container(
                      margin: EdgeInsets.symmetric(horizontal: 8.0),
                      padding: EdgeInsets.all(8.0),
                     
                      
                      child:
                       IconButton(
                      icon: Icon(Icons.arrow_back, size: 40, color: Colors.white),
                      onPressed: () {
                        // Quay lại màn hình trước
                        Navigator.pop(context);
                      },
                    ),
                      ),
                      SizedBox(width: 700,),
                      Row(
                        children: [
                          Container(
                          margin: EdgeInsets.symmetric(horizontal: 8.0),
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.2),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.share,
                            color: Colors.white.withOpacity(0.8),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 8.0),
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.2),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.white.withOpacity(0.8),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 8.0),
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.2),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.bookmark_border,
                            color: Colors.white.withOpacity(0.8),
                          ),
                        ),
                        ],
                      )
                    ],
                  ),
                  ),
                  Positioned(left: 50, right: 50,bottom: 0,
                    child: Image.asset("images/tour/icon.png", width: 50,)),
                 ] 
                ),
              ),SizedBox(height: 20,),
              // Danang - BaNa
            Container(
              padding: EdgeInsets.only(left: 20.0, right: 20), 
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("DaNang - BaNa - HoiAn", style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
                      ),),
                      Row(
                        children: [
                          
                          Text('\$400.00', style: TextStyle(
                            color: const Color.fromARGB(255, 59, 232, 214),
                            fontSize: 20,
                          ),),
                        ],
                      ),
                    ],
                  ),SizedBox(height: 10,),
                  // Icon ngooi sao
                  Row(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.star, color: const Color.fromARGB(255, 246, 228, 71),size: 20,),
                          Icon(Icons.star, color: const Color.fromARGB(255, 246, 228, 71),size: 20,),
                          Icon(Icons.star, color: const Color.fromARGB(255, 246, 228, 71),size: 20,),
                          Icon(Icons.star, color: const Color.fromARGB(255, 246, 228, 71),size: 20,),
                          Icon(Icons.star, color: const Color.fromARGB(255, 246, 228, 71),size: 20,),
                          
                        ],
                        

                      ),SizedBox(width: 10,),
                      Text("145 Reviews", style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),),
                      SizedBox(width: 230,),
                       Row(
                        
                        children: [
                         
                          Text('\$450.00', style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            fontSize:18,
                            color: Colors.black.withOpacity(0.4)
                            
                          ),),
                        ],
                      ),
                    ],
                  ),SizedBox(height: 10,),
                  Row(
                    children: [
                      Text("Provider", style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 18,
                      ),),SizedBox(width: 45,),
                      Text("dulichviet",style: TextStyle(
                        color: const Color.fromARGB(255, 57, 221, 204),
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),)
                    ],
                  ),SizedBox(height: 50,),

                  //card
                  Card(
                   child:  Container(
                  padding: EdgeInsets.only(left: 20.0, right: 10, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("Summary", style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Itinerary", style: TextStyle(
                                color: Colors.black.withOpacity(0.6),
                               
                              ),),
                              SizedBox(height: 5,),
                              Text("Da Nang - Ba Na - Hoi An", style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),),SizedBox(height: 15,),
                              Text("Duration", style: TextStyle(
                                color: Colors.black.withOpacity(0.6),
                               
                              ),),
                              SizedBox(height: 5,),
                              Text("2 days, 2 nights", style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),),SizedBox(height: 15,),
                              Text("Departure Date", style: TextStyle(
                                color: Colors.black.withOpacity(0.6),
                               
                              ),),
                              SizedBox(height: 5,),
                              Text("Feb 12", style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),),SizedBox(height: 15,),
                              Text("Departure Place", style: TextStyle(
                                color: Colors.black.withOpacity(0.6),
                               
                              ),),
                              SizedBox(height: 5,),
                              Text("Ho Chi Minh", style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),),SizedBox(height: 20,)
                            ],
                          ),
                          
                        ],
                    ),
                  ),
                  ),SizedBox(height:20),
                  //Schedule
                  Row(
                    children: [
                      Image.asset("images/tour/iconsach.png"),
                      SizedBox(width: 15),
                      Text("Schedule", style: TextStyle(fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 25),)
                    ],
                  ),
                  SizedBox(height: 20,),
                  // Day 1 and day 2
                  Row(
                    children: [
                      ElevatedButton(
                onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => TripDetail()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 28, 213, 194),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  'Day 1',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ), SizedBox(width: 20),
              TextButton(
                onPressed: () {
                  // Thêm logic khi nhấn nút Day 2
                },
                child: Text(
                  'Day 2',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
                    ],
                  ),SizedBox(height: 20,),
                  // Ho Chi Minh Da Nang
                  Row(
                    children: [
                      Text(" Ho Chi Minh - Da Nang", style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20,
                      ),),
                      SizedBox(height: 10,),
                      // List View
                      
                    ],
                  ),
                  ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(), // Để tránh cuộn bên trong ListView
              itemCount: lsTours.length,
              itemBuilder: (context, index){
                Tour tour = lsTours[index];
                return Padding(padding: 
                const EdgeInsets.only(bottom: 16.0),
                 child: Tourwidget(
                  time: tour.time,
                  title: tour.title,
                  title2: tour.title2,
                  title3: tour.title3,
                  title4: tour.title4,
                  title5: tour.title5,
                 ),
                );
              }
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Image.asset("images/tour/icontien.png", ),
                  SizedBox(width: 10,),
                  Text("Price", style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),),
                  
                 
                ],
              ),SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.only(left: 20.0, right: 25), 
                child: Table(
                border: TableBorder.all(
                    color: Colors.grey,
                    width: 1,),
                children: [
                  TableRow(
                    children: 
                    [
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Adult (>10 years old)',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '\$400.00',
                            textAlign: TextAlign.right,
                            style: TextStyle(fontSize: 16),
                          ),
                        ),

                    ]
                  ),
                   TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Child (5 - 10 years old)',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '\$320.00',
                            textAlign: TextAlign.right,
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                         Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Child (<5 years old)',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                         Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Free',
                            textAlign: TextAlign.right,
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      
                    
                      ]
                    )
                ],
              ),
              
                ),
                
                 SizedBox(height: 24),
                 Container(
                  padding: EdgeInsets.only(left: 35, right: 35),
                child:
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (
                      
                    ) {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => ListTour()));
                    },
                     style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 60, 197, 183),
                      padding: EdgeInsets.symmetric(vertical: 22),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    
                    child: Text(
                      'BOOK THIS TOUR',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  )
                ),
                )
                ],
                
              ),
              
            )
              
            ],
          ),
          
        
           ),
           
         ], 
            ),
       
        ),
      
    );
  }
}



// Màn hình 10 (List Tour)
class ListTour extends StatelessWidget {
   List<TourList> lsTourlist = [
      TourList("images/listtour/danang.png", "Uc - Sydney", "Sept 30, 2022", "\$1000", "07 days"),
      TourList("images/listtour/halong.png", "HaNoi - Ha Long", "Feb 20, 2021", "\$200", "05 days"),
      TourList("images/listtour/Uc.png", "DaNang - Ba Na", "Jan 30, 2020", "\$600", "03 days"),
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('')),
     body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.only(left: 20.0,bottom:20, top:20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          
          children:[
            // Background image
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 350,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/footer.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // App bar với nút back và tín hiệu di động
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Nút back
                  GestureDetector(
                    onTap: () {
                      // Xử lý khi nhấn back
                    },
                    child: Icon(Icons.arrow_back, color: Colors.white),
                  ),
                  // Các icon tín hiệu
                  Row(
                    children: [
                      Icon(Icons.signal_cellular_alt, color: Colors.white),
                      SizedBox(width: 5),
                      Icon(Icons.wifi, color: Colors.white),
                      SizedBox(width: 5),
                      Icon(Icons.battery_full, color: Colors.white),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Nội dung chính với tiêu đề và thanh tìm kiếm
          Padding(
            padding: const EdgeInsets.only(top: 280,  // Vị trí cách phần trên của hình ảnh để đè một phần
            left: 16,
            right: 16,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Plenty of amazing tours are waiting for you',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                // Thanh tìm kiếm
                Positioned( top: 280,
                left: 16, right: 16,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 241, 238, 238),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.search),
                      hintText: 'Hi, where do you want to explore?',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                ),
              ],
            ),
          ),
              ],
        ),
         SizedBox(height: 20,),

            // Danh sach Tour
            ListView.builder(shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(), // Để tránh cuộn bên trong ListView
              itemCount: lsTourlist.length,
              itemBuilder: (context, index){
                TourList tourlist = lsTourlist[index];
                return Padding(padding: 
                 const EdgeInsets.only(bottom: 16.0),
                 child: Tourlistwidget(
                  avatar: tourlist.avatar,
                  cityName: tourlist.cityName,
                  date: tourlist.date,
                  price: tourlist.price,
                  days: tourlist.days,
                 ),
                );
              },
            ),SizedBox(height: 30,),
            Center(
              child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Image.asset("images/listtour/daucham.png"),
              ],
            ),
            
            ),SizedBox(height: 50,),
           Center(
              child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Image.asset("images/listtour/thanhngang.png"),
              ],
            ),
            ),
          ],
        ),
        ), 
        ),
      );
  }
}
// Màn hình 11 (Trip Detail)
class TripDetail extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('')),
      body: SingleChildScrollView(
        
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           Padding(
              padding: const EdgeInsets.only(left: 20.0,bottom:20, top:20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  // Thanh trang thái (ví dụ 9:40, tín hiệu, wifi)
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "9:40",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Row(
                          children: const [
                            Icon(Icons.signal_cellular_4_bar, size: 20, color: Colors.black),
                            SizedBox(width: 6),
                            Icon(Icons.wifi, size: 20, color: Colors.black),
                            SizedBox(width: 6),
                            Icon(Icons.battery_full, size: 20, color: Colors.black),
                          ],
                        )
                      ],
                    ),
                  ),
                  // Add Photos bar
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    color: Colors.white,
                    child: Row(
                      children: [
                        const Icon(Icons.close),
                        const SizedBox(width: 180),
                        const Text(
                          "Trip detail",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        
                       
                      ],
                    ),
                  ),
                   SizedBox(height: 20),
                   // Hinh anh
                   Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                   child: 
                   Card(
                    child: 
                   Column(
                    children: [
                      Stack(
                       children: [
                        Image.asset("images/detail/danang.png",width:double.infinity, fit: BoxFit.cover,),
                        Positioned( left: 8, bottom: 5,
                          child: Row(
                            children: [
                              Icon(Icons.location_on, color: Colors.white),
                              SizedBox(width: 5,),
                              Text("Danang, Vietnam", style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 15,
                              ),
                              ),
                            ],
                        ),
                        ),
                        // Avatar
                        Positioned(right: 10,
                        bottom: 10,
                          child: Image.asset("images/detail/avatar.png"),),
                       ],
                      ),
                      SizedBox(height: 10,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                               Text(
                            "Date",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,

                            ),
                          ),
                          SizedBox(width: 200,),
                          Text("Feb 2, 2020",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.8),
                            fontSize: 17,
                          ),)

                            ],
                          ),
                      ),
                      // Thoi gian
                       SizedBox(height: 10,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                               Text(
                            "Time",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,

                            ),
                          ),
                          SizedBox(width: 200,),
                          Text("8:00 AM - 10:00 AM",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.8),
                            fontSize: 17,
                          ),)

                            ],
                          ),
                      ),
                      // Guide
                       SizedBox(height: 10,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                               Text(
                            "Guide",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,

                            ),
                          ),
                          SizedBox(width: 195,),
                          Text("Emmy",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 86, 227, 213),
                            fontSize: 17,
                          ),)

                            ],
                          ),
                      ),
                      // Number
                       SizedBox(height: 10,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                               Text(
                            "Number of Travelers",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,

                            ),
                          ),
                          SizedBox(width: 80,),
                          Text("2",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.8),
                            fontSize: 17,
                          ),)

                            ],
                          ),
                      ),
                      // Atrraction
                      SizedBox(height: 10,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child:
                      Column(
                            children: [
                              Row(
                                children: [
                               Text(
                            "Atractions",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,),
                          ),
                          ],
                              ),
                              SizedBox(height: 10,),
                             // buton
                             Container(
                              padding: EdgeInsets.symmetric(horizontal: 15.0),
                             child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Chip(
                                  avatar: Icon(
                                    Icons.location_on,
                                    color: const Color.fromARGB(255, 79, 212, 199),
                                  ),
                                  label: Text('Ho Guom'),
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0), 
                                    side: BorderSide(color: Colors.transparent), 
                                  ),
                                  elevation: 2.0, 
                                ),
                                SizedBox(width: 20,),
                                Chip(
                                  avatar: Icon(
                                    Icons.location_on,
                                    color: const Color.fromARGB(255, 79, 212, 199),
                                  ),
                                  label: Text('Ho Hoan Kiem'),
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0), 
                                    side: BorderSide(color: Colors.transparent), 
                                  ),
                                  elevation: 2.0, 
                                ),
                                    ],
                             ),
                             ),
                             SizedBox(height: 10,),
                              Container(
                              padding: EdgeInsets.symmetric(horizontal: 15.0),
                             child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Chip(
                                  avatar: Icon(
                                    Icons.location_on,
                                    color: const Color.fromARGB(255, 79, 212, 199),
                                  ),
                                  label: Text('Pho 12 Pho Kim Ma'),
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0), 
                                    side: BorderSide(color: Colors.transparent), 
                                  ),
                                  elevation: 2.0, 
                                ),
                              ],
                             ),
                              ),
                              SizedBox(height: 20,),
                               Container(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                               Text(
                                "Free",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,

                                ),
                              ),
                              SizedBox(width: 200,),
                              Row(
                                children: [
                                  Icon(Icons.attach_money, color: const Color.fromARGB(255, 84, 234, 219),),
                                  Text("20.00",
                              style: TextStyle(
                                color:  const Color.fromARGB(255, 84, 234, 219),
                                fontSize: 20,
                              ),)
                                ],
                              ),],
                          ),
                               ), 
                            ],
                          ),
                      ),
                       SizedBox(height: 20,),
                   Container(
                   padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Chip(
                            
                           avatar: Icon(
                              Icons.check,
                              color: Colors.black.withOpacity(0.7),),
                              label: Text('Mark Finished', style: TextStyle(
                                fontSize: 20,
                              ),),
                                  backgroundColor: Colors.white,
                                  
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0), 
                                    side: BorderSide(color: Colors.transparent), 
                                  ),
                                  elevation: 2.0, 
                                ),
                        ],
                      ),
                    
                   ),
                    ],
                   )
                   ),
                   ),
                   SizedBox(height: 200,),
                   Center(
                    child: 
                    Image.asset("images/chat/thanhngang.png"),
                   )
                  
                ],
              ),
           ),
        
            
          ],
        ),
      ),
      
    );
  }
}


