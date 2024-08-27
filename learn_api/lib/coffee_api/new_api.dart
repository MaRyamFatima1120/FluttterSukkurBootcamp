import 'package:flutter/material.dart';

class CoffeeItemTile extends StatelessWidget {
  final String title;
  final String description;
  final String price;
  final String imageUrl;

  const CoffeeItemTile({
    Key? key,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xfff7f7f7),
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontFamily: 'Cursive',
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff008f39), // Custom green color
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      description,
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey.shade800,
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    Text(
                      "Price: $price",
                      style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16.0),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  imageUrl,
                  width: 80.0,
                  height: 100.0,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
