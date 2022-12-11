// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Contactus extends StatefulWidget {
  const Contactus({super.key});

  @override
  State<Contactus> createState() => _ContactusState();
}

final nameController = TextEditingController();
final subjectController = TextEditingController();
final emailController = TextEditingController();
final messageController = TextEditingController();

Future sentEmail() async {
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
        "name": nameController.text,
        "subject": subjectController.text,
        "user_email": emailController.text,
        "message": messageController,
      }
    }),
  );
  return debugPrint("${response.statusCode}");
}

void dispose() {
  nameController.dispose();
  subjectController.dispose();
  emailController.dispose();
  messageController.dispose();
}

class _ContactusState extends State<Contactus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: padding(
      //   Padding: const EdgeInsets.all(8.0),

      body: Column(
        children: [
          Form(
            child: Column(children: [
              Scrollbar(
                child: Column(
                  children: [
                    TextFormField(
                      controller: nameController,
                      decoration: const InputDecoration(
                        errorBorder: null,
                        icon: Icon(Icons.account_circle),
                        hintText: 'Name',
                        labelText: 'Name',
                      ),
                    ),

                    TextFormField(
                      controller: subjectController,
                      decoration: const InputDecoration(
                        icon: Icon(Icons.subject_rounded),
                        hintText: 'Subject',
                        labelText: 'Subject',
                      ),
                    ),

                    TextFormField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        icon: Icon(Icons.email),
                        hintText: 'email',
                        labelText: 'email',
                      ),
                    ),

                    TextFormField(
                      controller: messageController,
                      decoration: const InputDecoration(
                        icon: Icon(Icons.message_rounded),
                        hintText: 'Message',
                        labelText: 'Message',
                      ),
                    ),
                    // const SizedBox(
                    //   height: 15,
                    // ),

                    // ignore: unnecessary_const
                  ],
                  //   ),
                ),
              ),
              ElevatedButton(
                  onPressed: (() {
                    sentEmail();
                  }),
                  child: const Text(
                    "send",
                    style: TextStyle(fontSize: 20),
                  )),
            ]),
          ),
        ],
      ),
      // ),
    );
  }
}
