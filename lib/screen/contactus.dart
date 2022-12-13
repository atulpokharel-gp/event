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
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);
    return AnimatedPadding(
      duration: kThemeAnimationDuration,
      padding: mediaQueryData.viewInsets,
      child: Column(
        children: [
          const Text(
            "contact",
            style: TextStyle(
              color: Colors.red,
              fontSize: 20,
            ),
          ),
          Form(
            key: _formKey,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    icon: Icon(Icons.subject_rounded),
                    hintText: 'नाम',
                    labelText: 'नाम',
                  ),
                  // The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Name';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.subject_rounded),
                    hintText: 'ठेगाना',
                    labelText: 'ठेगाना',
                  ),
                  // The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter email';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.subject_rounded),
                    hintText: 'इमेल',
                    labelText: 'इमेल',
                  ),
                  // The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Message';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.subject_rounded),
                    hintText: 'फोन',
                    labelText: 'फोन',
                  ),
                  // The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Message';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.subject_rounded),
                    hintText: 'सन्देश',
                    labelText: 'सन्देश',
                  ),
                  // The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Message';
                    }
                    return null;
                  },
                ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(vertical: 1.0),
                //   child:
                ElevatedButton(
                  onPressed: () {
                    // Validate returns true if the form is valid, or false otherwise.
                    if (_formKey.currentState!.validate()) {
                      sentEmail();
                      // If the form is valid, display a snackbar. In the real world,
                      // you'd often call a server or save the information in a database.
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                    }
                  },
                  child: const Text('पठाउनुस '),
                ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



































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
  

