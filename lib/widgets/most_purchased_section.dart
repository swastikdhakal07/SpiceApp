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
              ),
              _MostPurchasedCard(
                name: 'Cumin Powder',
                weight: '250 g',
                price: '3.99',
              ),
              _MostPurchasedCard(
                name: 'Coriander Powder',
                weight: '250 g',
                price: '3.99',
              ),
              _MostPurchasedCard(
                name: 'Chili Powder',
                weight: '250 g',
                price: '3.99',
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

  const _MostPurchasedCard({
    required this.name,
    required this.weight,
    required this.price,
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

                  child: const Center(child: Icon(Icons.image, size: 40)),
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
