import 'package:flutter/material.dart';

class CreateEvent extends StatefulWidget {
  const CreateEvent({super.key});

  @override
  State<CreateEvent> createState() => _CreateEventState();
}

class _CreateEventState extends State<CreateEvent> {
  final TextEditingController _tEC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        title: const Text("New Event!"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(147, 3, 15, 118),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(47),
                color: const Color.fromARGB(147, 3, 15, 118),
              ),
              child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 8.0),
                  child: TextField(
                    keyboardType: TextInputType.multiline,
                    minLines: 2,
                    maxLines: 5,
                    style: TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      icon: Icon(
                        Icons.calendar_month,
                        color: Colors.white,
                      ),
                      labelText: 'Event',
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                    controller: _tEC,
                  ))),
          const SizedBox(height: 10),
          Container(child: Builder(builder: ((context) {
            return ElevatedButton(
              onPressed: () {
                String newEventText = _tEC.text;
                Navigator.of(context).pop(newEventText);
              },
              child: const Text("Add Event"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 154.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  )),
            );
          })))
        ],
      ),
    );
  }
}
