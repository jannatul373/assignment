import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Date and Time Picker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DateTimePicker(),
    );
  }
}

class DateTimePicker extends StatefulWidget {
  @override
  _DateTimePickerState createState() => _DateTimePickerState();
}

class _DateTimePickerState extends State<DateTimePicker> {
  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  // Function to open the date picker
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  // Function to open the time picker
  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime ?? TimeOfDay.now(),
    );

    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Date and Time Picker'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // Button to pick date
              ElevatedButton(
                onPressed: () => _selectDate(context),
                child: Text("Pick a Date"),
              ),
              SizedBox(height: 16),
              // Button to pick time
              ElevatedButton(
                onPressed: () => _selectTime(context),
                child: Text("Pick a Time"),
              ),
              SizedBox(height: 16),
              // Display the selected date and time
              Text(
                selectedDate == null
                    ? "No date selected"
                    : "Selected Date: ${selectedDate!.toLocal()}",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 8),
              Text(
                selectedTime == null
                    ? "No time selected"
                    : "Selected Time: ${selectedTime!.format(context)}",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
