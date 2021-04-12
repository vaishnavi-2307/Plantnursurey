import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nursurey/plantdetail.dart';
class  Plants extends StatefulWidget {
  @override
  _PlantsState createState() => _PlantsState();
}

class _PlantsState extends State<Plants> {

  ScrollController _scrollController;

  List allDescriptions =[
    'LuckyBamboo is great  air purifying plant ,It requires bright, ventilated areas. It tolerates dry air and does not require constant spraying. ',
    'It is a type of plant that prefers indirect lighting, which means makes it perfect for indoor . Calathea plants are popular for indoor purposes because they are generally easy to care for and they look great',
    'Jade plants are succulent houseplants, which makes them fairly resilient and easy to grow indoors—plus, they’re long-lived. See how to care for your jade plant.',

  ];
  String description;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController= ScrollController();
    _scrollController.addListener(changedesc);
    setState(() {
      description = allDescriptions[0];
    });
  }
  changedesc() {
    var value = _scrollController.offset.round();
    var descIndex =(value/150).round();
    print(value);
    setState(() {
      description = allDescriptions[descIndex];
    });
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          height: 350.0,
          child: ListView(
            padding: EdgeInsets.only(left:25.0 ),
            controller: _scrollController,
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              getPlantCard('assets/images/bamboo1.png', '40', 'Indoor', 'Lucky Bamboo'),
              SizedBox(width: 15.0),
              getPlantCard('assets/images/cl.png', '25', 'Indoor', 'Calathea'),
              SizedBox(width: 15.0),
              getPlantCard('assets/images/jade.png', '30', 'Indoor', 'Jade plant '),
              SizedBox(width: 10.0),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 25.0 ,top:  10.0),
          child: Text(
            'Description',
            style: TextStyle(
              fontFamily: 'Montserrat',
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 17.0,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 25.0 ,top:  10.0),
          child: Text(
            description,
            style: TextStyle(
              fontFamily: 'Montserrat',
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 17.0,
            ),
          ),
        ),

      ],
    );
  }
  // ignore: non_constant_identifier_names
  getPlantCard(
      // ignore: non_constant_identifier_names
      String imgPath , String Price ,String PlantType , String PlantName ) {
    return Stack(
      children: <Widget>[
        Container(
          height: 330.0,
          width: 220.0,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(10.0),
                color: Color(0xFF399D63)
            ),
            height: 320.0,
            width: 225.0,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
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
                          '\$' + Price,
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(width: 10,)
                  ],
                ),
                Image(
                  image: AssetImage(imgPath) ,
                  height: 165.0,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(width: 25.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          PlantType,
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF8AC7A4)),
                        ),
                        Text(
                          PlantName,
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: <Widget>[
                    SizedBox(width: 25.0),
                    Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFF8AC7A4),
                            style: BorderStyle.solid,
                            width: 0.5,
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                          color:Color(0xFF399D63)
                      ),
                      child: Icon(Icons.wb_sunny_outlined ,
                          color: Colors.white.withOpacity(1.0),size:20.0 ),


                    ),
                    SizedBox(width: 25.0),
                    Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFF8AC7A4),
                            style: BorderStyle.solid,
                            width: 0.5,
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                          color:Color(0xFF399D63)
                      ),
                      child: Icon(Icons.local_fire_department_rounded ,
                          color: Colors.white.withOpacity(1.0),size:20.0 ),
                    ),
                    SizedBox(width: 25.0),
                    Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFF8AC7A4),
                            style: BorderStyle.solid,
                            width: 0.5,
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                          color:Color(0xFF399D63)
                      ),
                      child: Icon(Icons.thermostat_rounded ,
                          color: Colors.white.withOpacity(1.0),size:20.0 ),
                    ),
                    SizedBox(width: 10.0),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>PlantDetail()
                        ));
                      },
                      child: Container(
                        height: 30.0,
                        width: 30.0,
                        decoration: BoxDecoration(color: Color(0xFF399D63)),
                        child: Icon(Icons.help_outline,
                            color: Colors.white.withOpacity(0.4),size:20.0 ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding:EdgeInsets.only(left: 90.0,top: 300.0),
          child: Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: Colors.black
            ),
            child: Center(
                child: Icon(Icons.shopping_cart_outlined,color: Colors.white)
            ),
          ),

        ),
      ],
    );
  }
}
