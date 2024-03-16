import 'package:flutter/material.dart';

class SystemsPage extends StatefulWidget {
  const SystemsPage({super.key});

  @override
  State<SystemsPage> createState() => _SystemsPageState();
}

class _SystemsPageState extends State<SystemsPage> {
  final List<bool> _items = List.generate(19, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          right: 0,
          child: SizedBox(
            width: 500,
            height: 400,
            child: FittedBox(
              fit: BoxFit.contain,
              child: Image.asset(
                'images/highrise.png',
                filterQuality: FilterQuality.medium,
              ),
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 8.0, 0.0, 8.0),
                child: Card(
                  child: ListView(
                    children: [
                      const Text(
                        'Checklist',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 42),
                      ),
                      const Divider(
                        thickness: 0.5,
                        indent: 8,
                        endIndent: 8,
                      ),
                      _checklistItem('Bumpers + Covers Off, Pins In', 15),
                      const SizedBox(height: 8),
                      const Text(
                        'Mechanical',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 32),
                      ),
                      const Divider(
                        thickness: 0.5,
                        indent: 8,
                        endIndent: 8,
                      ),
                      _checklistItem('Swerve Inspection', 0),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                _checklistItem(
                                    'Angler Inspect', 1, Colors.redAccent),
                                _checklistItem(
                                    'Flywheel Inspect', 3, Colors.redAccent),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                _checklistItem('Intake Wrist Inspect', 2,
                                    Colors.indigoAccent),
                                _checklistItem(
                                    'Intake Inspect', 4, Colors.indigoAccent),
                              ],
                            ),
                          ),
                        ],
                      ),
                      _checklistItem('Elevator Down & On Pulley', 5),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                _checklistItem('Climb Down & On Pulley', 6,
                                    Colors.redAccent),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                _checklistItem('Climb Mag Limits & Magnets', 7,
                                    Colors.indigoAccent),
                              ],
                            ),
                          ),
                        ],
                      ),
                      _checklistItem('Cleaned all Rollers/Wheels', 8),
                      const SizedBox(height: 8),
                      const Text(
                        'Electrical',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 32),
                      ),
                      const Divider(
                        thickness: 0.5,
                        indent: 8,
                        endIndent: 8,
                      ),
                      _checklistItem('Limelight Check', 9),
                      _checklistItem('Status Lights', 10),
                      _checklistItem('Battery Connection', 11),
                      _checklistItem(
                          'Turret Encoder + Underside Connections', 12),
                      _checklistItem('Photonvision Check', 13),
                      _checklistItem('RoboRIO + Ethernet Connections', 14),
                      const SizedBox(height: 8),
                      const Text(
                        'After Checks',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 32),
                      ),
                      const Divider(
                        thickness: 0.5,
                        indent: 8,
                        endIndent: 8,
                      ),
                      _checklistItem('Bumpers + Covers On', 16),
                      _checklistItem('Robot On', 17),
                      _checklistItem('Systems Check', 18),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _checklistItem(String title, int itemIndex, [Color? textColor]) {
    return CheckboxListTile(
      value: _items[itemIndex],
      controlAffinity: ListTileControlAffinity.leading,
      title: Text(
        title,
        style: TextStyle(fontSize: 20, color: textColor),
      ),
      visualDensity: VisualDensity.compact,
      onChanged: (value) {
        setState(() {
          _items[itemIndex] = value ?? false;
        });
      },
    );
  }
}
