import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SendItems extends StatefulWidget {
  const SendItems({super.key});

  @override
  State<SendItems> createState() => _SendItemsState();
}

class _SendItemsState extends State<SendItems> {
  List<Widget> dropLocations = [];

  void addDropLocation() {
    setState(() {
      dropLocations.add(dropLocationField(dropLocations.length));
    });
  }

  void deleteDropLocation(int index) {
    setState(() {
      dropLocations.removeAt(index);
    });
  }

  Widget dropLocationField(int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Gap(10),
        Text(
          'Drop Location ${index + 2}',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        Gap(5),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Icon(
                Icons.location_on,
                color: Color.fromARGB(255, 136, 150, 247),
              ),
              Gap(3),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter Drop Location',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  deleteDropLocation(index);
                },
                icon: Icon(
                  Icons.delete_outline_outlined,
                  color: const Color.fromARGB(255, 243, 100, 90),
                  size: 20,
                ),
              ),
            ],
          ),
        ),
        Gap(10),
      ],
    );
  }

  bool _cashCheck = false;
  TextEditingController _dateController = TextEditingController();
  DateTime? selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        _dateController.text = "${picked.day}/${picked.month}/${picked.year}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Send Items',
          style: TextStyle(fontSize: 18),
        ),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 112, 112, 247),
          ),
          style: IconButton.styleFrom(
            iconSize: 20,
            fixedSize: Size(10, 10),
            backgroundColor: Color.fromARGB(255, 0, 0, 255),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Pickup',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: ' & Drop Location',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ],
                ),
              ),
              Gap(15),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 136, 150, 247),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gap(10),
                    Text(
                      'Pickup Location*',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Gap(5),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.my_location,
                            color: Color.fromARGB(255, 136, 150, 247),
                          ),
                          Gap(3),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Enter Pickup Location',
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Gap(20),
                    Text(
                      'Drop Location*',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Gap(5),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Color.fromARGB(255, 136, 150, 247),
                          ),
                          Gap(3),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Enter Drop Location',
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Gap(20),
                    Column(
                      children: dropLocations,
                    ),
                    Row(
                      children: [
                        Spacer(),
                        IconButton(
                          onPressed: addDropLocation,
                          icon: Icon(Icons.add),
                          style: IconButton.styleFrom(
                            iconSize: 20,
                            backgroundColor: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                        Text(
                          'Add Drop',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Gap(15),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Items',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: 'Type',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ],
                ),
              ),
              Gap(15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  itemsType(
                      Icon(Icons.set_meal_rounded,
                          color: Color.fromARGB(255, 136, 150, 247)),
                      'Food'),
                  itemsType(
                      Icon(Icons.card_giftcard,
                          color: Color.fromARGB(255, 136, 150, 247)),
                      'Clothes'),
                  itemsType(
                      Icon(Icons.grid_view,
                          color: Color.fromARGB(255, 136, 150, 247)),
                      'Others'),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: _cashCheck,
                    onChanged: (bool? value) {
                      setState(() {
                        _cashCheck = value!;
                      });
                    },
                    activeColor: Color.fromARGB(255, 136, 150, 247),
                  ),
                  Text(
                    'Driver Must Receive Cash Amount',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Vehicle',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: 'Type',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ],
                ),
              ),
              Gap(15),
              Container(
                padding: EdgeInsets.all(8),
                height: 70,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, -5),
                        blurRadius: 10,
                        spreadRadius: 1)
                  ],
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/taxi/sedan.png',
                      fit: BoxFit.fitWidth,
                      width: 70,
                    ),
                    Gap(10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Vehicle Name',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text(
                          '2.000 KD',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ],
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.chevron_right))
                  ],
                ),
              ),
              Gap(15),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Delivery',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: ' Date & Time',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ],
                ),
              ),
              Gap(15),
              Container(
                padding: EdgeInsets.all(8),
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, -5),
                        blurRadius: 10,
                        spreadRadius: 1)
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Gap(30),
                      Text(
                        'Date*',
                        style: TextStyle(fontSize: 16),
                      ),
                      Gap(10),
                      Container(
                        padding: EdgeInsets.all(8),
                        width: MediaQuery.sizeOf(context).width,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0, -5),
                                blurRadius: 10,
                                spreadRadius: 1)
                          ],
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: _dateController,
                                decoration: InputDecoration(
                                  hintText: 'Select Date',
                                  border: InputBorder.none,
                                ),
                                readOnly: true,
                                onTap: () {
                                  _selectDate(context);
                                },
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.calendar_today,
                                  color: Colors.blue),
                              onPressed: () {
                                _selectDate(context);
                              },
                            ),
                          ],
                        ),
                      ),
                      Gap(10),
                      Text(
                        'Time*',
                        style: TextStyle(fontSize: 16),
                      ),
                      Gap(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          deliveryTime('09.00 AM TO 09.30 AM'),
                          deliveryTime('09.00 AM TO 09.30 AM'),
                        ],
                      ),
                      Gap(15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          deliveryTime('09.00 AM TO 09.30 AM'),
                          deliveryTime('09.00 AM TO 09.30 AM'),
                        ],
                      ),
                      Gap(15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          deliveryTime('09.00 AM TO 09.30 AM'),
                          deliveryTime('09.00 AM TO 09.30 AM'),
                        ],
                      ),
                      Gap(15),
                    ],
                  ),
                ),
              ),
              Gap(15),
              Row(
                children: [
                  Text(
                    'Sub Total',
                    style: TextStyle(fontSize: 16),
                  ),
                  Spacer(),
                  Text(
                    '20.000 KD',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              Gap(15),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 136, 150, 247),
                  fixedSize: Size(MediaQuery.sizeOf(context).width, 20),
                  elevation: 10,
                ),
                onPressed: () {},
                child: Text(
                  'Proceed to Checkout',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget itemsType(Icon itemIcon, String itemType) {
    return Container(
      padding: EdgeInsets.all(8),
      height: 40,
      width: MediaQuery.sizeOf(context).width / 3.5,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              color: Colors.black26,
              offset: Offset(0, -5),
              blurRadius: 10,
              spreadRadius: 1)
        ],
      ),
      child: Row(
        children: [
          itemIcon,
          Gap(5),
          Text(
            itemType,
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
        ],
      ),
    );
  }

  Widget deliveryTime(String dTime) {
    return Container(
      padding: EdgeInsets.all(8),
      width: MediaQuery.sizeOf(context).width / 2.45,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              color: Colors.black26,
              offset: Offset(0, -5),
              blurRadius: 10,
              spreadRadius: 1)
        ],
      ),
      child: Text(
        dTime,
        style: TextStyle(fontSize: 12),
      ),
    );
  }
}
