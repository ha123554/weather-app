import 'package:flutter/material.dart';

// Entry point of the app
void main() {
  runApp(const MyApp());
}

// Root widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // removes debug banner
      title: "Weather App",
      theme: ThemeData.dark(), // dark theme
      home: const WeatherScreen(), // first screen
    );
  }
}

// Weather Screen (your code)
class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2C1E4A), // Purple background
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // 🔹 Top Row: Date + Time
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Monday, June 27",
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                  Text(
                    "10:45 AM",
                    style: TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // 🔹 City + Temperature
              const Text(
                "Barcelona",
                style: TextStyle(
                    fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              const SizedBox(height: 10),
              const Text(
                "24°C",
                style: TextStyle(
                    fontSize: 80, fontWeight: FontWeight.w600, color: Colors.white),
              ),
              const SizedBox(height: 5),

              // 🔹 Weather Condition + Icon
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.cloud, size: 40, color: Colors.white),
                  SizedBox(width: 10),
                  Text(
                    "Cloudy",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // 🔹 Humidity Section
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white12,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Column(
                      children: [
                        Icon(Icons.water_drop, color: Colors.white),
                        SizedBox(height: 5),
                        Text("67%", style: TextStyle(color: Colors.white)),
                        Text("Humidity", style: TextStyle(color: Colors.white70)),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.air, color: Colors.white),
                        SizedBox(height: 5),
                        Text("12 km/h", style: TextStyle(color: Colors.white)),
                        Text("Wind", style: TextStyle(color: Colors.white70)),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.thermostat, color: Colors.white),
                        SizedBox(height: 5),
                        Text("19°C", style: TextStyle(color: Colors.white)),
                        Text("Feels Like", style: TextStyle(color: Colors.white70)),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // 🔹 Forecast Row (Next Days)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  forecastCard("Tue", Icons.cloud, "19-22"),
                  forecastCard("Wed", Icons.wb_sunny, "20-24"),
                  forecastCard("Thu", Icons.ac_unit, "3-9"),
                  forecastCard("Fri", Icons.wb_cloudy, "25-27"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // 🔹 Reusable Forecast Card
  Widget forecastCard(String day, IconData icon, String tempRange) {
    return Column(
      children: [
        Text(day, style: const TextStyle(color: Colors.white)),
        const SizedBox(height: 8),
        Icon(icon, color: Colors.white, size: 30),
        const SizedBox(height: 8),
        Text(
          tempRange,
          style: const TextStyle(color: Colors.white70),
        ),
      ],
    );
  }
}
