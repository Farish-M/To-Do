//Widget that holds the form validation information parameters
import 'package:flutter/material.dart';
import 'package:productivity_todolist_schedule/screens/main/views/accountpage.dart';

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: InputDecoration(
              contentPadding: new EdgeInsets.only(bottom: 5),
              labelText: "First name",
              hintText: "i.e John",
            ),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your first name';
              }
              if (RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$")
                  .hasMatch(value)) {
                return 'Enter a valid first name';
              }
              return null;
            },
          ),
          SizedBox(
            height: 25.0,
          ),
          TextFormField(
            decoration: InputDecoration(
                contentPadding: new EdgeInsets.only(bottom: 5),
                labelText: "Last name",
                hintText: "Family name or another name"),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your last name';
              }
              if (RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$")
                  .hasMatch(value)) {
                return 'Enter a valid last name';
              }
              return null;
            },
          ),
          SizedBox(
            height: 25.0,
          ),
          TextFormField(
            decoration: InputDecoration(
                contentPadding: new EdgeInsets.only(bottom: 5),
                labelText: "Password",
                hintText: "Minimum 8 characters"),
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
            height: 25.0,
          ),
          TextFormField(
            decoration: InputDecoration(
                contentPadding: new EdgeInsets.only(bottom: 5),
                labelText: "Email Address",
                hintText: "Email@Domain.com"),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter email address';
              }
              if (!RegExp(
                      "^[a-zA-Z0-9.!#%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*")
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
            height: 25.0,
          ),
          TextFormField(
            decoration: InputDecoration(
              contentPadding: new EdgeInsets.only(bottom: 5),
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
              return value.length != 10 ? 'Enter a valid phone number' : null;
            },
          ),
          SizedBox(
            height: 25.0,
          ),
          //Catagorised Postal Address information separation
          Text("Postal Address"),
          TextFormField(
            decoration: InputDecoration(
              contentPadding: new EdgeInsets.only(bottom: 5),
              labelText: "Country",
            ),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your country';
              }
              if (RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$")
                  .hasMatch(value)) {
                return 'Enter a valid country';
              }
              return null;
            },
          ),
          SizedBox(
            height: 25.0,
          ),
          TextFormField(
            decoration: InputDecoration(
              contentPadding: new EdgeInsets.only(bottom: 5),
              labelText: "State",
            ),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your state';
              }
              if (RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$")
                  .hasMatch(value)) {
                return 'Enter a valid state';
              }
              return null;
            },
          ),
          SizedBox(
            height: 25.0,
          ),
          TextFormField(
            decoration: InputDecoration(
              contentPadding: new EdgeInsets.only(bottom: 5),
              labelText: "Address",
            ),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your address';
              }
              if (RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$")
                  .hasMatch(value)) {
                return 'Enter a valid address';
              }
              return null;
            },
          ),
          SizedBox(
            height: 25.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate returns true if the form is valid according to set parameters for email address
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Account Details Changed')),
                  );
                  Navigator.push(
                      context,
                      //Navigates user to the new to-do page
                      MaterialPageRoute(builder: (context) => AccountPage()));
                }
              },
              child: const Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}
