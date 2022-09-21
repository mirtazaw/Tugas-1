import 'package:flutter/material.dart';


void main() { runApp(const MyApp()); }
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: const Icon(Icons.home),
        title: const Text("Halaman Login"),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 200),
              Image.asset(
                ('assets/restricted.jpg'),
                width: 100,
                height: 100,),
              const SizedBox(height: 50),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(40.0)),
                        labelText: 'Email',
                        hintText: 'Enter Email',
                        contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      ),
                      onChanged: (String value) {},
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Enter Password',
                        contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                      ),
                      onChanged: (String value) {},
                    ),
                    const SizedBox(height: 35),
                    SizedBox(
                      width: 1500,
                      height: 35,
                      child: ElevatedButton(
                        onPressed: () {
                        },
                        child: const Text('Log-In'),
                      ),
                    ),
                    SizedBox(
                      width: 1500,
                      height: 45,
                      child: TextButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white, // background
                          onPrimary: Colors.black, // foreground
                        ),
                        child: const Text('Forget Password?'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


