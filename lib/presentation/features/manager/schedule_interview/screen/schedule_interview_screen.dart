import 'package:flutter/material.dart';

class ScheduleInterviewScreen extends StatefulWidget {
  final int interviewerId;
  final String interviewerName;
  final String date;
  final String interviewSlot;

  const ScheduleInterviewScreen({
    super.key,
    required this.interviewerId,
    required this.interviewerName,
    required this.date,
    required this.interviewSlot,
  });

  @override
  State<ScheduleInterviewScreen> createState() =>
      _ScheduleInterviewScreenState();
}

class _ScheduleInterviewScreenState extends State<ScheduleInterviewScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _candidateIdController = TextEditingController();
  String _roundType = 'L1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Schedule Interview')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Interviewer: ${widget.interviewerName}',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text('Date: ${widget.date}'),
              Text('Slot: ${widget.interviewSlot}'),

              const SizedBox(height: 20),

              TextFormField(
                controller: _candidateIdController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Candidate ID',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Candidate ID required';
                  }
                  return null;
                },
              ),

              const SizedBox(height: 20),

              DropdownButtonFormField<String>(
                value: _roundType,
                items: const [
                  DropdownMenuItem(value: 'GD', child: Text('GD')),
                  DropdownMenuItem(value: 'L1', child: Text('L1')),
                  DropdownMenuItem(value: 'L2', child: Text('L2')),
                  DropdownMenuItem(value: 'HR', child: Text('HR')),
                ],
                onChanged: (value) {
                  if (value != null) setState(() => _roundType = value);
                },
                decoration: const InputDecoration(
                  labelText: 'Round Type',
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 30),

              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // final requestBody = {
                      //   "candidateId": int.parse(
                      //     _candidateIdController.text.trim(),
                      //   ),
                      //   "interviewerId": widget.interviewerId,
                      //   "interviewSlot": widget.interviewSlot,
                      //   "date": widget.date,
                      //   "roundType": _roundType,
                      // };

                      // ScaffoldMessenger.of(context).showSnackBar(
                      //   const SnackBar(
                      //     content: Text("Interview scheduled successfully!"),
                      //   ),
                      // );

                      // Navigator.pop(context);
                    }
                  },
                  child: const Text('Schedule Interview'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
