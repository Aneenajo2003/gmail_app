import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Myhome(),
    );
  }
}
class Myhome extends StatefulWidget {
  const Myhome({super.key});

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {

  int currentindex=0;
  List<Widget> pages =[
    Allinbox(),
    Primary(),
    Promotions(),
    Social(),
    Important(),
    Sent(),
    Outbox(),
    Draft(),
    Allmail(),
    Spam(),
    Bin(),
    Settings(),
    Help()

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gmail"),
        backgroundColor: Colors.grey,
        actions: [
          CircleAvatar(backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/900px-Cat03.jpg"),)
        ],
      ),
      body: pages[currentindex],
      drawer: Drawer(
        child: ListView(
          children: [
            Text("Gmail"),
            Column(
              children: [
                ListTile(
                  leading: IconButton(onPressed: () {  }, icon: Icon(Icons.collections),),
                  title: Text("All inboxes"),
                  // trailing: Icon(Icons.person),
                  onTap: (){
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Allinbox()),
                  );
                    setState(() {
                      currentindex=1;
                    });
                  },

                ),
                Divider(
                  color: Colors.black,
                )],

            ),
            ListTile(
              leading: IconButton(onPressed: () {  }, icon: Icon(Icons.inbox_rounded),),
              title: Text("Primary"),
              // trailing: Icon(Icons.person),
              onTap: (){

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Primary()),
                );
                setState(() {
                  currentindex=1;
                });
              },
              trailing: Text("  199  "),

            ),
            ListTile(
              leading: IconButton(onPressed: () {  }, icon: Icon(Icons.discount_outlined),),
              title: Text("Promotions"),
              // trailing: Icon(Icons.person),
              onTap: (){

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Promotions()),
                );
                setState(() {
                  currentindex=1;
                });
              },
              trailing: Container(child: Text("  20 new  "),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 0.1,
                  ),
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.cyan,
                ),),
            ),
            ListTile(
              leading: IconButton(onPressed: () {  }, icon: Icon(Icons.person_2_outlined),),
              title: Text("Social"),
              // trailing: Icon(Icons.person),
              onTap: (){

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Social()),
                );
                setState(() {
                  currentindex=1;
                });
              },
              trailing: Container(child: Text("  33 new  "),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.cyan,
                ),),

            ),
            Container(
              height: 60,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Text("All labels"),
              ),
            ),
            ListTile(
              leading: IconButton(onPressed: () {  }, icon: Icon(Icons.label_important_outline),),
              title: Text("Important"),
              // trailing: Icon(Icons.person),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Important()),
                );
                setState(() {
                  currentindex=2;
                });
              },

            ),
            ListTile(
              leading: IconButton(onPressed: () {  }, icon: Icon(Icons.send),),
              title: Text("Sent"),
              // trailing: Icon(Icons.person),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Sent()),
                );
                setState(() {
                  currentindex=3;
                });
              },
            ),
            ListTile(
              leading: IconButton(onPressed: () {  }, icon: Icon(Icons.send_to_mobile),),
              title: Text("Outbox"),
              // trailing: Icon(Icons.person),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Outbox()),
                );
                setState(() {
                  currentindex=4;
                });
              },
            ),
            ListTile(
              leading: IconButton(onPressed: () {  }, icon: Icon(Icons.drafts_outlined),),
              title: Text("Draft"),
              // trailing: Icon(Icons.person),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Draft()),
                );
                setState(() {
                  currentindex=5;
                });
              },
            ),
            ListTile(
              leading: IconButton(onPressed: () {  }, icon: Icon(Icons.all_inbox_rounded),),
              title: Text("All mail"),
              // trailing: Icon(Icons.person),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Allmail()),
                );
                setState(() {
                  currentindex=6;
                });
              },
             trailing: Text("  173  "),
            ),
            ListTile(
              leading: IconButton(onPressed: () {  }, icon: Icon(Icons.error_outline_outlined),),
              title: Text("Spam"),
              // trailing: Icon(Icons.person),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Spam()),
                );
                setState(() {
                  currentindex=7;
                });
              },
            ),
            Column(
              children: [
                ListTile(
                  leading: IconButton(onPressed: () {  }, icon: Icon(Icons.delete_outline_rounded),),
                  title: Text("Bin"),
                  // trailing: Icon(Icons.person),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  Bin()),
                    );
                    setState(() {
                      currentindex=8;
                    });
                  },
                  trailing: Text("  157  "),

                ),
                Divider(
                  color: Colors.black,
                )],
            ),
            ListTile(
              leading: IconButton(onPressed: () {  }, icon: Icon(Icons.settings),),
              title: Text("Settings"),
              // trailing: Icon(Icons.person),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Settings()),
                );
                setState(() {
                  currentindex=9;
                });
              },
            ),
            ListTile(
              leading: IconButton(onPressed: () {  }, icon: Icon(Icons.help),),
              title: Text("Help and feedback"),
              // trailing: Icon(Icons.person),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Help()),
                );
                setState(() {
                  currentindex=7;
                });
              },
            ),
          ],
        ),
      ),

    );
  }
}
class Allinbox extends StatefulWidget {
   Allinbox({super.key});

  @override
  State<Allinbox> createState() => _AllinboxState();
}

class _AllinboxState extends State<Allinbox> {
  bool isScrolled = true;

  get icon => null;
  late ScrollController _scrollController;
  bool _showFabWithLabel = false;


  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
  }
  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }


  void _scrollListener() {
    if (_scrollController.offset >= 200) { // Example threshold for showing/hiding
      setState(() {
        _showFabWithLabel = false;
      });
    } else {
      setState(() {
        _showFabWithLabel = true;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: <Widget>[
          SliverAppBar(
            title: Text('All Inbox'),
            expandedHeight: 50,
            floating: true,
            pinned: true,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              List.generate(
                20,
                    (index) =>  ListTile(
           leading: CircleAvatar(),
           title: Text("Aneena"),
           subtitle: Text("Upload your Cv"),
            trailing: Column(
              children: [
                Text("12 jun"),
                Icon(Icons.star_border_outlined)
              ],
            ),
          ),

              ),
            ),
          ),
        ],
      ),
      floatingActionButton: _showFabWithLabel
          ? FloatingActionButton.extended(
        icon: Icon(Icons.edit),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        onPressed: () {
          // Action when the extended FAB is pressed
        },

        label: Text('Compose'),
      )
          : FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        onPressed: () {
          // Action when the regular FAB is pressed
        },
        child: Icon(Icons.edit),
      ),
    );
  }
}
//       appBar: AppBar(
//         title: Text("All inboxes"),
//
//
//       ),
//         floatingActionButton: FloatingActionButton.extended(
//           icon: Icon(Icons.edit),
//           backgroundColor: Colors.blueAccent,
//           foregroundColor: Colors.white,
//           onPressed: () => {
//             icon: Icon(Icons.edit),
//
//           },
//           isExtended: isScrolled,
//           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
//           label: Text("Compose"),
//
//         ),
//
//       body: ListView(
//         children: [
//
//
//
//           ListTile(
//             leading: CircleAvatar(),
//             title: Text("Ansha"),
//             subtitle: Text("Your email is accepted"),
//             trailing: Column(
//               children: [
//                 Text("12 jun"),
//                 Icon(Icons.star_border_outlined)
//               ],
//             ),
//           ),
//           ListTile(
//             leading: CircleAvatar(),
//             title: Text("Arya"),
//             subtitle: Text("Happy to inform you"),
//             trailing: Column(
//               children: [
//                 Text("12 jun"),
//                 Icon(Icons.star_border_outlined)
//               ],
//             ),
//           ),
//           ListTile(
//             leading: CircleAvatar(),
//             title: Text("Naukri Alerts"),
//             subtitle: Text("Last chance to enrol for a webinar on ResumeBuilding"),
//             trailing: Column(
//               children: [
//                 Text("12 jun"),
//                 Icon(Icons.star_border_outlined)
//               ],
//             ),
//           ),
//           ListTile(
//             leading: CircleAvatar(),
//             title: Text("Linkdien Alerts"),
//             subtitle: Text("Hiring now: “software engineer” at MPC Cloud Consulting Pvt Ltd and more"),
//             trailing: Column(
//               children: [
//                 Text("12 jun"),
//                 Icon(Icons.star_border_outlined)
//               ],
//             ),
//           ),
//           ListTile(
//             leading: CircleAvatar(),
//             title: Text("Interview invitation"),
//             subtitle: Text("ANEENA, (ID:1444)Immediate response required From you | you are eligible with ref ID: KL25TY3"),
//             trailing: Column(
//               children: [
//                 Text("12 jun"),
//                 Icon(Icons.star_border_outlined)
//               ],
//             ),
//           ),
//           ListTile(
//             leading: CircleAvatar(),
//             title: Text("indeed"),
//             subtitle: Text("Apply to jobs at Retail-Outsource, ESPERER MOTORS and Techneurons Consulting Solutions"),
//             trailing: Column(
//               children: [
//                 Text("12 jun"),
//                 Icon(Icons.star_border_outlined),
//
//               ],
//             ),
//
//           ),
//           ListTile(
//             leading: CircleAvatar(),
//             title: Text("Emmanuvel joseph"),
//             subtitle: Text("Upload your Cv"),
//             trailing: Column(
//               children: [
//                 Text("12 jun"),
//                 Icon(Icons.star_border_outlined)
//               ],
//             ),
//           ),
//           ListTile(
//             leading: CircleAvatar(),
//             title: Text("Ansha"),
//             subtitle: Text("Your email is accepted"),
//             trailing: Column(
//               children: [
//                 Text("12 jun"),
//                 Icon(Icons.star_border_outlined)
//               ],
//             ),
//           ),
//           ListTile(
//             leading: CircleAvatar(),
//             title: Text("Arya"),
//             subtitle: Text("Happy to inform you"),
//             trailing: Column(
//               children: [
//                 Text("12 jun"),
//                 Icon(Icons.star_border_outlined)
//               ],
//             ),
//           ),
//           ListTile(
//             leading: CircleAvatar(),
//             title: Text("Naukri Alerts"),
//             subtitle: Text("Last chance to enrol for a webinar on ResumeBuilding"),
//             trailing: Column(
//               children: [
//                 Text("12 jun"),
//                 Icon(Icons.star_border_outlined)
//               ],
//             ),
//           ),
//           ListTile(
//             leading: CircleAvatar(),
//             title: Text("Linkdien Alerts"),
//             subtitle: Text("Hiring now: “software engineer” at MPC Cloud Consulting Pvt Ltd and more"),
//             trailing: Column(
//               children: [
//                 Text("12 jun"),
//                 Icon(Icons.star_border_outlined)
//               ],
//             ),
//           ),
//           ListTile(
//             leading: CircleAvatar(),
//             title: Text("Interview invitation"),
//             subtitle: Text("ANEENA, (ID:1444)Immediate response required From you | you are eligible with ref ID: KL25TY3"),
//             trailing: Column(
//               children: [
//                 Text("12 jun"),
//                 Icon(Icons.star_border_outlined)
//               ],
//             ),
//           ),
//           ListTile(
//             leading: CircleAvatar(),
//             title: Text("indeed"),
//             subtitle: Text("Apply to jobs at Retail-Outsource, ESPERER MOTORS and Techneurons Consulting Solutions"),
//             trailing: Column(
//               children: [
//                 Text("12 jun"),
//                 Icon(Icons.star_border_outlined),
//
//               ],
//             ),
//
//           ),
//           ListTile(
//             leading: CircleAvatar(),
//             title: Text("Start Daily"),
//             subtitle: Text("'Even If 0.001% Negligence...': Supreme Court Slams Exam Body NTA Over NEET Row"),
//             trailing: Column(
//               children: [
//                 Text("12 jun"),
//                 Icon(Icons.star_border_outlined)
//               ],
//             ),
//           ),
//           ListTile(
//             leading: CircleAvatar(),
//             title: Text("Infosys Interview"),
//             subtitle: Text("“Congrats ANEENA, [INFOSYS INTERVIEW] waiting for you: key to [YOUR] success”"),
//             trailing: Column(
//               children: [
//                 Text("12 jun"),
//                 Icon(Icons.star_border_outlined)
//               ],
//             ),
//           ),
//           ListTile(
//             leading: CircleAvatar(),
//             title: Text("Linkdln"),
//             subtitle: Text("Software Developer -Fresher job at CryptoXpress: Actively recruiting"),
//             trailing: Column(
//               children: [
//                 Text("12 jun"),
//                 Icon(Icons.star_border_outlined)
//               ],
//             ),
//           ),ListTile(
//             leading: CircleAvatar(),
//             title: Text("Naukri Alerts"),
//             subtitle: Text("Last chance to enrol for a webinar on ResumeBuilding"),
//             trailing: Column(
//               children: [
//                 Text("12 jun"),
//                 Icon(Icons.star_border_outlined)
//               ],
//             ),
//           ),ListTile(
//             leading: CircleAvatar(),
//             title: Text("MyGlamm"),
//             subtitle: Text("Stack your way to perfect lips 💋"),
//             trailing: Column(
//               children: [
//                 Text("12 jun"),
//                 Icon(Icons.star_border_outlined)
//               ],
//             ),
//           ),ListTile(
//             leading: CircleAvatar(),
//             title: Text("Canva"),
//             subtitle: Text("Score big, this cricket season, with Canva"),
//             trailing: Column(
//               children: [
//                 Text("12 jun"),
//                 Icon(Icons.star_border_outlined)
//               ],
//             ),
//           ),ListTile(
//             leading: CircleAvatar(),
//             title: Text("indeed"),
//             subtitle: Text("Apply to jobs at Retail-Outsource, ESPERER MOTORS and Techneurons Consulting Solutions"),
//             trailing: Column(
//               children: [
//                 Text("12 jun"),
//                 Icon(Icons.star_border_outlined),
//
//               ],
//             ),
//
//           ),
//           ListTile(
//             leading: CircleAvatar(),
//             title: Text("Linkdln"),
//             subtitle: Text("Kavya Boddu shared a post: Java…"),
//             trailing: Column(
//               children: [
//                 Text("12 jun"),
//                 Icon(Icons.star_border_outlined)
//               ],
//             ),
//           ),
//           ListTile(
//             leading: CircleAvatar(),
//             title: Text("Facebook friend suggestions"),
//             subtitle: Text("👤 Koi Mil Gaya is a new friend suggestion for you"),
//             trailing: Column(
//               children: [
//                 Text("12 jun"),
//                 Icon(Icons.star_border_outlined)
//               ],
//             ),
//           ),
//           ListTile(
//             leading: CircleAvatar(),
//             title: Text("Linkdln"),
//             subtitle: Text("Software Developer -Fresher job at CryptoXpress: Actively recruiting"),
//             trailing: Column(
//               children: [
//                 Text("12 jun"),
//                 Icon(Icons.star_border_outlined)
//               ],
//             ),
//           ),ListTile(
//             leading: CircleAvatar(),
//             title: Text("Naukri Alerts"),
//             subtitle: Text("Last chance to enrol for a webinar on ResumeBuilding"),
//             trailing: Column(
//               children: [
//                 Text("12 jun"),
//                 Icon(Icons.star_border_outlined)
//               ],
//             ),
//           ),ListTile(
//             leading: CircleAvatar(),
//             title: Text("Linkdien Alerts"),
//             subtitle: Text("Hiring now: “software engineer” at MPC Cloud Consulting Pvt Ltd and more"),
//             trailing: Column(
//               children: [
//                 Text("12 jun"),
//                 Icon(Icons.star_border_outlined)
//               ],
//             ),
//           ),ListTile(
//             leading: CircleAvatar(),
//             title: Text("Interview invitation"),
//             subtitle: Text("ANEENA, (ID:1444)Immediate response required From you | you are eligible with ref ID: KL25TY3"),
//             trailing: Column(
//               children: [
//                 Text("12 jun"),
//                 Icon(Icons.star_border_outlined)
//               ],
//             ),
//           ),ListTile(
//             leading: CircleAvatar(),
//             title: Text("indeed"),
//             subtitle: Text("Apply to jobs at Retail-Outsource, ESPERER MOTORS and Techneurons Consulting Solutions"),
//             trailing: Column(
//               children: [
//                 Text("12 jun"),
//                 Icon(Icons.star_border_outlined),
//
//               ],
//             ),
//
//           ),
//           ListTile(
//             leading: CircleAvatar(),
//             title: Text("TO:	unsub-6a4c5937.013y3.s1ozul1u34ti@bnc3.mailjet.com"),
//             subtitle: Text("This message was automatically generated by Gmail."),
//             trailing: Column(
//               children: [
//                 Text("12 jun"),
//                 Icon(Icons.star_border_outlined)
//               ],
//             ),
//           ),
//           ListTile(
//             leading: CircleAvatar(),
//             title: Text("TO:	Vishnu.kn"),
//             subtitle: Text("Resume for python developer"),
//             trailing: Column(
//               children: [
//                 Text("12 jun"),
//                 Icon(Icons.star_border_outlined)
//               ],
//             ),
//           ),
//           ListTile(
//             leading: CircleAvatar(),
//             title: Text("TO:	hr"),
//             subtitle: Text("Resume for interview"),
//             trailing: Column(
//               children: [
//                 Text("12 jun"),
//                 Icon(Icons.star_border_outlined)
//               ],
//             ),
//           ),
//
//
//
//
//         ],
//       )
//
//     );
//   }
//
//
// }
class Primary extends StatelessWidget {
   Primary({super.key});

  get icon => null;






  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("Gmail"),
      backgroundColor: Colors.grey,
      actions: [
        CircleAvatar(backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/900px-Cat03.jpg"),)
      ],
    ),
        floatingActionButton: FloatingActionButton.extended(
          icon: Icon(Icons.edit),
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
          onPressed: () => {
            icon: Icon(Icons.edit),

          }, label: Text("Compose"),

        ),


        body: ListView(
          children: [


            Text("Primary"),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Emmanuvel joseph"),
              subtitle: Text("Upload your Cv"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Ansha"),
              subtitle: Text("Your email is accepted"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Arya"),
              subtitle: Text("Happy to inform you"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Naukri Alerts"),
              subtitle: Text("Last chance to enrol for a webinar on ResumeBuilding"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Linkdien Alerts"),
              subtitle: Text("Hiring now: “software engineer” at MPC Cloud Consulting Pvt Ltd and more"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Interview invitation"),
              subtitle: Text("ANEENA, (ID:1444)Immediate response required From you | you are eligible with ref ID: KL25TY3"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("indeed"),
              subtitle: Text("Apply to jobs at Retail-Outsource, ESPERER MOTORS and Techneurons Consulting Solutions"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined),

                ],
              ),

            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Emmanuvel joseph"),
              subtitle: Text("Upload your Cv"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Ansha"),
              subtitle: Text("Your email is accepted"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Arya"),
              subtitle: Text("Happy to inform you"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Naukri Alerts"),
              subtitle: Text("Last chance to enrol for a webinar on ResumeBuilding"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Linkdien Alerts"),
              subtitle: Text("Hiring now: “software engineer” at MPC Cloud Consulting Pvt Ltd and more"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Interview invitation"),
              subtitle: Text("ANEENA, (ID:1444)Immediate response required From you | you are eligible with ref ID: KL25TY3"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("indeed"),
              subtitle: Text("Apply to jobs at Retail-Outsource, ESPERER MOTORS and Techneurons Consulting Solutions"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined),

                ],
              ),

            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Emmanuvel joseph"),
              subtitle: Text("Upload your Cv"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Ansha"),
              subtitle: Text("Your email is accepted"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Arya"),
              subtitle: Text("Happy to inform you"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Naukri Alerts"),
              subtitle: Text("Last chance to enrol for a webinar on ResumeBuilding"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Linkdien Alerts"),
              subtitle: Text("Hiring now: “software engineer” at MPC Cloud Consulting Pvt Ltd and more"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Interview invitation"),
              subtitle: Text("ANEENA, (ID:1444)Immediate response required From you | you are eligible with ref ID: KL25TY3"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("indeed"),
              subtitle: Text("Apply to jobs at Retail-Outsource, ESPERER MOTORS and Techneurons Consulting Solutions"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined),

                ],
              ),

            ),




          ],
        ),

    );
  }
}

void setState(Null Function() param0) {
}

class Promotions extends StatelessWidget {
  const Promotions({super.key});

  get icon => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Gmail"),
          backgroundColor: Colors.grey,
          actions: [
            CircleAvatar(backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/900px-Cat03.jpg"),)
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          icon: Icon(Icons.edit),
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
          onPressed: () => {
            icon: Icon(Icons.edit),

          }, label: Text("Compose"),

        ),
        body: ListView(
          children: [
            Text("Promotions"),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Start Daily"),
              subtitle: Text("'Even If 0.001% Negligence...': Supreme Court Slams Exam Body NTA Over NEET Row"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Infosys Interview"),
              subtitle: Text("“Congrats ANEENA, [INFOSYS INTERVIEW] waiting for you: key to [YOUR] success”"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Linkdln"),
              subtitle: Text("Software Developer -Fresher job at CryptoXpress: Actively recruiting"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),ListTile(
              leading: CircleAvatar(),
              title: Text("Naukri Alerts"),
              subtitle: Text("Last chance to enrol for a webinar on ResumeBuilding"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),ListTile(
              leading: CircleAvatar(),
              title: Text("MyGlamm"),
              subtitle: Text("Stack your way to perfect lips 💋"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),ListTile(
              leading: CircleAvatar(),
              title: Text("Canva"),
              subtitle: Text("Score big, this cricket season, with Canva"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),ListTile(
              leading: CircleAvatar(),
              title: Text("indeed"),
              subtitle: Text("Apply to jobs at Retail-Outsource, ESPERER MOTORS and Techneurons Consulting Solutions"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined),

                ],
              ),

            ),




          ],
        )
    );
  }
}



class Social extends StatelessWidget {
  const Social({super.key});

  get icon => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Gmail"),
          backgroundColor: Colors.grey,
          actions: [
            CircleAvatar(backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/900px-Cat03.jpg"),)
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          icon: Icon(Icons.edit),
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
          onPressed: () => {
            icon: Icon(Icons.edit),

          }, label: Text("Compose"),

        ),
        body: ListView(
          children: [
            Text("Social"),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Linkdln"),
              subtitle: Text("Kavya Boddu shared a post: Java…"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Facebook friend suggestions"),
              subtitle: Text("👤 Koi Mil Gaya is a new friend suggestion for you"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Linkdln"),
              subtitle: Text("Software Developer -Fresher job at CryptoXpress: Actively recruiting"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),ListTile(
              leading: CircleAvatar(),
              title: Text("Naukri Alerts"),
              subtitle: Text("Last chance to enrol for a webinar on ResumeBuilding"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),ListTile(
              leading: CircleAvatar(),
              title: Text("Linkdien Alerts"),
              subtitle: Text("Hiring now: “software engineer” at MPC Cloud Consulting Pvt Ltd and more"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),ListTile(
              leading: CircleAvatar(),
              title: Text("Interview invitation"),
              subtitle: Text("ANEENA, (ID:1444)Immediate response required From you | you are eligible with ref ID: KL25TY3"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),ListTile(
              leading: CircleAvatar(),
              title: Text("indeed"),
              subtitle: Text("Apply to jobs at Retail-Outsource, ESPERER MOTORS and Techneurons Consulting Solutions"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined),

                ],
              ),

            ),




          ],
        )
    );
  }
}


class Important extends StatelessWidget {
  const Important({super.key});

  get icon => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Gmail"),
          backgroundColor: Colors.grey,
          actions: [
            CircleAvatar(backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/900px-Cat03.jpg"),)
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          icon: Icon(Icons.edit),
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
          onPressed: () => {
            icon: Icon(Icons.edit),

          }, label: Text("Compose"),

        ),
        body: ListView(
          children: [
            Text("Important"),
            ListTile(
              leading: CircleAvatar(),
              title: Text("UTIITSL e-PAN"),
              subtitle: Text("[WARNING: MESSAGE ENCRYPTED]Mesg from UTIITSL: Your PAN is allotted ! Your e-PAN Card for Application Coupon number:- A093781862"),
              trailing: Text("21 jan"),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("My Kaspersky "),
              subtitle: Text("🔑 Verify your email address"),
              trailing: Text("21 jan"),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Careers RelianceRetail"),
              subtitle: Text("Acknowledgement of Registration"),
              trailing: Text("21 jan"),
            ),ListTile(
              leading: CircleAvatar(),
              title: Text("career reckonsys"),
              subtitle: Text("interview questions"),
              trailing: Text("21 jan"),
            ),ListTile(
              leading: CircleAvatar(),
              title: Text("Oust App"),
              subtitle: Text("Customer Service in Fashion & Lifestyle successfully completed "),
              trailing: Text("21 jan"),
            ),



          ],
        )
    );
  }
}
class Sent extends StatelessWidget {
  const Sent({super.key});

  get icon => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gmail"),
        backgroundColor: Colors.grey,
        actions: [
          CircleAvatar(backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/900px-Cat03.jpg"),)
        ],
      ),
        floatingActionButton: FloatingActionButton.extended(
          icon: Icon(Icons.edit),
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
          onPressed: () => {
            icon: Icon(Icons.edit),

          }, label: Text("Compose"),

        ),
      body: ListView(
          children: [
          Text("Sent"),
      ListTile(
        leading: CircleAvatar(),
        title: Text("TO:	unsub-6a4c5937.013y3.s1ozul1u34ti@bnc3.mailjet.com"),
        subtitle: Text("This message was automatically generated by Gmail."),
        trailing: Column(
          children: [
            Text("12 jun"),
            Icon(Icons.star_border_outlined)
          ],
        ),
      ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("TO:	Vishnu.kn"),
              subtitle: Text("Resume for python developer"),
              trailing: Column(
              children: [
                Text("12 jun"),
                Icon(Icons.star_border_outlined)
              ],
            ),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("TO:	hr"),
              subtitle: Text("Resume for interview"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),
      ]
      )
    );
  }
}


class Outbox extends StatelessWidget {
  const Outbox({super.key});

  get icon => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gmail"),
        backgroundColor: Colors.grey,
        actions: [
          CircleAvatar(backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/900px-Cat03.jpg"),)
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.edit),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        onPressed: () => {
          icon: Icon(Icons.edit),

        }, label: Text("Compose"),

      ),
      body:
          Positioned(
            top: 500,
            child:
            Center(
                child: Text("Nothing in Outbox.......")),
          ),


    );
  }
}


class Draft extends StatelessWidget {
  const Draft({super.key});

  get icon => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gmail"),
        backgroundColor: Colors.grey,
        actions: [
          CircleAvatar(backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/900px-Cat03.jpg"),)
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.edit),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        onPressed: () => {
          icon: Icon(Icons.edit),

        }, label: Text("Compose"),

      ),


    body:
      Center(child: Text("Nothing in Draft"))


    );
  }
}


class Allmail extends StatelessWidget {
  const Allmail({super.key});

  get icon => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("All mail"),


        ),
        floatingActionButton: FloatingActionButton.extended(
          icon: Icon(Icons.edit),
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
          onPressed: () => {
            icon: Icon(Icons.edit),

          }, label: Text("Compose"),

        ),
        body: ListView(
          children: [

            
            ListTile(
              leading: CircleAvatar(),
              title: Text("Ansha"),
              subtitle: Text("Your email is accepted"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Arya"),
              subtitle: Text("Happy to inform you"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),ListTile(
              leading: CircleAvatar(),
              title: Text("Naukri Alerts"),
              subtitle: Text("Last chance to enrol for a webinar on ResumeBuilding"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),ListTile(
              leading: CircleAvatar(),
              title: Text("Linkdien Alerts"),
              subtitle: Text("Hiring now: “software engineer” at MPC Cloud Consulting Pvt Ltd and more"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Aneena"),
              subtitle: Text("Upload your Cv"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Interview invitation"),
              subtitle: Text("ANEENA, (ID:1444)Immediate response required From you | you are eligible with ref ID: KL25TY3"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),ListTile(
              leading: CircleAvatar(),
              title: Text("indeed"),
              subtitle: Text("Apply to jobs at Retail-Outsource, ESPERER MOTORS and Techneurons Consulting Solutions"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined),

                ],
              ),

            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Emmanuvel joseph"),
              subtitle: Text("Upload your Cv"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Ansha"),
              subtitle: Text("Your email is accepted"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Arya"),
              subtitle: Text("Happy to inform you"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),ListTile(
              leading: CircleAvatar(),
              title: Text("Naukri Alerts"),
              subtitle: Text("Last chance to enrol for a webinar on ResumeBuilding"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),ListTile(
              leading: CircleAvatar(),
              title: Text("Linkdien Alerts"),
              subtitle: Text("Hiring now: “software engineer” at MPC Cloud Consulting Pvt Ltd and more"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),ListTile(
              leading: CircleAvatar(),
              title: Text("Interview invitation"),
              subtitle: Text("ANEENA, (ID:1444)Immediate response required From you | you are eligible with ref ID: KL25TY3"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),ListTile(
              leading: CircleAvatar(),
              title: Text("indeed"),
              subtitle: Text("Apply to jobs at Retail-Outsource, ESPERER MOTORS and Techneurons Consulting Solutions"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined),

                ],
              ),

            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Start Daily"),
              subtitle: Text("'Even If 0.001% Negligence...': Supreme Court Slams Exam Body NTA Over NEET Row"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Infosys Interview"),
              subtitle: Text("“Congrats ANEENA, [INFOSYS INTERVIEW] waiting for you: key to [YOUR] success”"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Linkdln"),
              subtitle: Text("Software Developer -Fresher job at CryptoXpress: Actively recruiting"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),ListTile(
              leading: CircleAvatar(),
              title: Text("Naukri Alerts"),
              subtitle: Text("Last chance to enrol for a webinar on ResumeBuilding"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),ListTile(
              leading: CircleAvatar(),
              title: Text("MyGlamm"),
              subtitle: Text("Stack your way to perfect lips 💋"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),ListTile(
              leading: CircleAvatar(),
              title: Text("Canva"),
              subtitle: Text("Score big, this cricket season, with Canva"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),ListTile(
              leading: CircleAvatar(),
              title: Text("indeed"),
              subtitle: Text("Apply to jobs at Retail-Outsource, ESPERER MOTORS and Techneurons Consulting Solutions"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined),

                ],
              ),

            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Linkdln"),
              subtitle: Text("Kavya Boddu shared a post: Java…"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Facebook friend suggestions"),
              subtitle: Text("👤 Koi Mil Gaya is a new friend suggestion for you"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Linkdln"),
              subtitle: Text("Software Developer -Fresher job at CryptoXpress: Actively recruiting"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),ListTile(
              leading: CircleAvatar(),
              title: Text("Naukri Alerts"),
              subtitle: Text("Last chance to enrol for a webinar on ResumeBuilding"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),ListTile(
              leading: CircleAvatar(),
              title: Text("Linkdien Alerts"),
              subtitle: Text("Hiring now: “software engineer” at MPC Cloud Consulting Pvt Ltd and more"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),ListTile(
              leading: CircleAvatar(),
              title: Text("Interview invitation"),
              subtitle: Text("ANEENA, (ID:1444)Immediate response required From you | you are eligible with ref ID: KL25TY3"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),ListTile(
              leading: CircleAvatar(),
              title: Text("indeed"),
              subtitle: Text("Apply to jobs at Retail-Outsource, ESPERER MOTORS and Techneurons Consulting Solutions"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined),

                ],
              ),

            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("TO:	unsub-6a4c5937.013y3.s1ozul1u34ti@bnc3.mailjet.com"),
              subtitle: Text("This message was automatically generated by Gmail."),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("TO:	Vishnu.kn"),
              subtitle: Text("Resume for python developer"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("TO:	hr"),
              subtitle: Text("Resume for interview"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),




          ],
        )
    );
  }
}


class Spam extends StatelessWidget {
  const Spam({super.key});

  get icon => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Gmail"),
          backgroundColor: Colors.grey,
          actions: [
            CircleAvatar(backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/900px-Cat03.jpg"),)
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          icon: Icon(Icons.edit),
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
          onPressed: () => {
            icon: Icon(Icons.edit),

          }, label: Text("Compose"),

        ),


        body:
        Center(child: Text("Nothing in Spam..."))


    );
  }
}

class Bin extends StatelessWidget {
  const Bin({super.key});

  get icon => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Gmail"),
          backgroundColor: Colors.grey,
          actions: [
            CircleAvatar(backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/900px-Cat03.jpg"),)
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          icon: Icon(Icons.edit),
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
          onPressed: () => {
            icon: Icon(Icons.edit),

          }, label: Text("Compose"),

        ),
        body: ListView(
          children: [
            Text("Bin"),
            Column(
              children: [
                SizedBox(
                  height: 100,
                  child: ListTile(
                    leading: Icon(Icons.delete_outline_rounded),
                    title: Text("Items that have been in the bin for more than 30 days will be automatically deleted"),
                    subtitle: TextButton(onPressed: () {  }, child: Text("Empty Bin now"),),
                  ),
                ),
                Divider(
                  color: Colors.black,
                )
              ],

            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Linkdln"),
              subtitle: Text("Kavya Boddu shared a post: Java…"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Facebook friend suggestions"),
              subtitle: Text("👤 Koi Mil Gaya is a new friend suggestion for you"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(),
              title: Text("Linkdln"),
              subtitle: Text("Software Developer -Fresher job at CryptoXpress: Actively recruiting"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),ListTile(
              leading: CircleAvatar(),
              title: Text("Naukri Alerts"),
              subtitle: Text("Last chance to enrol for a webinar on ResumeBuilding"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),ListTile(
              leading: CircleAvatar(),
              title: Text("Linkdien Alerts"),
              subtitle: Text("Hiring now: “software engineer” at MPC Cloud Consulting Pvt Ltd and more"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),ListTile(
              leading: CircleAvatar(),
              title: Text("Interview invitation"),
              subtitle: Text("ANEENA, (ID:1444)Immediate response required From you | you are eligible with ref ID: KL25TY3"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined)
                ],
              ),
            ),ListTile(
              leading: CircleAvatar(),
              title: Text("indeed"),
              subtitle: Text("Apply to jobs at Retail-Outsource, ESPERER MOTORS and Techneurons Consulting Solutions"),
              trailing: Column(
                children: [
                  Text("12 jun"),
                  Icon(Icons.star_border_outlined),

                ],
              ),

            ),




          ],
        )
    );
  }
}


class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_sharp))
        ],
      ),
      body: Column(
        children: [
          TextButton(onPressed: (){}, child: Text("General Settings")),
          TextButton(onPressed: (){}, child: Text("aneenaj25@gmail.com")),
          TextButton(onPressed: (){}, child: Text("minijosephjoseph@gmail.com")),
          TextButton(onPressed: (){}, child: Text("Add account")),


        ],
      ),
      backgroundColor: Colors.black12,
    );
  }
}


class Help extends StatelessWidget {
  TextEditingController _searchController=TextEditingController();
   Help({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Help"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert_sharp))
        ],
      ),
      body: ListView(
        children: [
          Text("Popular help resources"),
          ListTile(
            leading: Icon(Icons.receipt_outlined),
            title: Text("Change or reset your password"),

          ),
          ListTile(
            leading: Icon(Icons.receipt_outlined),
            subtitle: Text("Update your Gmail app"),

          ),
          ListTile(
            leading: Icon(Icons.diamond_outlined),
            subtitle: Text("Gmail message recovery tool"),

          ),
          ListTile(
            leading: Icon(Icons.receipt_outlined),
            subtitle: Text("Send or unsend Gmail messages"),

          ),
          ListTile(
            leading: Icon(Icons.receipt_outlined),
            subtitle: Text("Fix sync error with the Gmail Android app"),

          ),
             Padding(
               padding: EdgeInsets.all(10),
               child: Container(
                 width: 80,
                   decoration: BoxDecoration(
                   color: Colors.grey,
                   border: Border.all(width: 0.1),
                   borderRadius: BorderRadius.circular(30)
                   ),
                   child:TextField(
                           controller: _searchController,
                           style:  TextStyle(color: Colors.white),
                cursorColor: Colors.white,
                decoration:  InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search Help',
                  hintStyle: TextStyle(color: Colors.white54),
                  border: InputBorder.none,
                ),
                onChanged: (value) {
                  // Perform search functionality here
                 },
                ),
               ),
             ),

        ],
      ),

    );
  }
}
