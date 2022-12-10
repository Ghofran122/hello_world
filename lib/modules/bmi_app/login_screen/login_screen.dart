import 'package:flutter/material.dart';

class Loginb extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 60.0,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              TextFormField(
                //controller: emailController,
                onChanged: (value)
                {
                  print(value);
                },
                onFieldSubmitted: (value)
                {
                  print(value);
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email Address',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                      Icons.email,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                onFieldSubmitted: (value)
                {
                  print(value);
                },
                onChanged: (value)
                {
                  print(value);
                },
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                      Icons.lock,
                  ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                  ),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Container(
                color: Colors.blue,
                child: MaterialButton(
                  onPressed: ()
                  {
                    print(emailController);
                    print(passwordController);
                  },
                  child: Container(
                    width: 120.0,
                    child: Text(
                      'Login',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                [
                  Text('Don\'t have an account yet?'),
                  TextButton(
                    onPressed: (){},
                    child: Text('Register Now')
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}