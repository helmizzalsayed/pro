import 'package:flutter/material.dart';

class ViewAppointmentsPage extends StatelessWidget {
  final String bloodPressure;
  final String temperature;
  final String heartRate;
  final String respiratoryRate;
  final String spo2;
  final String height;
  final String weight;
  final String chiefComplaint;
  final String physicalExamination;
  final String diagnosis;
  final String treatment;

  ViewAppointmentsPage({
    required this.bloodPressure,
    required this.temperature,
    required this.heartRate,
    required this.respiratoryRate,
    required this.spo2,
    required this.height,
    required this.weight,
    required this.chiefComplaint,
    required this.physicalExamination,
    required this.diagnosis,
    required this.treatment,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Appointment Details')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Blood Pressure: $bloodPressure'),
            Text('Temperature: $temperature'),
            Text('Heart Rate: $heartRate'),
            Text('Respiratory Rate: $respiratoryRate'),
            Text('SpO2: $spo2'),
            Text('Height: $height'),
            Text('Weight: $weight'),
            Text('Chief Complaint: $chiefComplaint'),
            Text('Physical Examination: $physicalExamination'),
            Text('Diagnosis: $diagnosis'),
            Text('Treatment: $treatment'),
          ],
        ),
      ),
    );
  }
}