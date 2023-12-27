import 'package:flutter/material.dart';
import 'package:testweb/Widgets/reusable_textformfields.dart';
import 'package:testweb/widgets/circle_icon.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _servicesKey = GlobalKey();
  final GlobalKey _contactsKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.abc),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(onPressed: () {}, child: const Text('About Us')),
                  TextButton(
                      onPressed: () {
                        Scrollable.ensureVisible(
                          _servicesKey.currentContext!,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: const Text('Services')),
                  TextButton(
                      onPressed: () {
                        Scrollable.ensureVisible(
                          _contactsKey.currentContext!,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: const Text('Contact')),
                ],
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            'https://images.unsplash.com/photo-1492571350019-22de08371fd3?q=80&w=1953&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            fit: BoxFit.cover,
          ),
          ListView(
            controller: _scrollController,
            shrinkWrap: true,
            children: [
              const SizedBox(height: 200),
              Column(
                children: [
                  const Text(
                    'Welcome to My Web',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  MaterialButton(
                    color: const Color.fromARGB(255, 219, 87, 64),
                    onPressed: () {
                      Scrollable.ensureVisible(
                        _contactsKey.currentContext!,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: const Text(
                      'Contact',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 400),
                  Column(
                    children: [
                      SizedBox(key: _servicesKey, height: 150),
                      SizedBox(
                        height: 600,
                        width: double.infinity,
                        child: Container(
                          color: const Color.fromARGB(255, 253, 252, 249),
                          child: const Column(
                            children: [
                              Center(
                                child: Text(
                                  'Services',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 146, 145, 145),
                                      fontSize: 30,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 400,
                                  right: 400,
                                  top: 70,
                                  bottom: 100,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconCircle(Icons.wallet, 'Wallet'),
                                    IconCircle(Icons.money, 'Money'),
                                    IconCircle(Icons.home, 'Home'),
                                    IconCircle(Icons.house, 'House'),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 400,
                                  right: 400,
                                  top: 100,
                                  bottom: 40,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconCircle(Icons.house, 'House'),
                                    IconCircle(Icons.home, 'Home'),
                                    IconCircle(Icons.money, 'Money'),
                                    IconCircle(Icons.wallet, 'Wallet'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 100),
                  Padding(
                    padding: const EdgeInsets.only(left: 450),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        key: _contactsKey,
                        child: Column(
                          children: [
                            const Text(
                              'Contact',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600),
                            ),
                            Container(
                              width: 500,
                              color: Colors.white,
                              child: Column(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(top: 32),
                                    child:
                                        ReusableTextFormField(hintText: 'Name'),
                                  ),
                                  const ReusableTextFormField(
                                      hintText: 'Email'),
                                  const ReusableTextFormField(
                                      hintText: 'Subject'),
                                  const ReusableTextFormField(
                                    hintText: 'Message',
                                    height: 3,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: MaterialButton(
                                        onPressed: () {},
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        color: const Color.fromARGB(
                                            255, 214, 211, 211),
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 16, horizontal: 32),
                                        child: const Text(
                                          'Submit',
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 110, 108, 108),
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        )),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 100),
                  Container(
                    color: Colors.white,
                    child: const Padding(
                      padding: EdgeInsets.only(
                        top: 32,
                        bottom: 32,
                        left: 350,
                        right: 350,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.abc),
                          Column(
                            children: [
                              Text(
                                'Address',
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                'xxxx - xx Ave NW \n Xxxx, Xx \n XXX XXX',
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'Contact',
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                'Give us a call at xxx-xxx-xxxx \n XXX@XXX.com',
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
