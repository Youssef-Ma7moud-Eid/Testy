import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:test/Core/utilities/styles.dart';

class UPloadSection extends StatelessWidget {
  const UPloadSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white60,
          height: 250,
         alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: Text(
              'Upload',
              style: Styles.newrecordtitle,
            ),
          ),
          
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60,vertical: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 216, 233, 226),
                    ),
                    child: Icon(
                       color: Color.fromARGB(255, 55, 128, 99),
                      size: 50,
                     IconlyLight.image,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 227, 210, 187),
                    ),
                    child: Icon(
                         color: Color.fromARGB(255, 219, 173, 112),
                      size: 50,
                      IconlyLight.paper,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 225, 203, 203),
                    ),
                    child: Icon(
                       color: Color.fromARGB(255, 160, 65, 65),
                      size: 50,
                    IconlyLight.camera
                    ),
                  ),
                ],
              ),
            ),
          
        ],
      ),
    );
  }
}