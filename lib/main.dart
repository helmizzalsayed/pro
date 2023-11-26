import 'package:flutter/material.dart';
import 'add.dart';
import 'view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MainPage(),
        '/add': (context) => AddAppointmentPage(),
        '/view': (context) => ViewOldServicesPage(services: [
          'abdelhadi',
          'Wahib',
          'Helmi',

        ])
        '/patientInfo': (context) => PatientInfoPage(), // New page for patient information
      },
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Main Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/add');
              },
              child: Text('Add new services'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/view');
              },
              child: Text('Show old services'),
            ),
          ],
        ),
      ),
    );
  }
}

class ViewOldServicesPage extends StatelessWidget {
  final List<String> services;

  ViewOldServicesPage({required this.services});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Old Services')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Old services:'),
            for (String service in services)
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/patientInfo');
                },
                child: Text(
                  service,
                  style: TextStyle(
                    color: Colors.blue, // Make the text look like a link
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class PatientInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Patient Information')),
      body: Center(
        child: Text('First name: Abdelhadi\n Middle name: Ghassan \n Last name: Merehbi \n date of birth: 19/10/2000 \n phone number:71620569 \n Addresss:bire \n date of appointment: 19/10/2025 \n Doctor name: Maher \n specialisation: CSCI \n bloodPressure:11 \n temperature:11\n heartRate:11 \n respiratoryRate:11 \n spo2:11 \n height:11 \n weight:11 \n chiefComplaint:11 \n physicalExamination:11\n diagnosis:11 \n treatment:11'),
      ),
    );
  }
}
