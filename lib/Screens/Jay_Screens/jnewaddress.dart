import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class JayNewAddress extends StatefulWidget {
  const JayNewAddress({super.key});

  @override
  State<JayNewAddress> createState() => _JayNewAddressState();
}

class _JayNewAddressState extends State<JayNewAddress> {
  final _formkey = GlobalKey<FormState>();
  final _pfnoController = TextEditingController(),
      _societyController = TextEditingController(),
      _cityController = TextEditingController(),
      _stateController = TextEditingController(),
      _pincodeController = TextEditingController();

  void _saveAddress() {
    if (_formkey.currentState!.validate()) {
      String pfNo = _pfnoController.text,
          society = _societyController.text,
          city = _cityController.text,
          state = _stateController.text,
          pincode = _pincodeController.text;

      String fullAddress = '$pfNo $society $city $state $pincode';
      // Map<String, String> fullAddress = {
      //   'pfNo': pfNo,
      //   'society': society,
      //   'city': city,
      //   'state': state,
      //   'pincode': pincode,
      // };
      print('$pfNo $society $city $state $pincode');

      Fluttertoast.showToast(
        msg: 'Address Saved Successfully',
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 2,
        backgroundColor: Color.fromARGB(255, 255, 0, 0),
        textColor: Colors.black,
        fontSize: 18,
        toastLength: Toast.LENGTH_LONG,
      );

      Navigator.pop(context, fullAddress);
    }
  }

  @override
  void dispose() {
    _pfnoController.dispose();
    _societyController.dispose();
    _cityController.dispose();
    _stateController.dispose();
    _pincodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Address'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Card(
                  elevation: 10,
                  margin: const EdgeInsets.all(10),
                  child: TextFormField(
                    controller: _pfnoController,
                    decoration: InputDecoration(
                      labelText: 'Plot/Flat No.',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Plot/Flat No. is required';
                      }
                      return null;
                    },
                    onSaved: (value) {},
                  ),
                ),
                SizedBox(height: 10),
                Card(
                  elevation: 10,
                  margin: const EdgeInsets.all(10),
                  child: TextFormField(
                    controller: _societyController,
                    decoration: InputDecoration(
                      labelText: 'Society/Area',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Society/Area is required';
                      }
                      return null;
                    },
                    onSaved: (value) {},
                  ),
                ),
                SizedBox(height: 10),
                Card(
                  elevation: 10,
                  margin: const EdgeInsets.all(10),
                  child: TextFormField(
                    controller: _cityController,
                    decoration: InputDecoration(
                      labelText: 'City',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'City is required';
                      }
                      return null;
                    },
                    onSaved: (value) {},
                  ),
                ),
                SizedBox(height: 10),
                Card(
                  elevation: 10,
                  margin: const EdgeInsets.all(10),
                  child: TextFormField(
                    controller: _stateController,
                    decoration: InputDecoration(
                      labelText: 'State',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'State is required';
                      }
                      return null;
                    },
                    onSaved: (value) {},
                  ),
                ),
                SizedBox(height: 10),
                Card(
                  elevation: 10,
                  margin: const EdgeInsets.all(10),
                  child: TextFormField(
                    controller: _pincodeController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Pincode',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none),
                    ),
                    validator: (value) {
                      if (value == null ||
                          value.isEmpty ||
                          value.toString().length > 6) {
                        return 'Enter valid Pincode';
                      }
                      return null;
                    },
                    onSaved: (value) {},
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _saveAddress,
                  child: Text('Save'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
