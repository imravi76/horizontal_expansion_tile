import 'package:example/dummy_data.dart';
import 'package:flutter/material.dart';
import 'package:horizontal_expansion_tile/horizontal_expansion_tile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  DummyData dummyData = DummyData();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: 20),
              Container(
                height: 650,
                child: ListView.builder(
                  itemCount: dummyData.dummyData.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index){
                    return HorizontalExpansionTile(
                      title: SizedBox(
                        width: 185,
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 32,
                                left: 8,
                                right: 8,
                                bottom: 16,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      color: const Color(0xff1E1466).withOpacity(0.6),
                                      offset: const Offset(1.1, 4.0),
                                      blurRadius: 8.0,
                                    ),
                                  ],
                                  gradient: LinearGradient(
                                    colors: const <Color>[
                                      Color(0xff6F72CA),
                                      Color(0xff1E1466),
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    bottomRight: Radius.circular(8.0),
                                    bottomLeft: Radius.circular(8.0),
                                    topLeft: Radius.circular(8.0),
                                    topRight: Radius.circular(54.0),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 54,
                                    left: 16,
                                    right: 16,
                                    bottom: 8,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "${dummyData.dummyData[index]['title']!} ${index}",
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          letterSpacing: 0.2,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8, bottom: 8),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              "${dummyData.dummyData[index]['subtitle']!} ${index}",
                                              style: const TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 15,
                                                letterSpacing: 0.2,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 30,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: <Widget>[
                                          Text(
                                            dummyData.dummyData[index]['description']!,
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 22,
                                              letterSpacing: 0.2,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 4, bottom: 3),
                                            child: Text(
                                              "$index",
                                              style: const TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 10,
                                                letterSpacing: 0.2,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              left: 0,
                              child: Container(
                                width: 84,
                                height: 84,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFAFAFA).withOpacity(0.2),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 15,
                              left: 10,
                              child: SizedBox(
                                width: 60,
                                height: 60,
                                child: Icon(Icons.add_card_sharp, color: Colors.white,),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //leading: Icon(Icons.add),
                      //trailing: Icon(Icons.arrow_drop_down),
                      //title: Text("Test"),
                      children: [
                        Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.only(left: 5, bottom: 5),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      width: 60,
                                      padding: const EdgeInsets.all(16),
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Icon(Icons.add_card_sharp, color: Colors.white,),
                                    ),
                                    Container(
                                      width: 60,
                                      padding: const EdgeInsets.all(16),
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Icon(Icons.add_card_sharp, color: Colors.white,),
                                    ),
                                    Container(
                                      width: 60,
                                      padding: const EdgeInsets.all(16),
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Icon(Icons.add_card_sharp, color: Colors.white,),
                                    ),
                                    Container(
                                      width: 60,
                                      padding: const EdgeInsets.all(16),
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Icon(Icons.add_card_sharp, color: Colors.white,),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    SizedBox(
                                      width: 65,
                                      child: Column(
                                        children: [
                                          const Text(
                                            "Feels Like",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "${dummyData.dummyData[index]['subitems']!} ${index}",
                                            style: const TextStyle(fontSize: 12),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 65,
                                      child: Column(
                                        children: [
                                          const Text(
                                            "Pressure",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "${dummyData.dummyData[index]['subitems']!} ${index}",
                                            style: const TextStyle(fontSize: 12),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 65,
                                      child: Column(
                                        children: [
                                          const Text(
                                            "Humidity",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "${dummyData.dummyData[index]['subitems']!} ${index}",
                                            style: const TextStyle(fontSize: 12),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 65,
                                      child: Column(
                                        children: [
                                          const Text(
                                            "Clouds",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "${dummyData.dummyData[index]['subitems']!} ${index}",
                                            style: const TextStyle(fontSize: 12),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      width: 60,
                                      padding: const EdgeInsets.all(16),
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Icon(Icons.add_card_sharp, color: Colors.white,),
                                    ),
                                    Container(
                                      width: 60,
                                      padding: const EdgeInsets.all(16),
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Icon(Icons.add_card_sharp, color: Colors.white,),
                                    ),
                                    Container(
                                      width: 60,
                                      padding: const EdgeInsets.all(16),
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Icon(Icons.add_card_sharp, color: Colors.white,),
                                    ),
                                    Container(
                                      width: 60,
                                      padding: const EdgeInsets.all(16),
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Icon(Icons.add_card_sharp, color: Colors.white,),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    SizedBox(
                                      width: 65,
                                      child: Column(
                                        children: [
                                          const Text(
                                            "Dew Point",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "${dummyData.dummyData[index]['subitems']!} ${index}",
                                            style: const TextStyle(fontSize: 12),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                        width: 80,
                                        child: Column(
                                          children: [
                                            const Text(
                                              "Wind Speed",
                                              style: TextStyle(fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "${dummyData.dummyData[index]['subitems']!} ${index}",
                                              style: const TextStyle(fontSize: 12),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        )),
                                    SizedBox(
                                      width: 65,
                                      child: Column(
                                        children: [
                                          const Text(
                                            "POP",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "${dummyData.dummyData[index]['subitems']!} ${index}",
                                            style: const TextStyle(fontSize: 12),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 65,
                                      child: Column(
                                        children: [
                                          const Text(
                                            "Visibility",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "${dummyData.dummyData[index]['subitems']!} ${index}",
                                            style: const TextStyle(fontSize: 12),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                //if(widget.weatherDataHourly.hourly[cardIndex.toInt()].rain != null || widget.weatherDataHourly.hourly[cardIndex.toInt()].rain != null)
                                const SizedBox(height: 15,),
                                //if(widget.weatherDataHourly.hourly[cardIndex.toInt()].rain != null || widget.weatherDataHourly.hourly[cardIndex.toInt()].rain != null)
                                Row(
                                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    //if(widget.weatherDataHourly.hourly[cardIndex.toInt()].rain != null)
                                    Container(
                                      width: 60,
                                      margin: const EdgeInsets.only(left: 15),
                                      padding: const EdgeInsets.all(16),
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Icon(Icons.add_card_sharp, color: Colors.white,),
                                    ),
                                    //if(widget.weatherDataHourly.hourly[cardIndex.toInt()].snow != null)
                                    Container(
                                        width: 60,
                                        padding: const EdgeInsets.all(16),
                                        margin: const EdgeInsets.only(left: 35),
                                        decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                        child: Icon(Icons.add_card_sharp, color: Colors.white,)
                                    ),
                                  ],
                                ),
                                //if(widget.weatherDataHourly.hourly[cardIndex.toInt()].rain != null || widget.weatherDataHourly.hourly[cardIndex.toInt()].rain != null)
                                const SizedBox(
                                  height: 10,
                                ),
                                //if(widget.weatherDataHourly.hourly[cardIndex.toInt()].rain != null || widget.weatherDataHourly.hourly[cardIndex.toInt()].rain != null)
                                Row(
                                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    //if(widget.weatherDataHourly.hourly[cardIndex.toInt()].rain != null)
                                    Container(
                                      margin: const EdgeInsets.only(left: 12),
                                      width: 65,
                                      child: Column(
                                        children: [
                                          const Text(
                                            "Rain",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "${dummyData.dummyData[index]['subitems']!} ${index}",
                                            style: const TextStyle(fontSize: 12),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                    //if(widget.weatherDataHourly.hourly[cardIndex.toInt()].snow != null)
                                    Container(
                                      margin: const EdgeInsets.only(left: 30),
                                      width: 65,
                                      child: Column(
                                        children: [
                                          const Text(
                                            "Snow",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "${dummyData.dummyData[index]['subitems']!} ${index}",
                                            style: const TextStyle(fontSize: 12),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ))
                      ],
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 650,
                child: ListView.builder(
                  itemCount: dummyData.dummyData.length,
                  //scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index){
                    return ExpansionTile(
                      title: SizedBox(
                        width: 185,
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 32,
                                left: 8,
                                right: 8,
                                bottom: 16,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      color: const Color(0xff1E1466).withOpacity(0.6),
                                      offset: const Offset(1.1, 4.0),
                                      blurRadius: 8.0,
                                    ),
                                  ],
                                  gradient: LinearGradient(
                                    colors: const <Color>[
                                      Color(0xff6F72CA),
                                      Color(0xff1E1466),
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    bottomRight: Radius.circular(8.0),
                                    bottomLeft: Radius.circular(8.0),
                                    topLeft: Radius.circular(8.0),
                                    topRight: Radius.circular(54.0),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 54,
                                    left: 16,
                                    right: 16,
                                    bottom: 8,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "${dummyData.dummyData[index]['title']!} ${index}",
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          letterSpacing: 0.2,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8, bottom: 8),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              "${dummyData.dummyData[index]['subtitle']!} ${index}",
                                              style: const TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 15,
                                                letterSpacing: 0.2,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 30,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: <Widget>[
                                          Text(
                                            dummyData.dummyData[index]['description']!,
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 22,
                                              letterSpacing: 0.2,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 4, bottom: 3),
                                            child: Text(
                                              "$index",
                                              style: const TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 10,
                                                letterSpacing: 0.2,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              left: 0,
                              child: Container(
                                width: 84,
                                height: 84,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFAFAFA).withOpacity(0.2),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 15,
                              left: 10,
                              child: SizedBox(
                                width: 60,
                                height: 60,
                                child: Icon(Icons.add_card_sharp, color: Colors.white,),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //leading: Icon(Icons.add),
                      //trailing: Icon(Icons.arrow_drop_down),
                      //title: Text("Test"),
                      children: [
                        Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.only(left: 5, bottom: 5),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      width: 60,
                                      padding: const EdgeInsets.all(16),
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Icon(Icons.add_card_sharp, color: Colors.white,),
                                    ),
                                    Container(
                                      width: 60,
                                      padding: const EdgeInsets.all(16),
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Icon(Icons.add_card_sharp, color: Colors.white,),
                                    ),
                                    Container(
                                      width: 60,
                                      padding: const EdgeInsets.all(16),
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Icon(Icons.add_card_sharp, color: Colors.white,),
                                    ),
                                    Container(
                                      width: 60,
                                      padding: const EdgeInsets.all(16),
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Icon(Icons.add_card_sharp, color: Colors.white,),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    SizedBox(
                                      width: 65,
                                      child: Column(
                                        children: [
                                          const Text(
                                            "Feels Like",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "${dummyData.dummyData[index]['subitems']!} ${index}",
                                            style: const TextStyle(fontSize: 12),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 65,
                                      child: Column(
                                        children: [
                                          const Text(
                                            "Pressure",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "${dummyData.dummyData[index]['subitems']!} ${index}",
                                            style: const TextStyle(fontSize: 12),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 65,
                                      child: Column(
                                        children: [
                                          const Text(
                                            "Humidity",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "${dummyData.dummyData[index]['subitems']!} ${index}",
                                            style: const TextStyle(fontSize: 12),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 65,
                                      child: Column(
                                        children: [
                                          const Text(
                                            "Clouds",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "${dummyData.dummyData[index]['subitems']!} ${index}",
                                            style: const TextStyle(fontSize: 12),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      width: 60,
                                      padding: const EdgeInsets.all(16),
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Icon(Icons.add_card_sharp, color: Colors.white,),
                                    ),
                                    Container(
                                      width: 60,
                                      padding: const EdgeInsets.all(16),
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Icon(Icons.add_card_sharp, color: Colors.white,),
                                    ),
                                    Container(
                                      width: 60,
                                      padding: const EdgeInsets.all(16),
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Icon(Icons.add_card_sharp, color: Colors.white,),
                                    ),
                                    Container(
                                      width: 60,
                                      padding: const EdgeInsets.all(16),
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Icon(Icons.add_card_sharp, color: Colors.white,),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    SizedBox(
                                      width: 65,
                                      child: Column(
                                        children: [
                                          const Text(
                                            "Dew Point",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "${dummyData.dummyData[index]['subitems']!} ${index}",
                                            style: const TextStyle(fontSize: 12),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                        width: 80,
                                        child: Column(
                                          children: [
                                            const Text(
                                              "Wind Speed",
                                              style: TextStyle(fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "${dummyData.dummyData[index]['subitems']!} ${index}",
                                              style: const TextStyle(fontSize: 12),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        )),
                                    SizedBox(
                                      width: 65,
                                      child: Column(
                                        children: [
                                          const Text(
                                            "POP",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "${dummyData.dummyData[index]['subitems']!} ${index}",
                                            style: const TextStyle(fontSize: 12),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 65,
                                      child: Column(
                                        children: [
                                          const Text(
                                            "Visibility",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "${dummyData.dummyData[index]['subitems']!} ${index}",
                                            style: const TextStyle(fontSize: 12),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                //if(widget.weatherDataHourly.hourly[cardIndex.toInt()].rain != null || widget.weatherDataHourly.hourly[cardIndex.toInt()].rain != null)
                                const SizedBox(height: 15,),
                                //if(widget.weatherDataHourly.hourly[cardIndex.toInt()].rain != null || widget.weatherDataHourly.hourly[cardIndex.toInt()].rain != null)
                                Row(
                                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    //if(widget.weatherDataHourly.hourly[cardIndex.toInt()].rain != null)
                                    Container(
                                      width: 60,
                                      margin: const EdgeInsets.only(left: 15),
                                      padding: const EdgeInsets.all(16),
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Icon(Icons.add_card_sharp, color: Colors.white,),
                                    ),
                                    //if(widget.weatherDataHourly.hourly[cardIndex.toInt()].snow != null)
                                    Container(
                                        width: 60,
                                        padding: const EdgeInsets.all(16),
                                        margin: const EdgeInsets.only(left: 35),
                                        decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                        child: Icon(Icons.add_card_sharp, color: Colors.white,)
                                    ),
                                  ],
                                ),
                                //if(widget.weatherDataHourly.hourly[cardIndex.toInt()].rain != null || widget.weatherDataHourly.hourly[cardIndex.toInt()].rain != null)
                                const SizedBox(
                                  height: 10,
                                ),
                                //if(widget.weatherDataHourly.hourly[cardIndex.toInt()].rain != null || widget.weatherDataHourly.hourly[cardIndex.toInt()].rain != null)
                                Row(
                                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    //if(widget.weatherDataHourly.hourly[cardIndex.toInt()].rain != null)
                                    Container(
                                      margin: const EdgeInsets.only(left: 12),
                                      width: 65,
                                      child: Column(
                                        children: [
                                          const Text(
                                            "Rain",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "${dummyData.dummyData[index]['subitems']!} ${index}",
                                            style: const TextStyle(fontSize: 12),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                    //if(widget.weatherDataHourly.hourly[cardIndex.toInt()].snow != null)
                                    Container(
                                      margin: const EdgeInsets.only(left: 30),
                                      width: 65,
                                      child: Column(
                                        children: [
                                          const Text(
                                            "Snow",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "${dummyData.dummyData[index]['subitems']!} ${index}",
                                            style: const TextStyle(fontSize: 12),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ))
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
