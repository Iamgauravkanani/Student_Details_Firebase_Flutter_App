import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:student_data_firebase/utils/Helpers/Cloud_FireStore_Helper/firestore_helper.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  TextEditingController nameCon = TextEditingController();
  TextEditingController courseCon = TextEditingController();
  TextEditingController idCon = TextEditingController();

  String? name;
  String? course;
  String? id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student Data"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              controller: idCon,
              onChanged: (val) {
                id = val;
              },
              decoration: InputDecoration(
                hintText: "Enter GRID",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: nameCon,
              onChanged: (val) {
                name = val;
              },
              decoration: InputDecoration(
                hintText: "Enter name",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: courseCon,
              onChanged: (val) {
                course = val;
              },
              decoration: InputDecoration(
                hintText: "Enter course",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                CloudFireStoreHelper.cloudFireStoreHelper.addStudent(data: {
                  "grid": id,
                  "name": name,
                  "course": course,
                });
                log("==========================================================");
                log("$name");
                log("$id");
                log("$course");
                log("==========================================================");
                nameCon.clear();
                idCon.clear();
                courseCon.clear();
              },
              child: Text("Add Student"),
            ),
            Expanded(
                child: StreamBuilder(
              stream: CloudFireStoreHelper.cloudFireStoreHelper.fetchStudent(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Center(
                    child: Text("${snapshot.error}"),
                  );
                } else if (snapshot.hasData) {
                  QuerySnapshot<Map<String, dynamic>>? data = snapshot.data;
                  List<QueryDocumentSnapshot<Map<String, dynamic>>>?
                      StudentData = data?.docs;

                  return ListView.builder(
                      itemCount: StudentData?.length,
                      itemBuilder: (ctx, i) {
                        return Card(
                          child: ListTile(
                            title: Text("${StudentData?[i]["name"]}"),
                            subtitle: Text("${StudentData?[i]["course"]}"),
                            leading: Text("${StudentData?[i]["grid"]}"),
                          ),
                        );
                      });
                }
                return Center(child: CircularProgressIndicator());
              },
            )),
          ],
        ),
      ),
    );
  }
}
