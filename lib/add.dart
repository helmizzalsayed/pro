import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'medical_details.dart';

class AddAppointmentPage extends StatefulWidget {
  @override
  _AddAppointmentPageState createState() => _AddAppointmentPageState();
}

class _AddAppointmentPageState extends State<AddAppointmentPage> {
  DateTime? dateOfBirth;
  DateTime? dateOfAppointment;
  TextEditingController firstNameController = TextEditingController();
  TextEditingController middleNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  String? selectedDoctor;
  String? selectedSpecialization;

  List<String> doctorNames = ['Dr. John Doe', 'Dr. Jane Smith', 'Dr. Alan Johnson','Dr.Abdelhadi'];
  List<String> specializations = ['Cardiology', 'Orthopedics', 'Dermatology','Kafkao'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Appointment')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: firstNameController,
              decoration: InputDecoration(labelText: 'First Name'),
            ),
            TextField(
              controller: middleNameController,
              decoration: InputDecoration(labelText: 'Middle Name'),
            ),
            TextField(
              controller: lastNameController,
              decoration: InputDecoration(labelText: 'Last Name'),
            ),
            ElevatedButton(
              onPressed: () async {
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: DateTime.now(),
                );
                if (pickedDate != null) {
                  setState(() {
                    dateOfBirth = pickedDate;
                  });
                }
              },
              child: Text('Pick Date of Birth'),
            ),
            if (dateOfBirth != null)
              Text('Date of Birth: ${DateFormat('yyyy-MM-dd').format(dateOfBirth!)}'),
            TextField(
              controller: phoneNumberController,
              decoration: InputDecoration(labelText: 'Phone Number'),
            ),
            TextField(
              controller: addressController,
              decoration: InputDecoration(labelText: 'Address'),
            ),
            DropdownButton<String>(
              value: selectedDoctor,
              onChanged: (String? newValue) {
                setState(() {
                  selectedDoctor = newValue;
                });
              },
              items: doctorNames.map((String doctor) {
                return DropdownMenuItem<String>(
                  value: doctor,
                  child: Text(doctor),
                );
              }).toList(),
              isExpanded: true,
              hint: Text('Select Doctor'),
            ),
            ElevatedButton(
              onPressed: () async {
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2101),
                );
                if (pickedDate != null) {
                  setState(() {
                    dateOfAppointment = pickedDate;
                  });
                }
              },
              child: Text('Pick Date of Appointment'),
            ),
            if (dateOfAppointment != null)
              Text('Date of Appointment: ${DateFormat('yyyy-MM-dd').format(dateOfAppointment!)}'),
            DropdownButton<String>(
              value: selectedSpecialization,
              onChanged: (String? newValue) {
                setState(() {
                  selectedSpecialization = newValue;
                });
              },
              items: specializations.map((String specialization) {
                return DropdownMenuItem<String>(
                  value: specialization,
                  child: Text(specialization),
                );
              }).toList(),
              isExpanded: true,
              hint: Text('Select Specialization'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MedicalDetailsPage()),
                );
              },
              child: Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
