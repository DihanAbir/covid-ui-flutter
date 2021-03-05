import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Data/data.dart';
import 'package:flutter_app/Widgets/covid_bar_chart.dart';
import 'package:flutter_app/Widgets/custome_app_bar.dart';
import 'package:flutter_app/Widgets/states_grid.dart';
import 'package:flutter_app/config/palette.dart';
import 'package:flutter_app/config/style.dart';

class Stats_Screen extends StatefulWidget {
  @override
  _Stats_ScreenState createState() => _Stats_ScreenState();
}

class _Stats_ScreenState extends State<Stats_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.primaryColor,
      appBar: Custome_NavBar(),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: [
          _buildHeader(),
          _buildRegionTabBar(),
          _buildStatsTabBar(),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            sliver: SliverToBoxAdapter(
              child: StateGrid  (),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(top: 20.0),
            sliver: SliverToBoxAdapter(
              child: CovidBarChart(covidCases: CovidUSADailyCases),
            ),
          )
        ],
      ),

    );
  }
SliverPadding _buildHeader(){
    return SliverPadding(
      padding: const EdgeInsets.all(16.0),
      sliver: SliverToBoxAdapter(
        child: Text(
          "Statistic",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,

          ),
        ),
      ),
    );
}

  SliverToBoxAdapter _buildRegionTabBar(){
    return SliverToBoxAdapter(
      child: DefaultTabController(
        length: 2,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0),
          height: 50.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25.0)
          ),

          child: TabBar(
            indicator: BubbleTabIndicator(
              tabBarIndicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Colors.deepOrangeAccent,
              indicatorHeight: 40.0
                ),
            labelColor: Colors.white,
            labelStyle: Style.tabTextStyle,
            unselectedLabelColor: Colors.grey,


            tabs: [
              Text("My Country",style: TextStyle( fontSize: 19.0),),
              Text("Global",style: TextStyle( fontSize: 19.0),)
            ],

            onTap: (index){

            },
          ),

        ),
      ),
    );
}
  SliverPadding _buildStatsTabBar() {
    return SliverPadding(
      padding: const EdgeInsets.all(20.0),
      sliver: SliverToBoxAdapter(
        child: DefaultTabController(
          length: 3,
          child: TabBar(
            indicatorColor: Colors.transparent,
            labelStyle: Style.tabTextStyle,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white60,
            tabs: <Widget>[
              Text('Total'),
              Text('Today'),
              Text('Yesterday'),
            ],
            onTap: (index) {},
          ),
        ),
      ),
    );
  }



}
