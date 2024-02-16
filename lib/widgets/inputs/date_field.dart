import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateField extends StatefulWidget {
  final String label;
  DateTime? initialDate;
  DateTime? finalDate;
  DateTime? firstDate;
  double? width;
  BorderRadius? borderRedius;
  final TextEditingController controller;

  DateField({
    super.key,
    this.label = 'Fecha',
    DateTime? initialDate,
    DateTime? finalDate,
    DateTime? firstDate,
    this.width,
    this.borderRedius,
    required this.controller,
  })  : initialDate = initialDate ?? DateTime.now(),
        finalDate = finalDate ?? DateTime.now(),
        firstDate = firstDate ?? DateTime(1900);

  @override
  State<DateField> createState() => _DateFieldState();
}

class _DateFieldState extends State<DateField> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: widget.initialDate,
      firstDate: widget.firstDate!,
      lastDate: widget.finalDate!,
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        widget.controller.text = DateFormat('dd/MM/yyyy').format(selectedDate);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    TextEditingController controller = widget.controller;

    return Container(
      width: widget.width ?? width,
      child: TextFormField(
        decoration: InputDecoration(
          labelText: widget.label,
          border: OutlineInputBorder(
            borderRadius: widget.borderRedius ?? BorderRadius.circular(10),
          ),
          contentPadding: const EdgeInsets.all(15),
          hintText: 'yy-MMMM-dd',
        ),
        maxLines: 1,
        readOnly: true,
        controller: controller,
        onTap: () => _selectDate(context),
      ),
    );
  }
}
