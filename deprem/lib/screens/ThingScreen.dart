import 'package:flutter/material.dart';

class ThingScreen extends StatelessWidget {
  const ThingScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 120,
            color: Color(0xFFC20A19),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Expanded(
                    child: Container(                   
                      child: Image.asset(
                        "assets/images/things.png",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFFC20A19), // Kenarlık rengi
                        width: 5.0, // Kenarlık kalınlığı
                      ),
                    ),
                    child: Image.asset(
                      "assets/images/thing1.png",
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20.0),
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Color(0xFF651011),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "WHAT NOT TO DO IN AN EARTHQUAKE",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFAF7CB), // Başlık rengi
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  "There's a lot of misinformation out there, and it's understandable to be confused. Now that you know what to do, make sure you also know what not to do:\n\n"
                  "• Do not run outside\n"
                  "  - Do: Shelter in place using Drop, Cover and Hold On\n\n"
                  "• Do not get in a doorway\n"
                  "  - Do: Shelter in place under a table. In modern houses and buildings, doorways are no safer, and they do not protect you from flying or falling objects.\n\n"
                  "• Do not make phone calls\n"
                  "  - Do: Text. After experiencing a large earthquake, it’s natural to want to reach out to friends and family. A text will have a better chance of getting through than a phone call, which is more likely to experience network congestion. Too many calls can overload the communications grid, making it harder for first responders to get their calls. Everyone will be safer if you limit your calls after an earthquake. And if you don't have power, you'll want to save your phone's battery power for when you need it most.\n"
                  "  - Likewise, don’t call 911 unless you’re experiencing a true emergency. Unless someone is hurt, leave that system open for first responders to get to the injured as quickly as possible.",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Color(0xFFFAF7CB), // Metin rengi
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
