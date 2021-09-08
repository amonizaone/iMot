import 'package:flutter/material.dart';
import 'package:imot/components/app_bar.dart';

class ServicePage extends StatefulWidget {
  ServicePage({Key? key}) : super(key: key);

  @override
  _ServicePageState createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  List<Map> serviceImage = [
    {
      "title": 'บริการจัดส่งพัสดุ',
      "subTitle": 'Nationwide Distribution',
      "imageSrc": 'https://iel.co.th/wp-content/uploads/2020/09/service-1.png'
    },
    {
      "title": 'บริการคลัง/เก็บแพ็คส่งสินค้า',
      "subTitle": 'Warehouse & Fulfillment',
      "imageSrc": 'https://iel.co.th/wp-content/uploads/2020/09/service-2.png'
    },
    {
      "title": 'บริการขนส่งควบคุมอุณหภูมิ',
      "subTitle": 'Cold Chain Logistics',
      "imageSrc": 'https://iel.co.th/wp-content/uploads/2020/09/service-4.png'
    },
    {
      "title": 'บริการขนส่งผักผลไม้',
      "subTitle": 'Fruit Delivery',
      "imageSrc": 'https://iel.co.th/wp-content/uploads/2021/05/ผลไม้-01-90.png'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FlexibleAppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Text(
              'บริการของเรา',
              style: TextStyle(
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
                fontSize: 26.0,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GridView.builder(
            //
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: this.serviceImage.length,
            itemBuilder: (context, index) {
              // print('this.serviceImage.length ${this.serviceImage.length}');
              final itemService = this.serviceImage[index];
              return InkWell(
                // hoverColor: Colors.amber,
                // focusColor: Colors.amber,
                // onTap: () => {},
                onTap: () {
                  print('object ${itemService}');
                },
                child: Card(
                  elevation: 2,
                  shadowColor: Colors.blueAccent,
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.network(
                            itemService['imageSrc'],
                            fit: BoxFit.fill,
                            // scale: 3,
                          ),
                        ),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.all(8),
                        title: Text(
                          itemService['title'],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12.5,
                          ),
                        ),
                        subtitle: Text(
                          itemService['subTitle'],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 11,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
