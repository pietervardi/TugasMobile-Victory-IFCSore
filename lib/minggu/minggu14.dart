import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Minggu14 extends StatefulWidget {
  const Minggu14({Key? key}) : super(key: key);

  @override
  State<Minggu14> createState() => _Minggu14State();
}

class _Minggu14State extends State<Minggu14> {
  final _formKey = GlobalKey<FormState>();
  late String _selectedFromCity;
  late String _selectedToCity;
  late DateTime _departureDate;
  late TimeOfDay _departureTime;
  late TextEditingController _passengersController;
  late String _selectedSeatClass;
  late List<String> _cities;
  late List<String> _seatClasses;

  @override
  void initState() {
    super.initState();
    _selectedFromCity = 'Jakarta (JKTA)';
    _selectedToCity = 'Surabaya (SUB)';
    _departureDate = DateTime.now();
    _departureTime = TimeOfDay.now();
    _passengersController = TextEditingController(text: '1');
    _selectedSeatClass = 'Economy';
    _cities = ['Jakarta (JKTA)', 'Surabaya (SUB)', 'Bali (BALI)', 'Yogyakarta (JOG)', 'Medan (MED)', 'Aceh (BND)'];
    _seatClasses = ['Economy', 'Business', 'First Class'];
  }

  @override
  void dispose() {
    _passengersController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        title: const Text('Search Flights'),
        backgroundColor: const Color(0xFF898121),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.flight,
                    color: Color(0xFF144272),
                  ),
                  Text(
                    ' One-way/Round-trip',
                    style: TextStyle(
                      fontSize: 25,
                      color: Color(0xFF144272),
                      fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
              const SizedBox(height: 30,),
              buildDropdownInput(
                label: 'From',
                value: _selectedFromCity,
                items: _cities,
                onChanged: (value) {
                  setState(() {
                    _selectedFromCity = value.toString();
                  });
                },
                icon: Icons.flight_takeoff,
              ),
              buildDropdownInput(
                label: 'To',
                value: _selectedToCity,
                items: _cities,
                onChanged: (value) {
                  setState(() {
                    _selectedToCity = value.toString();
                  });
                },
                icon: Icons.flight_land,
              ),
              const SizedBox(height: 10.0),
              buildDatePickerInput(
                label: 'Departure Date',
                icon: Icons.calendar_today,
                onTap: () async {
                  final selectedDate = await showDatePicker(
                    context: context,
                    initialDate: _departureDate,
                    firstDate: DateTime.now(),
                    lastDate: DateTime(2100),
                  );
                  if (selectedDate != null) {
                    setState(() {
                      _departureDate = selectedDate;
                    });
                  }
                },
              ),
              const SizedBox(height: 10.0),
              buildTimePickerInput(
                label: 'Time',
                icon: Icons.access_time,
                onTap: () async {
                  final selectedTime = await showTimePicker(
                    context: context,
                    initialTime: _departureTime,
                  );
                  if (selectedTime != null) {
                    setState(() {
                      _departureTime = selectedTime;
                    });
                  }
                },
              ),
              const SizedBox(height: 10.0),
              buildFormInput(
                label: 'Passengers',
                controller: _passengersController,
                icon: Icons.person,
                keyboardType: TextInputType.number,
              ),
              buildDropdownInput(
                label: 'Seat Class',
                value: _selectedSeatClass,
                items: _seatClasses,
                onChanged: (value) {
                  setState(() {
                    _selectedSeatClass = value.toString();
                  });
                },
                icon: Icons.airline_seat_recline_normal,
              ),
              const SizedBox(height: 20.0),
              Center(
                child: SizedBox(
                  width: 400,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        performSearch();
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                    ),
                    child: const Text('Search'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDropdownInput({
    required String label,
    required String value,
    required List<String> items,
    required Function(String?) onChanged,
    required IconData icon,
  }) {
    return Row(
      children: [
        Icon(icon),
        const SizedBox(width: 10.0),
        Expanded(
          child: InputDecorator(
            decoration: InputDecoration(
              labelText: label,
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: value,
                onChanged: onChanged,
                items: items.map<DropdownMenuItem<String>>((String item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildDatePickerInput({
    required String label,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    final formattedDate = DateFormat('EEEE, d MMM yyyy').format(_departureDate);
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(width: 10.0),
          Expanded(
            child: InputDecorator(
              decoration: InputDecoration(
                labelText: label,
              ),
              child: Text(formattedDate),
            ),
          ),
        ],
      ),
    );
  }


  Widget buildTimePickerInput({
    required String label,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    final formattedTime = _departureTime.format(context);
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(width: 10.0),
          Expanded(
            child: InputDecorator(
              decoration: InputDecoration(
                labelText: label,
              ),
              child: Text(formattedTime),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildFormInput({
    required String label,
    TextEditingController? controller,
    required IconData icon,
    TextInputType? keyboardType,
  }) {
    return Row(
      children: [
        Icon(icon),
        const SizedBox(width: 10.0),
        Expanded(
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
              labelText: label,
            ),
            keyboardType: keyboardType,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter $label';
              }
              return null;
            },
          ),
        ),
      ],
    );
  }

  void performSearch() {
    final fromCity = _selectedFromCity;
    final toCity = _selectedToCity;
    final passengers = int.parse(_passengersController.text);
    final seatClass = _selectedSeatClass;

    print('From: $fromCity');
    print('To: $toCity');
    print('Passengers: $passengers');
    print('Seat Class: $seatClass');
  }
}