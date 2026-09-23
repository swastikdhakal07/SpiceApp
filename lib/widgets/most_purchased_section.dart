import 'package:flutter/material.dart';

class MostPurchasedSection extends StatelessWidget {
  const MostPurchasedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            'Most Purchased',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),

        const SizedBox(height: 12),

        SizedBox(
          height: 160,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            children: const [
              _MostPurchasedCard(
                name: 'Turmeric Powder',
                weight: '500 g',
                price: '3.99',
                imagePath: 'assets/images/turmeric_powder.jpg',
              ),
              _MostPurchasedCard(
                name: 'Cumin Powder',
                weight: '250 g',
                price: '3.99',
                imagePath: 'assets/images/cumin_powder.jpg',
              ),
              _MostPurchasedCard(
                name: 'Coriander Powder',
                weight: '250 g',
                price: '3.99',
                imagePath: 'assets/images/coriander_powder.jpg',
              ),
              _MostPurchasedCard(
                name: 'Chili Powder',
                weight: '250 g',
                price: '3.99',
                imagePath: 'assets/images/chili_powder.jpg',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _MostPurchasedCard extends StatelessWidget {
  final String name;
  final String weight;
  final String price;
  final String imagePath;

  const _MostPurchasedCard({
    required this.name,
    required this.weight,
    required this.price,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(right: 12.0),
      child: SizedBox(
        width: 140,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.grey.shade200,
                  ),

                  child: Image.asset(imagePath, fit: BoxFit.cover),
                ),
              ),

              Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),

              Text(weight),
              Text('€$price'),
            ],
          ),
        ),
      ),
    );
  }
}
