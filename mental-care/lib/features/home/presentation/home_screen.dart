import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent.shade400,
      // appBar: AppBar(
      //   flexibleSpace: ClipRect(
      //     child: BackdropFilter(
      //       filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
      //       child: Container(
      //         color: Colors.transparent,
      //       ),
      //     ),
      //   ),
      //   backgroundColor: Colors.transparent,
      //   shadowColor: Colors.transparent,
      //   actions: const [],
      // ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 12.0, right: 12, top: 25),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Psychologist',
                    style: TextStyle(color: Colors.black, fontSize: 22),
                  ),
                  Icon(Icons.search),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 14,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        child: Image.network(
                            'https://img.freepik.com/free-vector/cute-astronaut-dance-cartoon-vector-icon-illustration-technology-science-icon-concept-isolated-premium-vector-flat-cartoon-style_138676-3851.jpg?w=2000',
                            fit: BoxFit.cover),
                      ),
                      title: const Text('Daddy'),
                      subtitle: const Text('I am your daddy...'),
                      trailing: const CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Icon(
                          size: 14,
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
