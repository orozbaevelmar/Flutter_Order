import 'package:flutter/material.dart';
import 'package:select_form_field/select_form_field.dart';

class MyDishes extends StatefulWidget {
  const MyDishes({super.key});

  @override
  State<MyDishes> createState() => _MyDishesState();
}

class _MyDishesState extends State<MyDishes> {
  final List<Map<String, dynamic>> _items = [
    {
      'value': 'sizze100',
      'label': '100',
      //'icon': Icon(Icons.stop),
    },
    {
      'value': 'size120',
      'label': '120',
      //'icon': Icon(Icons.fiber_manual_record),
      //'textStyle': TextStyle(color: Colors.red),
    },
    {
      'value': 'size200',
      'label': '200',
      //'enable': false,
      //'icon': Icon(Icons.big),
    },
  ];

  final List<Map<String, dynamic>> _beverages = [
    {
      'value': 'Maksym_shoro',
      'label': 'Максым Шоро',
      //'icon': Icon(Icons.stop),
    },
    {
      'value': 'Sultan_chai',
      'label': 'Султан-Чай',
      //'icon': Icon(Icons.fiber_manual_record),
      //'textStyle': TextStyle(color: Colors.red),
    },
    {
      'value': 'Chalap',
      'label': 'Чалап',
      //'enable': false,
      //'icon': Icon(Icons.big),
    },
  ];

  bool _isChecked1 = false;
  bool _isChecked2 = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text(
                  'Размер',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Expanded(
                child: SelectFormField(
                  initialValue: 'circle',
                  //icon: Icon(Icons.format_shapes),
                  labelText: 'Size',
                  items: _items,
                  // onChanged: (val) => print(val),
                  //onSaved: (val) => print(val),
                ),
              ),
            ],
          ),
        ),

        // 5
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text(
                  'Напитки',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Expanded(
                child: SelectFormField(
                  initialValue: 'circle',
                  //icon: Icon(Icons.format_shapes),
                  labelText: 'Beverages',
                  items: _beverages,
                  // onChanged: (val) => print(val),
                  //onSaved: (val) => print(val),
                ),
              ),
            ],
          ),
        ),

        //7
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Checkbox(
                value: _isChecked1,
                onChanged: (bool? value) {
                  setState(() {
                    _isChecked1 = value!;
                  });
                },
              ),
              Text('Сыр'),
              Expanded(
                child: Container(),
              ),
              Checkbox(
                value: _isChecked2,
                onChanged: (bool? value) {
                  setState(() {
                    _isChecked2 = value!;
                  });
                },
              ),
              Text('Оливковый')
            ],
          ),
        ),

        Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(onPressed: () {}, child: Text('Заказать')),
              ElevatedButton(onPressed: () {}, child: Text('Отменить')),
            ],
          ),
        ),
      ],
    );
  }
}
