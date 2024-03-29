import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:geolocator/geolocator.dart';
import 'package:gyst/constants.dart';
import 'package:gyst/profile/update_profile.dart';
import 'package:gyst/styles/button.dart';
import 'package:gyst/styles/colors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  // Future<Position> _getCurrentLocation() async{
  //   bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
  //   if(!serviceEnabled) {
  //     return Future.error('Location services are disabled :(');
  //   }
  //   LocationPermission permission = await Geolocator.checkPermission();
  //   if(permission == LocationPermission.denied){
  //     permission = await Geolocator.requestPermission();
  //     if(permission == LocationPermission.denied){
  //       return Future.error('Location permissions are denied :(');
  //     }
  //   }
  //   if(permission == LocationPermission.deniedForever){
  //     return Future.error('Location permissions are permanently denied, unable to request :(');
  //   }

  //   return await Geolocator.getCurrentPosition();
  // }

  String buttonName = 'button';
  bool valNot1 = true;
  bool valNot2 = false;
  bool valNot3 = false;

  onChange1(bool value) {
    setState(() {
      valNot1 = value;
    });
  }

  onChange2(bool value) {
    setState(() {
      valNot2 = value;
    });
  }

  onChange3(bool value) {
    setState(() {
      valNot3 = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 40),
                SizedBox(
                  width: 120,
                  height: 120,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset('assets/images/profile_pic.png')),
                ),
                const SizedBox(height: 30),
                Text(userName, style: const TextStyle(fontSize: 20)),
                const SizedBox(height: 30),
                ElevatedButton.icon(
                    label: const Text('Edit Profile',
                        style: TextStyle(color: black)),
                    style: buttonPr,
                    icon: const Icon(Icons.edit, color: black),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const UpdateProfile()));
                    }),
                const SizedBox(height: 10),
                const Divider(),
                Stack(
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {},
                      label: const Text('Notifications',
                          style: TextStyle(color: black)),
                      style: buttonPr,
                      icon: const Icon(Icons.notifications_active_outlined,
                          color: black),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 7,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Transform.scale(
                              scale: 0.7,
                              child: CupertinoSwitch(
                                activeColor: dark,
                                trackColor: grey,
                                value: valNot1,
                                onChanged: (bool newValue) {
                                  onChange1(newValue);
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Divider(),
                Stack(
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {},
                      label: const Text('GDrive Sync',
                          style: TextStyle(color: black)),
                      style: buttonPr,
                      icon: const Icon(Icons.add_to_drive, color: black),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 7,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Transform.scale(
                              scale: 0.7,
                              child: CupertinoSwitch(
                                activeColor: dark,
                                trackColor: grey,
                                value: valNot2,
                                onChanged: (bool newValue) {
                                  onChange2(newValue);
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Divider(),
                Stack(
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        //_getCurrentLocation();
                      },
                      label: const Text('Location',
                          style: TextStyle(color: black)),
                      style: buttonPr,
                      icon:
                          const Icon(Icons.location_on_outlined, color: black),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 7,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Transform.scale(
                              scale: 0.7,
                              child: CupertinoSwitch(
                                activeColor: dark,
                                trackColor: grey,
                                value: valNot3,
                                onChanged: (bool newValue) {
                                  onChange3(newValue);
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Divider(),
                ElevatedButton.icon(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              backgroundColor: const Color(0xFFD3D3E2),
                              title: const Text('Log Out'),
                              content:
                                  Text('Are you sure you want to log out?'),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text(
                                      'No',
                                      style: TextStyle(color: Colors.black),
                                    )),
                                TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'Yes',
                                      style: TextStyle(color: Colors.red),
                                    ))
                              ],
                            ));
                  },
                  label: const Text('Log out', style: TextStyle(color: black)),
                  style: buttonPr,
                  icon: const Icon(Icons.logout, color: black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}