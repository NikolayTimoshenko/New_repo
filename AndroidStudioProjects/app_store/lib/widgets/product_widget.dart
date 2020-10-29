import 'package:flutter/material.dart';

Widget productContainer(String main_image, String company_name, String app_name, String logo_image, String price){
  return Container(
    height: 425,
    width: 395,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(main_image),
        fit: BoxFit.cover,
      ),
      borderRadius: BorderRadius.circular(15),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(20, 15, 15, 0),
          child: Align(
            alignment: Alignment(-0.88, 0.88),
            child: Container(
              width: 65,
              height: 25,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Center(
                child: Text(price, style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w800,
                    color: Colors.blue
                ),
                ),
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
          // width: 150,
          height: 40,
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 50,
                  ),
                  Text(company_name,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.17
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 3,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 145,
                  ),
                  Text(app_name,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.17
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
          child: Align(
            alignment: Alignment(0.88, 0.92),
            child: Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage(logo_image),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.yellow.shade50,
                  borderRadius: BorderRadius.circular(12)
              ),
            ),
          ),
        ),
      ],
    ),
  );
}