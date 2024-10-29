import 'package:flutter/material.dart';

class TaskerProfileScreen extends StatefulWidget {
  const TaskerProfileScreen({super.key});

  @override
  State<TaskerProfileScreen> createState() => _TaskerProfileScreenState();
}

class _TaskerProfileScreenState extends State<TaskerProfileScreen> {
  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  Future _selectDateTime(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null && pickedDate != selectedDate) {
      setState(() {
        selectedDate = pickedDate;
      });
    }
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: selectedTime ?? TimeOfDay.now(),
    );
    if (pickedTime != null && pickedTime != selectedTime) {
      setState(() {
        selectedTime = pickedTime;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Positioned(
            bottom: 8,
            right: 8,
            child: GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    builder: (context) {
                      return Container(
                        height: size.height / 3.8,
                        width: size.width,
                        decoration: const BoxDecoration(color: Colors.white),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(32, 32, 32, 0),
                              child: Container(
                                width: size.width,
                                height: 54,
                                decoration: const BoxDecoration(
                                    color: Color.fromRGBO(73, 69, 79, 0.2),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(11))),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.date_range_outlined,
                                        size: 24,
                                      ),
                                    ),
                                    Text(
                                      selectedDate != null
                                          ? 'Selected Date: ${selectedDate!.month}/${selectedDate!.day}'
                                          : 'No date selected',
                                      style: textTheme.bodyMedium,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(32, 8, 32, 0),
                              child: Container(
                                width: size.width,
                                height: 54,
                                decoration: const BoxDecoration(
                                    color: Color.fromRGBO(73, 69, 79, 0.2),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(11))),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.timer_outlined,
                                        size: 24,
                                      ),
                                    ),
                                    Text(
                                      selectedTime != null
                                          ? 'Selected Time: ${selectedTime!.hour}:${selectedTime!.minute}'
                                          : 'No time selected',
                                      style: textTheme.bodyMedium,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
                              child: Container(
                                width: size.width,
                                height: 44,
                                decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 103, 80, 164),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(32))),
                                child: GestureDetector(
                                  onTap: () {
                                    _selectDateTime(context);
                                  },
                                  child: Center(
                                      child: Text(
                                    'Select Date and Time',
                                    style: textTheme.titleSmall,
                                  )),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    });
              },
              child: Container(
                width: size.width/2.4,
                height: size.height/8.18,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Color.fromARGB(255, 103, 80, 164)),
                child: Center(
                  child: Text(
                    "Select Tasker",
                    style: textTheme.titleSmall,
                  ),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
