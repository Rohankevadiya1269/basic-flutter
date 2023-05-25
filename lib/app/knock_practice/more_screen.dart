import 'package:flutter/material.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  final List<String> titles = [
    'Booking History',
    'Saved',
    'Membership',
    'My Account',
    'Advertise with us',
    'Refer and Earn',
    'Contact us',
    'Setting',
  ];
  final List<String> listtitles = [
    'Visit Website',
    'About Knocksense',
    'Terms and Conditions',
    'Privacy Policy ',
    'Refund and Cancellation policy',
    'Logout',
  ];
  final List<String> listimages = [
    'assets/logos/visitweb.png',
    'assets/logos/about_ks.png',
    'assets/logos/terms_cond.png',
    'assets/logos/privacy.png',
    'assets/logos/refund.png',
    'assets/logos/logout.png',
  ];

  final List<String> images = [
    'assets/logos/booking.png',
    'assets/logos/saved.png',
    'assets/logos/member1.png',
    'assets/logos/my_account.png',
    'assets/logos/advertise.png',
    'assets/logos/refer.png',
    'assets/logos/contact_us.png',
    'assets/logos/setting.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SizedBox(
        height: 44.4,
        width: 44.4,
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color(0xffFB6304),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(9)),
          ),
          child: const Icon(Icons.add),
        ),
      ),
      backgroundColor: const Color(0xff0B98AF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(50, 45, 20, 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Back',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.diamond_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'My Digest',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                gradient: RadialGradient(radius: 1.75, colors: [
                  Color.fromARGB(255, 33, 48, 64),
                  Color(0xff040506)
                ]),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(17, 17, 17, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Row(
                          children: [
                            CircleAvatar(
                              radius: 20.0,
                              backgroundImage:
                                  AssetImage('assets/logos/profile.png'),
                            ),
                            SizedBox(width: 16.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Vibhore',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      // fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                SizedBox(height: 5.0),
                                Text(
                                  'View Profile',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          width: 95,
                          decoration: const BoxDecoration(),
                          child: ElevatedButton(
                            onPressed: () {
                              // Add your desired functionality here
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              // padding: const EdgeInsets.all(5),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(22),
                              ),
                              elevation: 4,
                            ),
                            child: const Text(
                              'Platinum',
                              style: TextStyle(
                                // fontWeight: FontWeight.bold,
                                color: Color(0xffA68030),
                                fontSize: 15.0,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 800,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 15, 9),
                      child: GridView.builder(
                        itemCount: 8,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 18,
                                mainAxisSpacing: 18),
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.5),
                                color: const Color.fromRGBO(36, 49, 64, 0.5)),
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  images[index],
                                  width: 50,
                                  height: 50,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  titles[index],
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 16.0),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  const Divider(
                    color: Color(0xff364250),
                    thickness: 1.8,
                    indent: 15,
                    endIndent: 15,
                  ),
                  SizedBox(
                    height: 375,
                    child: ListView.builder(
                      itemCount: listtitles.length,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: Image.asset(listimages[index]),
                          title: Text(
                            listtitles[index],
                            style: const TextStyle(
                                color: Colors.white, fontSize: 17.0),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
