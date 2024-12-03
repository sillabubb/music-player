import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text("About Us"),
        backgroundColor: theme.background,
        iconTheme: IconThemeData(color: theme.inversePrimary),
        titleTextStyle: TextStyle(
          color: theme.inversePrimary,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: theme.background,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Container(
              color: theme.secondary,
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Feel the rhythm, live the vibe—that's the power of Huni.",
                    style: TextStyle(
                      color: theme.inversePrimary,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    "Huni is a mobile music player app built with Flutter, created by three friends who are 3rd-year Computer Science students at Angeles University Foundation. Developed as their final project for CSE20 - Mobile Application Development, Huni focuses on functionality and usability, making it a reliable app for enjoying your favorite tunes.",
                    style: TextStyle(
                      color: theme.inversePrimary.withOpacity(0.7),
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const SizedBox(height: 16.0),
                  Text(
                    "MEET THE TEAM.",
                    style: TextStyle(
                      color: theme.inversePrimary,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  const SizedBox(height: 24.0),
                  _buildTeamMember(
                    theme,
                    "assets/images/2.png",
                    "ALIYAH AYCO",
                    "UX/UI / Programmer",
                    "“With great power comes with drink responsibly.”",
                  ),
                  const SizedBox(height: 24.0),
                  _buildTeamMember(
                    theme,
                    "assets/images/3.png",
                    "CHYNNA REI LAYSON",
                    "Tester / Programmer",
                    """“Pre dahan-dahan lang sa iyong pagkahibang sa isang nilalang na dapat nila-"lang" mo lang"”""",
                  ),
                  const SizedBox(height: 24.0),
                  _buildTeamMember(
                    theme,
                    "assets/images/4.png",
                    "NOAH ANDREA PAGBA",
                    "Project Manager / Programmer",
                    "“Queen never cry.”",
                  ),
                  const SizedBox(height: 24.0),
                ],
              ),
            ),

            Container(
              color: theme.primary.withOpacity(0.1),
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "CONNECT WITH US",
                    style: TextStyle(
                      color: theme.inversePrimary,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8.0),
                  _buildEmailRow(theme, "Aliyah Ayco", "ayco.aliyah@auf.edu.ph"),
                  const SizedBox(height: 8.0),
                  _buildEmailRow(theme, "Chynna Rei Layson", "layson.chynnarei@auf,edu.ph"),
                  const SizedBox(height: 8.0),
                  _buildEmailRow(theme, "Noah Andrea Pagba", "pagba.noahandrea@auf.edu.ph"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTeamMember(
      ColorScheme theme, String imagePath, String name, String role, String quote) {
    return Column(
      children: [
        // Large Image
        Image.asset(
          imagePath,
          width: 160, // Set the desired width
          height: 160, // Set the desired height
          fit: BoxFit.cover, // Ensures the image covers the container
        ),
        const SizedBox(height: 8.0),
        // Name
        Text(
          name,
          style: TextStyle(
            color: theme.inversePrimary,
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
        const SizedBox(height: 4.0),
        // Role
        Text(
          role,
          style: TextStyle(
            color: theme.inversePrimary.withOpacity(0.7),
            fontSize: 14.0,
          ),
        ),
        const SizedBox(height: 8.0),
        // Quote
        Text(
          quote,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: theme.inversePrimary,
            fontStyle: FontStyle.italic,
            fontSize: 14.0,
          ),
        ),
      ],
    );
  }


  // Helper method to build email row
  Widget _buildEmailRow(ColorScheme theme, String name, String email) {
    return Row(
      children: [
        Icon(Icons.email, color: theme.inversePrimary),
        const SizedBox(width: 8.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  color: theme.inversePrimary,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
              Text(
                email,
                style: TextStyle(
                  color: theme.inversePrimary.withOpacity(0.7),
                  fontSize: 14.0,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}