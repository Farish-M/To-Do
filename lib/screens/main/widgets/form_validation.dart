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
            //NOTE: The sizedbox() widget is used to create a buffer space between each other widgets

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Refers to widget where I built the search bar
              SearchBar(),
              SizedBox(
                height: 2.0,
              ),
              InclusivityOptions(),
              SizedBox(
                height: 2.0,
              ),
              //Plain text used to describe the category of the text fields
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
                  //Detects if text is null and/or empty
                  //Then displays relevant text
                  if (value == null || value.isEmpty) {
                    return 'Please enter your first name';
                  }
                  //Detects if text matches assigned regular expression
                  //Then displays relevant text
                  if (RegExp(r"^[0-9]*$").hasMatch(value)) {
                    return 'Enter a valid name';
                  }
                  //If else it will return null
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
                  //Detects if text is null and/or empty
                  //Then displays relevant text
                  if (value == null || value.isEmpty) {
                    return 'Please enter your last name';
                  }
                  //Detects if text matches assigned regular expression
                  //Then displays relevant text
                  if (RegExp(r"^[0-9]*$").hasMatch(value)) {
                    return 'Enter a valid last name';
                  }
                  //If else it will return null
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
                  //Detects if text is null and/or empty
                  //Then displays relevant text
                  if (value == null || value.isEmpty) {
                    return 'Please enter your date of birth';
                  }
                  //Regular expression for the date of birth
                  if (!RegExp(r"[0-9]").hasMatch(value)) {
                    return 'Enter a valid date';
                  }
                  //If else it will return null
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
                  //Detects if text is null and/or empty
                  //Then displays the relevant text
                  if (value == null || value.isEmpty) {
                    return 'Please enter password';
                  }
                  //Detects if text is less then a value length
                  //Then displays the relevant textx
                  return value.length < 8
                      ? 'Password not secure, must be greater than eight characters'
                      //If else it will return null
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
                  //Detects if text is null and/or empty
                  //Then displays relevant text
                  if (value == null || value.isEmpty) {
                    return 'Please enter email address';
                  }
                  //Regular expression for email addresses
                  //Requests for an @ to be present in the text field
                  if (!RegExp(
                          "^[a-zA-Z0-9.!#%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,153}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,153}[a-zA-Z0-9])?)*")
                      .hasMatch(value)) {
                    return 'Enter a valid email address';
                  }
                  //Detects if .com is included within the email address
                  //Else it will request it
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
                  //Detects if text is null and/or empty
                  if (value == null || value.isEmpty) {
                    return 'Please enter phone number';
                  }
                  //Regular expression for the text box to detect if the text field includes anything that isn't numbers
                  if (!RegExp("[0-9]").hasMatch(value)) {
                    return 'Enter a valid phone number';
                  }
                  //Detects if the value length is not 10
                  return value.length != 10
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
                  //Detects if text is null and/or empty
                  if (value == null || value.isEmpty) {
                    return 'Please enter your country';
                  }
                  //Detects if country textfield contains numbers
                  if (RegExp(r"^[0-9]*$").hasMatch(value)) {
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
                  //Detects if text is null and/or empty
                  if (value == null || value.isEmpty) {
                    return 'Please enter your state';
                  }
                  //Detects if textfield for state contains numbers
                  if (RegExp(r"^[0-9]*$").hasMatch(value)) {
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
                  //Detects if text is null and/or empty
                  if (value == null || value.isEmpty) {
                    return 'Please enter your address';
                  }
                  //Detects if textfield matches the regular expression
                  //Regular expression requests letters Aa-Zz and numbers 0-9
                  if (RegExp(r"[^A-Za-z0-9]").hasMatch(value)) {
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
                          //Navigates user to the account page
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
