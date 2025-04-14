import 'package:flutter/material.dart';
import 'package:simple_logger/widgets/clock_widget.dart';

class LogEntryPage extends StatelessWidget {
  LogEntryPage({super.key});

  final _plateNumberTextController = TextEditingController();
  final _cardNumberTextController = TextEditingController();
  final _companyNameTextController = TextEditingController();
  final _vehicleMarkerTextController = TextEditingController();
  final _destinationTextController = TextEditingController();

  //@override
  void dispose() {
    _plateNumberTextController.dispose();
    _cardNumberTextController.dispose();
    _companyNameTextController.dispose();
    _vehicleMarkerTextController.dispose();
    _destinationTextController.dispose();

    //super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
          child: Column(
            children: [
              SizedBox(height: 100.0, child: ClockWidget()),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: TextField(
                      controller: _plateNumberTextController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Plate Number",
                      ),
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Expanded(
                    flex: 2,
                    child: TextField(
                      controller: _vehicleMarkerTextController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Vehicle Mark",
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: TextField(
                      controller: _cardNumberTextController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Card Number",
                      ),
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      style: ButtonStyle(),
                      onPressed: () {},
                      child: Text("Delivery"),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              TextField(
                controller: _companyNameTextController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Company Name",
                ),
              ),
              SizedBox(height: 20.0),
              TextField(
                controller: _destinationTextController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Destination",
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: ElevatedButton(
                            onPressed: () {
                              addToLog();
                            },
                            child: Text("In"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(onPressed: () {}, child: Text("Out")),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void addToLog() {
    // Update Provider
  }
}
