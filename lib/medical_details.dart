import 'package:flutter/material.dart';
import 'view.dart';

class MedicalDetailsPage extends StatefulWidget {
  @override
  _MedicalDetailsPageState createState() => _MedicalDetailsPageState();
}

class _MedicalDetailsPageState extends State<MedicalDetailsPage> {
  TextEditingController bloodPressureController = TextEditingController();
  TextEditingController temperatureController = TextEditingController();
  TextEditingController heartRateController = TextEditingController();
  TextEditingController respiratoryRateController = TextEditingController();
  TextEditingController spo2Controller = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController chiefComplaintController = TextEditingController();
  TextEditingController physicalExaminationController = TextEditingController();
  TextEditingController diagnosisController = TextEditingController();
  TextEditingController treatmentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Medical Details')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: bloodPressureController,
              decoration: InputDecoration(labelText: 'Blood Pressure'),
            ),
            TextField(
              controller: temperatureController,
              decoration: InputDecoration(labelText: 'Temperature'),
            ),
            TextField(
              controller: heartRateController,
              decoration: InputDecoration(labelText: 'Heart Rate'),
            ),
            TextField(
              controller: respiratoryRateController,
              decoration: InputDecoration(labelText: 'Respiratory Rate'),
            ),
            TextField(
              controller: spo2Controller,
              decoration: InputDecoration(labelText: 'SpO2'),
            ),
            TextField(
              controller: heightController,
              decoration: InputDecoration(labelText: 'Height'),
            ),
            TextField(
              controller: weightController,
              decoration: InputDecoration(labelText: 'Weight'),
            ),
            TextField(
              controller: chiefComplaintController,
              maxLines: null,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(labelText: 'Chief Complaint'),
            ),
            TextField(
              controller: physicalExaminationController,
              maxLines: null,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(labelText: 'Physical Examination'),
            ),
            TextField(
              controller: diagnosisController,
              maxLines: null,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(labelText: 'Diagnosis'),
            ),
            TextField(
              controller: treatmentController,
              maxLines: null,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(labelText: 'Treatment'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ViewAppointmentsPage(
                      bloodPressure: bloodPressureController.text,
                      temperature: temperatureController.text,
                      heartRate: heartRateController.text,
                      respiratoryRate: respiratoryRateController.text,
                      spo2: spo2Controller.text,
                      height: heightController.text,
                      weight: weightController.text,
                      chiefComplaint: chiefComplaintController.text,
                      physicalExamination: physicalExaminationController.text,
                      diagnosis: diagnosisController.text,
                      treatment: treatmentController.text,
                    ),
                  ),
                );
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}