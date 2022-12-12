import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Contactus extends StatefulWidget {
  const Contactus({super.key});

  @override
  State<Contactus> createState() => _ContactusState();
}

const nameController = 'atulpokharel10@gmail.com';
const subjectController = 'atulpokharel10@gmail.com';
const emailController = 'atulpokharel10@gmail.com';
const messageController = 'atulpokharel10@gmail.com';

Future<int> sentEmail() async {
  final url = Uri.parse("https://api.emailjs.com/api/v1.0/email/send");
  const serviceId = "service_hqry3xl";
  const templateId = "template_5d13pve";
  const userId = "NG2GcfwLFDNzy5EKe";

  final response = await http.post(
    url,
    headers: {
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: json.encode({
      "service_id": serviceId,
      "template_id": templateId,
      "user_id": userId,
      "template_params": {
        "name": nameController,
        "subject": subjectController,
        "user_email": emailController,
        "message": messageController,
      }
    }),
  );
  return response.statusCode;
}

class _ContactusState extends State<Contactus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: (() {
              sentEmail();

              debugPrint(json.encode({
                "template_params": {
                  "name": nameController,
                  "subject": subjectController,
                  "user_email": emailController,
                  "message": messageController,
                }
              }).toString());
            }),
            child: null,
          )
        ],
      ),
    );
    //   body: Padding(
    //     padding: const EdgeInsets.fromLTRB(25, 0, 40, 25),
    //     child: Form(
    //         child: Column(
    //       children: [
    //         TextFormField(
    //           controller: nameController,
    //           decoration: const InputDecoration(
    //             icon: Icon(Icons.account_circle),
    //             hintText: 'Name',
    //             labelText: 'Name',
    //           ),
    //         ),
    //         TextFormField(
    //           controller: subjectController,
    //           decoration: const InputDecoration(
    //             icon: Icon(Icons.subject_rounded),
    //             hintText: 'Subject',
    //             labelText: 'Subject',
    //           ),
    //         ),
    //         TextFormField(
    //           controller: emailController,
    //           decoration: const InputDecoration(
    //             icon: Icon(Icons.email),
    //             hintText: 'email',
    //             labelText: 'email',
    //           ),
    //         ),
    //         TextFormField(
    //           controller: messageController,
    //           decoration: const InputDecoration(
    //             icon: Icon(Icons.message_rounded),
    //             hintText: 'Message',
    //             labelText: 'Message',
    //           ),
    //         ),
    //         ElevatedButton(
    //             onPressed: (() {
    //               sentEmail();
    //               debugPrint(
    //                   "iamrunning $emailController ,$messageController,$nameController,$subjectController");
    //             }),
    //             child: const Text(
    //               "send",
    //               style: TextStyle(fontSize: 20),
    //             )),
    //       ],
    //     )),
    //   ),
    // );
  }
}
