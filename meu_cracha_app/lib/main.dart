flutter run -d web-server --web-port 8080 --web-hostname 0.0.0.0 Colors.black26,
                  blurRadius: 8,
                ),
              ],

              gradient: const LinearGradient(
                colors: [
                  Colors.indigo,
                  Colors.blueAccent,
                ],

                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),

            child: Column(
              mainAxisSize: MainAxisSize.min,

              children: [

                const CircleAvatar(
                  radius: 50,

                  backgroundImage: NetworkImage(
                    'https://github.com/identicons/user.png',
                  ),
                ),

                const SizedBox(height: 15),

                const Text(
                  'Seu Nome Completo',

                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),


                const Text(
                  'Desenvolvedor Mobile Flutter / SENAI',

                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                    fontStyle: FontStyle.italic,
                  ),
                ),


                const Divider(
                  color: Colors.white38,
                  height: 30,
                ),


                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [

                    Chip(
                      label: Text('Dart'),
                    ),

                    SizedBox(width: 5),

                    Chip(
                      label: Text('Flutter'),
                    ),

                    SizedBox(width: 5),

                    Chip(
                      label: Text('Git'),
                    ),
                  ],
                ),

                const SizedBox(height: 15),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
