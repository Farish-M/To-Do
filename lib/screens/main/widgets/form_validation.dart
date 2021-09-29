//Widget that holds the form validation information parameters
import 'package:flutter/material.dart';
import 'package:productivity_todolist_schedule/screens/main/views/accountpage.dart';
import 'package:productivity_todolist_schedule/screens/main/widgets/inclusivity%20options/inclusivity_widgets.dart';
import 'package:productivity_todolist_schedule/screens/main/widgets/searchbar.dart';

class ValidationForm extends StatefulWidget {
  const ValidationForm({Key? key}) : super(key: key);

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<ValidationForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
        key: _formKey,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchBar(),
              SizedBox(
                height: 2.0,
              ),
              InclusivityOptions(),
              SizedBox(
                height: 2.0,
              ),
              Text(
                "Personal Details",
                style: TextStyle(
                    fontWeight: FontWeight.bold, height: 1, fontSize: 15),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "First name",
                  hintText: "i.e John",
                ),
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your first name';
                  }
                  if (RegExp(
                          r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$")
                      .hasMatch(value)) {
                    return 'Enter a valid first name';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 2.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Last name",
                    hintText: "Family name or another name"),
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your last name';
                  }
                  if (RegExp(
                          r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$")
                      .hasMatch(value)) {
                    return 'Enter a valid last name';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 2.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Date of Birth", hintText: "DD/MM/YYYY"),
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your date of birth';
                  }
                  //Regular expression for the date of birth
                  if (RegExp(
                          r"^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(\/|-|\.)(?:0?[13-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$")
                      .hasMatch(value)) {
                    return 'Enter a valid date';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 2.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Password", hintText: "Minimum 8 characters"),
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter password';
                  }
                  return value.length < 8
                      ? 'Password must be greater than eight characters'
                      : null;
                },
              ),
              SizedBox(
                height: 2.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Email Address", hintText: "Email@Domain.com"),
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter email address';
                  }
                  if (!RegExp(
                          "^[a-zA-Z0-9.!#%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,153}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,153}[a-zA-Z0-9])?)*")
                      .hasMatch(value)) {
                    return 'Enter a valid email address';
                  }
                  if (!RegExp(".com").hasMatch(value)) {
                    return 'Include .com';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 2.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Phone Number",
                ),
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter phone number';
                  }
                  if (!RegExp("[0-9]").hasMatch(value)) {
                    return 'Enter a valid phone number';
                  }
                  return value.length != 2
                      ? 'Enter a valid phone number'
                      : null;
                },
              ),
              SizedBox(
                height: 2.0,
              ),
              //Catagorised Postal Address information separation
              Text(
                "Postal Address",
                style: TextStyle(
                    fontWeight: FontWeight.bold, height: 1, fontSize: 15),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Country",
                ),
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your country';
                  }
                  if (RegExp(
                          r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$")
                      .hasMatch(value)) {
                    return 'Enter a valid country';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 2.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "State",
                ),
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your state';
                  }
                  if (RegExp(
                          r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$")
                      .hasMatch(value)) {
                    return 'Enter a valid state';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 2.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Address",
                ),
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your address';
                  }
                  if (RegExp(
                          r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$")
                      .hasMatch(value)) {
                    return 'Enter a valid address';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 2.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Validate returns true if the form is valid according to set parameters for all text form fields
                    if (_formKey.currentState!.validate()) {
                      // If the form is valid, send user to account page.
                      Navigator.push(
                          context,
                          //Navigates user to the new to-do page
                          MaterialPageRoute(
                              builder: (context) => AccountPage()));
                    }
                  },
                  child: const Text('Submit'),
                ),
              ),
            ],
          ),
        ));
  }
}
