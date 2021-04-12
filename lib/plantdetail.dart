import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlantDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView (
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                width:  MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Color(0xFF399D63)),
              ),
              Positioned(
                top:  MediaQuery.of(context).size.height / 2,
                child: Container(
                  height:  MediaQuery.of(context).size.height / 2,
                  width:  MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25.0),
                        topRight:Radius.circular(25.0),
                      ),
                      color:  Colors.white
                  ),
                ),

              ),
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              Padding(
                padding:EdgeInsets.only (
                  top: 10.0, left: MediaQuery.of(context).size.width -60.0,
                ),
                child:  FloatingActionButton(
                    onPressed:(){},
                    backgroundColor: Color(0xFF8AC7A4),
                    mini:true,
                    elevation:0.0 ,
                    child: Icon(Icons.shopping_cart_outlined,
                        color: Colors.white,size: 25.0)
                ),
              ),
              Positioned(
                top: 10.0,
                left:  MediaQuery.of(context).size.width -30.0,
                child: Container(
                  height: 18.0,
                  width: 18.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.0),
                      color: Colors.white
                  ),
                  child: Center(
                    child: Text(
                      '1',
                      style: TextStyle(color: Color(0xFF399D63),
                          fontFamily: 'Montserrat'
                      ),
                    ),
                  ),
                ),

              ),
              Padding(
                padding: EdgeInsets.only(left: 25.0,top: 60.0 ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 10.0),
                    Text(
                      'INDOOR',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 14.0,
                          fontWeight: FontWeight.w800,
                          color: Color(0xFF8AC7A4)),
                    ),
                    Text(
                      'Calathea',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 45.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'FROM',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF8AC7A4)),
                    ),
                    Text(
                      '\$30',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 25.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'SIZES',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF8AC7A4)),
                    ),
                    Text(
                      'Small',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 25.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: Colors.black
                      ),
                      child: Center(
                          child: Icon(Icons.shopping_cart_outlined,
                              color: Colors.white)
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: (MediaQuery.of(context).size.height /2),
                left: (MediaQuery.of(context).size.width /2),
                child: Image(
                  image: AssetImage('assets/images/cl.png'),
                  fit :BoxFit.cover,
                  height: 250.0,
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height - 275.0,
                      left: 20.0,
                      right: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'All to know...',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 25.0,
                            fontWeight: FontWeight.w800
                        ),
                      ),
                      SizedBox(height: 12.0),
                      Text(
                        'If you are completely new to houseplants then Ficus is a brilliant first plant to adopt, it is very easy to look after and won\'t occupy too much space.',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 18.0,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                      SizedBox(height: 50.0),
                      Text(
                        'Details',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        'Plant height: 35-45cm;',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                      Text(
                        'Nursery pot width: 12cm;',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                    ],
                  ))
            ],
          )
        ],
      ),

    );
  }
}
