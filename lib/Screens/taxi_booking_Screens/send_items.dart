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

  void deleteDropLocation(int index){
    setState(() {
      dropLocations.removeAt(index);
    });
  }

  Widget dropLocationField(int index){
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(10),
            Text(
              'Drop Location ${index+2}',
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
                    onPressed: () {deleteDropLocation(index);},
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
            ],
          ),
        ),
      ),
    );
  }
}
