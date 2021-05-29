import 'package:flutter/material.dart';
import 'package:milkshakeflutter_app/Confirm.dart';

class CheckoutScreen extends StatelessWidget {
  final cart;
  final sum;

  CheckoutScreen(this.cart, this.sum);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        accentColor: Color(0xFFD8ECF1),
        scaffoldBackgroundColor: Colors.black,
      ),
      home: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ListView.separated(
                itemBuilder: (context, index) {
                  return ListTile(
                    tileColor: Color(0xFFe57373),
                    title: Text(cart[index].name),
                    trailing: Text(
                      "\₹ ${cart[index].price}",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    onTap: () {},
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider();
                },
                itemCount: cart.length,
                shrinkWrap: true,
              ),
              Divider(),
              Text("Total : \₹ $sum"),
              SizedBox(
                height: 24,
              ),
              // ignore: deprecated_member_use
              Center(
                // ignore: deprecated_member_use
                child: RaisedButton(
                  color: Color(0xFF64DD17), // background
                  textColor: Colors.black, // foreground
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => Confirm(),
                      ),
                    );
                  },

                  child: Text('CONFIRM ORDER'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
