import 'package:flutter/material.dart';

class InputsPage extends StatefulWidget {
  const InputsPage({Key? key}) : super(key: key);

  @override
  _InputsPageState createState() => _InputsPageState();
}

class _InputsPageState extends State<InputsPage> {
  String userName = '';
  TextEditingController controllerUserName = TextEditingController();
  TextEditingController controllerUserEmail = TextEditingController();
  TextEditingController controllerUserPassword = TextEditingController();
  TextEditingController controllerUserDate = TextEditingController();

  List<String> items = ['Bogota', 'Medellin', 'Pereira'];
  String itemSelectedDropDown = 'Bogota';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs Page'),
        actions: [
          Container(
            padding: const EdgeInsets.all(5),
            child: const CircleAvatar(
              child: Text('DB'),
              backgroundColor: Colors.orange,
              radius: 25,
            ),
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        children: [
          _inputUserName(),
          const Divider(),
          _inputEmail(),
          const Divider(),
          _inputPassword(),
          const Divider(),
          _inputDate(context),
          const Divider(),
          _dropDownMenu(),
        ],
      ),
    );
  }

  Widget _inputUserName() {
    return TextField(
      controller: controllerUserName,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          hintText: 'Nombre',
          labelText: 'Nombre',
          suffixIcon: Icon(Icons.person),
          icon: Icon(Icons.account_box_outlined)),
      onChanged: (valor) {
        setState(() {
          userName = controllerUserName.text;
        });
      },
    );
  }

  Widget _inputEmail() {
    return TextField(
      controller: controllerUserEmail,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          hintText: 'Email',
          labelText: 'Email',
          suffixIcon: Icon(Icons.alternate_email),
          icon: Icon(Icons.email)),
    );
  }

  Widget _inputPassword() {
    return TextField(
      controller: controllerUserPassword,
      obscureText: true,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          hintText: 'Password',
          labelText: 'Password',
          suffixIcon: Icon(Icons.lock_open_rounded),
          icon: Icon(Icons.lock)),
    );
  }

  Widget _inputDate(BuildContext context) {
    return TextField(
      controller: controllerUserDate,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          hintText: 'fecha',
          labelText: 'fecha',
          suffixIcon: Icon(Icons.calendar_today_outlined),
          icon: Icon(Icons.perm_contact_calendar)),
      onTap: () {
        selectUserDate(context);
      },
    );
  }

  Widget _dropDownMenu() {
    return Row(
      children: [
        const Icon(Icons.add_outlined),
        Expanded(
            child: DropdownButton(
          value: itemSelectedDropDown,
          items: getMenuItems(),
          onChanged: (value) {
            setState(() {
              itemSelectedDropDown = value.toString();
            });
          },
        ))
      ],
    );
  }

  selectUserDate(BuildContext context) async {
    DateTime? date = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2020),
        lastDate: DateTime(2023));

    if (date != null) {
      setState(() {
        controllerUserDate.text = date.toString();
      });
    }
  }

  List<DropdownMenuItem<String>> getMenuItems() {
    List<DropdownMenuItem<String>> itemsList = [];
    for (var item in items) {
      itemsList.add(DropdownMenuItem(
        child: Text(item),
        value: item,
      ));
    }
    return itemsList;
  }
}
