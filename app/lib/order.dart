import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController quantityController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurant Order'),
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image at the top of the form
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/restaurant_image.jpg', // Ensure this path is correct
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20),

              // Title
              Text(
                'Order Your Favorite Dish!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
              SizedBox(height: 10),

              // Form
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    // Customer's Name
                    TextFormField(
                      controller: nameController,
                      decoration: InputDecoration(
                        labelText: 'Your Name',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16),

                    // Address
                    TextFormField(
                      controller: addressController,
                      decoration: InputDecoration(
                        labelText: 'Delivery Address',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your address';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16),

                    // Quantity
                    TextFormField(
                      controller: quantityController,
                      decoration: InputDecoration(
                        labelText: 'Quantity',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter the quantity';
                        }
                        if (int.tryParse(value) == null) {
                          return 'Please enter a valid number';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16),

                    // Submit Button
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState?.validate() ?? false) {
                          
                          final name = nameController.text;
                          final address = addressController.text;
                          final quantity = int.tryParse(quantityController.text) ?? 1;

                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text('Order Confirmation'),
                              content: Text('Your order for $quantity dish(es) has been placed.\nName: $name\nAddress: $address'),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('OK'),
                                ),
                              ],
                            ),
                          );
                        }
                      },
                      child: Text('Place Order'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,  
                        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                        textStyle: TextStyle(fontSize: 18),
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
