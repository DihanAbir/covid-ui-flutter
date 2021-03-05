import 'package:flutter/material.dart';
import 'package:flutter_app/Widgets/widgets.dart';
import 'package:flutter_app/config/palette.dart';
import 'package:flutter_app/config/style.dart';

class Home_Screen extends StatefulWidget {
  @override
  _Home_ScreenState createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  String _country = "USA";
  // final prevention = ['dihan', 'asdas','adsad','sadasdsad'];

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: Custome_NavBar(),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: [
          _buildHeader(screenHeight),
          _buildPriventionTips(screenHeight),
          _buildYourOwnTest(screenHeight),
          _buildYourOwnTest2(screenHeight),
        ],
      ),
    );
  }




  SliverToBoxAdapter _buildHeader (double screenHeight){
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Palette.primaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40.0),
            bottomRight: Radius.circular(40.0),
          )

        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("COVID-19",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
                ),
                CountryDropDown(countries: ['BD', 'USA', 'CN', 'IT', 'BR', 'AUS', 'CH'],
                    country: _country,
                    onChanged: (val) => setState(()=> _country = val) ),
              ],
            ),
            SizedBox(height: screenHeight * 0.05,),
            Column(
              children: [
                Text("Are You Feeling Sick? ",
                style:  TextStyle(color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,

                ),
                ),
                SizedBox(height: screenHeight * 0.03,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  FlatButton.icon(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                      onPressed: (){},
                      color: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),

                    ),

                    icon: const Icon (
                      Icons.phone,
                      color: Colors.white,
                    ),

                    label: Text(
                      "Call Now",
                      style: Style.buttonTextStyle,

                    ),
                    textColor: Colors.white,

                      ),
                  FlatButton.icon(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    onPressed: (){},
                    color: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),

                    ),

                    icon: const Icon (
                      Icons.phone,
                      color: Colors.white,
                    ),

                    label: Text(
                      "Text Now",
                      style: Style.buttonTextStyle,

                    ),
                    textColor: Colors.white,

                  )
                ],)
              ],

            )
          ],
        ),
      ),
    );
  }



  SliverToBoxAdapter _buildPriventionTips (double screenHeight){
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        color: Colors.deepOrangeAccent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Previntion Tip's",
            style: const TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.w600,

            ),
            ),
            const SizedBox(height: 20.0,),

          ],
        ),
      ),
    );
  }


  SliverToBoxAdapter _buildYourOwnTest(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 20.0,
        ),
        padding: const EdgeInsets.all(10.0),
        height: screenHeight * 0.15,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFAD9FE4), Palette.primaryColor],
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Image.network("https://images.unsplash.com/photo-1470167290877-7d5d3446de4c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTl8fGhlYWx0aCUyMGNhcmUlMjBpbWFnZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Do your own test!',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                Text(
                  'Follow the instructions\nto do your own test.',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                  maxLines: 2,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildYourOwnTest2 (double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 20.0,
        ),
        padding: const EdgeInsets.all(10.0),
        height: screenHeight * 0.15,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [ Color(0xFFEE8899) , Color(0xFF040A31) ],
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Do your own test!',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                Text(
                  'Follow the instructions\nto do your own test.',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                  maxLines: 2,
                ),
              ],
            ),
            Image.network("https://images.unsplash.com/photo-1612023758939-d66474bc983d?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTN8fHxlbnwwfHx8&auto=format&fit=crop&w=500&q=60",),
          ],
        ),
      ),
    );
  }

}
