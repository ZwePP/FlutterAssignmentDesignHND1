import 'package:flutter/material.dart';
enum genderTypeEnum {Male, Female}

void main(){
  runApp(
      MaterialApp(
        home: StudentRegister(),
      )
  );
}

class StudentRegister extends StatefulWidget{
  @override
  State<StudentRegister> createState() => _StudentRegisterState();
}

class _StudentRegisterState extends State<StudentRegister> {
  genderTypeEnum? _genderTypeEnum;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.school,
            size: 100,
            color: Colors.deepPurpleAccent,),
            SizedBox(height: 20,),
            Text("STUDENT REGISTER",
              style: TextStyle(
                fontSize: 35,
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10,),
            Text("Enter student information",
            style: TextStyle(
              fontSize: 15,
            ),),
            SizedBox(height: 20,),

            //Name field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white38),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.account_circle_outlined, color: Colors.purple,),
                        border: InputBorder.none,
                        hintText: 'Student Name',
                        labelText: "Name", labelStyle: TextStyle(
                        color: Colors.grey,),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),

            //Batch Field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white38),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.book, color: Colors.purple,),
                        border: InputBorder.none,
                        hintText: 'Student Batch',
                        labelText: "Batch", labelStyle: TextStyle(
                        color: Colors.grey,),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),

            //Id field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white38),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.perm_identity, color: Colors.purple,),
                        border: InputBorder.none,
                        hintText: 'Student ID',
                        labelText: "ID", labelStyle: TextStyle(
                        color: Colors.grey,),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),

            //gender radio
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Gender:", style: TextStyle(fontSize: 20),),
                  Radio(value: genderTypeEnum.Male, groupValue: _genderTypeEnum,
                      fillColor: MaterialStateColor.resolveWith((states) => Colors.purple),
                      onChanged: (val){
                        setState((){
                          _genderTypeEnum = val;
                        });
                      }),
                  Text("Male"),
                  Radio(value: genderTypeEnum.Female, groupValue: _genderTypeEnum,
                      fillColor: MaterialStateColor.resolveWith((states) => Colors.purple),
                      onChanged: (val){
                        setState((){
                          _genderTypeEnum = val;
                        });
                      }),
                  Text("Female"),
                ],
              ),
            ),
            SizedBox(height: 15,),

            //Academic field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.white38),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.menu_book, color: Colors.purple,),
                        border: InputBorder.none,
                        hintText: '2022',
                        labelText: "Academic Year", labelStyle: TextStyle(
                        color: Colors.grey,),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Cancel"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                SizedBox(
                  width: 100,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Register"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                    ),
                  ),
                ),
              ],
            )



          ],
        ),
      ),
    );
  }
}

