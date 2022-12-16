import 'package:event_scheduler_app/event.dart';
import 'package:flutter/material.dart';

// import 'package:fluttertoast/fluttertoast.dart';
void main() {
  runApp(const EventApp());
}
// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override  // Overrides the Build Function of its ancestor
//   Widget build(BuildContext context) {
//     return Scaffold(
//     appBar: AppBar(
//       title: const Text('My 2nd App!'),
//       centerTitle: true,
//       backgroundColor: Colors.black,
//     ),
//     // body: Container(
//     //   // child: Text(
//     //   //   'The Scaffold Widget',
//     //   //   style: TextStyle(
//     //   //     fontSize: 28,
//     //   //     fontWeight: FontWeight.bold,
//     //   //   ),
//     //   // ),
//     //   // child: Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVOOemICLyJ7bMIercFrmDPuQ08pdjvRnZdA&usqp=CAU')),
//     //   // child: ElevatedButton(onPressed: ()=>{}, child: Text('Elevated Button')),
//     //   child: Center(
//     //     child: TextButton(
//     //       onPressed: () {
//     //         SnackBar mySnackBar = const SnackBar(content: Text("Sadfth0"),);
//     //         ScaffoldMessenger.of(context).showSnackBar(mySnackBar);
//     //     },
//     //     child: const Text('SnackBar',style: TextStyle(fontSize: 20.0),),)),
//     // ),
//     body: Builder(builder: (context){
//       return Container(
//     //   // child: Text(
//     //   //   'The Scaffold Widget',
//     //   //   style: TextStyle(
//     //   //     fontSize: 28,
//     //   //     fontWeight: FontWeight.bold,
//     //   //   ),
//     //   // ),
//     //   // child: Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVOOemICLyJ7bMIercFrmDPuQ08pdjvRnZdA&usqp=CAU')),
//     //   // child: ElevatedButton(onPressed: ()=>{}, child: Text('Elevated Button')),
//       child: Center(
//         child: TextButton(
//           onPressed: () {
//             SnackBar mySnackBar = const SnackBar(content: Text("Sadfth0"),);
//             ScaffoldMessenger.of(context).showSnackBar(mySnackBar);
//         },
//         child: const Text('SnackBar',style: TextStyle(fontSize: 20.0),),)),
//     );
//     }),
//     floatingActionButton: FloatingActionButton(
//       child: const Text('Click Me!'),
//       onPressed: () {},
//     ),
//     bottomNavigationBar: BottomNavigationBar(
//       backgroundColor: const Color.fromARGB(255, 85, 10, 99),
//       selectedItemColor: Colors.white,
//       unselectedItemColor: Colors.white60,
//       items: const [
//       BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//       BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings')
//     ]),
//   );
//   }
// }

// Widget getListView() {
//   var listView = ListView(
//     children: const [
//       ListTile(
//         leading: Icon(Icons.landscape),
//         title: Text('Landscape'),
//         subtitle: Text("Nice View !"),
//         trailing: Icon(Icons.beach_access),
//       ),
//       ListTile(
//         leading: Icon(Icons.laptop_chromebook),
//         title: Text('Laptop'),
//         subtitle: Text("Nice Laptop !"),
//         trailing: Icon(Icons.window),
//       ),
//     ],
//   );
//   return listView;
// }

class EventApp extends StatefulWidget {
  const EventApp({super.key});

  @override
  State<EventApp> createState() => _EventAppState();
}

class _EventAppState extends State<EventApp> {
  final List<String> _lst = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.deepPurpleAccent,
          appBar: AppBar(
            title: const Text("Event Scheduler"),
            centerTitle: true,
            backgroundColor: const Color.fromARGB(147, 3, 15, 118),
          ),
          body: ListView.separated(
            itemCount: _lst.length,
            itemBuilder: ((context, ind) => Container(
                  width: 15.0,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Text(
                    _lst[ind].toString(),
                    style: const TextStyle(
                      fontSize: 17,
                    ),
                  ),
                )),
            separatorBuilder: (_, __) => const Divider(),
          ),
          floatingActionButton: Builder(
            builder: (context) {
              return FloatingActionButton(
                backgroundColor: Colors.indigo[700],
                onPressed: () async {
                  String newText = await Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => const CreateEvent()));
                  setState(() {
                    _lst.add(newText);
                  });
                },
                child: const Icon(Icons.add),
              );
            },
          )),
    );
  }
}
