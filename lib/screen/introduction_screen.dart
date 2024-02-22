import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:onboarding_screen/screen/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({super.key});

  final List<PageViewModel> page = [
    PageViewModel(
      title: 'Find your Destination',
      body:
          'Enim laboris do cupidatat occaecat cupidatat laboris velit. Labore cillum consequat tempor excepteur proident et',
      footer: SizedBox(
        height: 45,
        width: 150,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          onPressed: () {},
          child: Text('Lets Go'),
        ),
      ),
      image: Image.network(
          'https://plus.unsplash.com/premium_photo-1663088923485-58685ba14d5f?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    PageViewModel(
      title: 'Booking your Ticket',
      body:
          'Aute incididunt dolore irure in nisi velit est id ullamco labore do consectetur ipsum.',
      footer: SizedBox(
        height: 45,
        width: 150,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          onPressed: () {},
          child: Text('Lets Go'),
        ),
      ),
      image: Image.network(
          'https://images.unsplash.com/photo-1578575436955-ef29da568c6c?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    PageViewModel(
      title: 'Enjoy your Holiday',
      body:
          'Excepteur occaecat aute labore laboris minim velit ex dolor Eiusmod occaecat excepteur Lorem mollit proident velit consequat sit mollit nulla commodo commodo laborum.',
      footer: SizedBox(
        height: 45,
        width: 150,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          onPressed: () {},
          child: Text('Lets Go'),
        ),
      ),
      image: Image.network(
          'https://images.unsplash.com/photo-1681222217109-260212b4a246?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('On Boarding'),
        centerTitle: true,
      ),
      body: IntroductionScreen(
        pages: page,
        showSkipButton: true,
        skip: const Text('Skip'),
        showDoneButton: true,
        done: Text('Done'),
        showNextButton: true,
        next: const Icon(
          Icons.arrow_forward,
          size: 25,
        ),
        onDone: () => onDone(context),
        curve: Curves.bounceOut,
        dotsDecorator: const DotsDecorator(
          size: Size(15, 15),
          color: Color.fromARGB(255, 116, 203, 163),
          activeColor: Color.fromARGB(255, 109, 161, 206),
          activeSize: Size.square(20),
        ),
      ),
    );
  }

  void onDone(context) async {
    final pefers = await SharedPreferences.getInstance();
    await pefers.setBool('ON_BOARDING', false);
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ));
  }
}
