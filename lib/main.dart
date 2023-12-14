import 'dart:html';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:phan_anh_do_thi_3/repository/authentication/authentication_repository.dart';
import 'package:phan_anh_do_thi_3/screens/login/login.dart';
import 'package:phan_anh_do_thi_3/screens/signup/signup.dart';
import 'firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((value) => Get.put(AuthenticationRepository()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.blue,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Login(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   late String studentName, studentID, studyProgramID;
//   late double studentGPA;
//
//   getStudentName(name) {
//     this.studentName = name;
//   }
//   getStudentID(id) {
//     this.studentID = id;
//   }
//   getStudentProgramID(programID) {
//     this.studyProgramID = programID;
//   }
//   getStudentGPA(gpa) {
//     this.studentGPA = double.parse(gpa);
//   }
//
//   createData() {
//     print("created");
//
//     DocumentReference documentReference =
//         FirebaseFirestore.instance.collection("MyStudentTest").doc(studentName);
//
//     // create Map
//     Map<String, dynamic> students = {
//       "studentName": studentName,
//       "studentID": studentID,
//       "studyProgramID": studyProgramID,
//       "studentGPA": studentGPA
//     };
//
//     documentReference.set(students).whenComplete(() {
//       print("$studentName created");
//     });
//   }
//   readData() {
//     print("read");
//
//     DocumentReference documentReference =
//         FirebaseFirestore.instance.collection("MyStudentTest").doc(studentName);
//
//     documentReference.get().then((datasnapshot) => {
//       // print(datasnapshot.data(["studentName"]));
//       // print (datasnapshot.data["studentID"]);
//       // print (datasnapshot.data["studyProgramID"]);
//       // print (datasnapshot.data["studentGPA"]);
//
//   });
//   }
//   updateData() {
//     print("updated");
//
//     DocumentReference documentReference =
//     FirebaseFirestore.instance.collection("MyStudentTest").doc(studentName);
//
//     // create Map
//     Map<String, dynamic> students = {
//       "studentName": studentName,
//       "studentID": studentID,
//       "studyProgramID": studyProgramID,
//       "studentGPA": studentGPA
//     };
//
//     documentReference.set(students).whenComplete(() {
//       print("$studentName updated");
//     });
//   }
//   deleteData() {
//     print("deleted");
//
//     DocumentReference documentReference =
//         FirebaseFirestore.instance.collection("MyStudentTest").doc(studentName);
//
//     documentReference.delete().whenComplete(() {
//       print("$studentName deleted");
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("My flutter firebase test"),
//       ),
//       body: Column(
//         children: <Widget>[
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextFormField(
//               onChanged: (String name) {
//                 getStudentName(name);
//               },
//               decoration: InputDecoration(
//                 labelText: "Name",
//                 fillColor: Colors.white,
//                 focusedBorder: OutlineInputBorder(
//                   borderSide: BorderSide(
//                     color: Colors.blue,
//                     width: 2.0
//                   )
//                 )
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextFormField(
//               onChanged: (String id) {
//                 getStudentID(id);
//               },
//               decoration: InputDecoration(
//                   labelText: "Student ID",
//                   fillColor: Colors.white,
//                   focusedBorder: OutlineInputBorder(
//                       borderSide: BorderSide(
//                           color: Colors.blue,
//                           width: 2.0
//                       )
//                   )
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextFormField(
//               onChanged: (String programID) {
//                 getStudentProgramID(programID);
//               },
//               decoration: InputDecoration(
//                   labelText: "Study Program ID",
//                   fillColor: Colors.white,
//                   focusedBorder: OutlineInputBorder(
//                       borderSide: BorderSide(
//                           color: Colors.blue,
//                           width: 2.0
//                       )
//                   )
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextFormField(
//               onChanged: (String gpa) {
//                 getStudentGPA(gpa);
//               },
//               decoration: InputDecoration(
//                   labelText: "GPA",
//                   fillColor: Colors.white,
//                   focusedBorder: OutlineInputBorder(
//                       borderSide: BorderSide(
//                           color: Colors.blue,
//                           width: 2.0
//                       )
//                   )
//               ),
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               ElevatedButton(
//                 onPressed: () {
//                   createData();
//                 },
//                 child: Text(
//                   'Create',
//                   style: TextStyle(
//                     fontSize: 15
//                   ),
//                 ),
//               ),
//               ElevatedButton(
//                   onPressed: () {
//                     readData();
//                   },
//                   child: Text(
//                     'Read',
//                     style: TextStyle(
//                         fontSize: 15
//                     ),
//                   )
//               ),
//               ElevatedButton(
//                   onPressed: () {
//                     updateData();
//                   },
//                   child: Text(
//                     'Update',
//                     style: TextStyle(
//                         fontSize: 15
//                     ),
//                   )
//               ),
//               ElevatedButton(
//                   onPressed: () {
//                     deleteData();
//                   },
//                   child: Text(
//                     'Delete',
//                     style: TextStyle(
//                         fontSize: 15
//                     ),
//                   )
//               )
//             ],
//           ),
//           // StreamBuilder(
//           //   stream: FirebaseFirestore.instance.collection("MyStudentTest").snapshots(),
//           //   builder: (context, snapshot) {
//           //     if (snapshot.hasData && snapshot.data != null) {
//           //       return ListView.builder(
//           //         shrinkWrap: true,
//           //         itemCount: snapshot.data?.docs.length,
//           //         itemBuilder: (context, index) {
//           //           DocumentSnapshot documentSnapshot = snapshot.data!.docs[index];
//           //           // Kiểm tra sự tồn tại của trường trước khi truy cập
//           //           String studentName = documentSnapshot["studentName"] ?? "";
//           //           String studentID = documentSnapshot["studentID"] ?? "";
//           //           String studyProgramID = documentSnapshot["studyProgramID"] ?? "";
//           //           String studentGPA = documentSnapshot["studentGPA"]?.toString() ?? "";
//           //
//           //           return Row(
//           //             children: <Widget>[
//           //               Expanded(
//           //                 child: Text(studentName),
//           //               ),
//           //               Expanded(
//           //                 child: Text(studentID),
//           //               ),
//           //               Expanded(
//           //                 child: Text(studyProgramID),
//           //               ),
//           //               Expanded(
//           //                 child: Text(studentGPA),
//           //               ),
//           //             ],
//           //           );
//           //         },
//           //       );
//           //     } else {
//           //       return Text("No data available");
//           //     }
//           //   },
//           // ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               textDirection: TextDirection.ltr,
//               children: [
//                 Expanded(
//                   child: Text("Name"),
//                 ),
//                 Expanded(
//                   child: Text("Student ID"),
//                 ),
//                 Expanded(
//                   child: Text("Program ID"),
//                 ),
//                 Expanded(
//                   child: Text("GPA"),
//                 )
//               ],
//             ),
//           ),
//           StreamBuilder(
//             stream: FirebaseFirestore.instance.collection("MyStudentTest").snapshots(),
//             builder: (context, snapshot) {
//               if (snapshot.hasData) {
//                 return ListView.builder(
//                   shrinkWrap: true,
//                   itemCount: snapshot.data?.docs.length,
//                   itemBuilder: (context, index) {
//                     DocumentSnapshot documentSnapshot = snapshot.data!.docs[index];
//                     return Row(
//                       children: <Widget>[
//                         Expanded(
//                           child: Text(
//                             documentSnapshot["studentName"]
//                           ),
//                         ),
//                         Expanded(
//                           child: Text(
//                               documentSnapshot["studentID"]
//                           ),
//                         ),
//                         Expanded(
//                           child: Text(
//                               documentSnapshot["studyProgramID"]
//                           ),
//                         ),
//                         Expanded(
//                           child: Text(
//                               documentSnapshot["studentGPA"].toString()
//                           ),
//                         )
//                       ],
//                     );
//                   },
//                 );
//               }
//               else {
//                 return Align(
//                   alignment: FractionalOffset.bottomCenter,
//                   child: CircularProgressIndicator(),
//                 );
//               }
//             }
//           )
//         ],
//       ),
//     );
//   }
// }
