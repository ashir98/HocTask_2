import 'package:flutter/material.dart';
import 'package:hoctask2/widgets/left_speedometer.dart';
import 'package:hoctask2/widgets/right_speedometer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xff00111b),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              /// Main heading
              Text(
                "Blockchain Technology",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: size.width*0.08,
                    fontWeight: FontWeight.bold),
              ),

              /// Sub Heading
              Text(
                "Blockchain Rider",
                style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    fontSize: size.width*0.06,
                    
                    
                  ),
              ),
              const SizedBox(
                height: 30,
              ),

              ///Left - Right SpeedoMeters
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [LeftSpeedOmeter(), RightSpeedoMeter()],
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Riders List",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: size.width*0.08,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5,),


              /// Riders list
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xff1a2932),
                  ),
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: 15,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: const Icon(Icons.electric_bike_rounded, color: Colors.white,),
                        title: Text("Rider $index", style: const TextStyle(color: Colors.white, fontSize: 20),),
                        subtitle: Text("Rider info $index",style: TextStyle(color: Colors.white.withOpacity(0.6)),),
                      );
                    },
                  ),
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}
