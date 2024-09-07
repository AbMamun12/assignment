import 'package:flutter/material.dart';
import 'package:my_bag/bag_item.dart';

class BagCard extends StatelessWidget {
  const BagCard(
      {super.key, required this.item, required this.onQuantityChanged});

  final BagItem item;
  final ValueChanged<int> onQuantityChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Card(
        color: Colors.grey.shade200,
        child: SizedBox(
          height: 126,
          width: double.infinity,
          child: Row(
            children: [
              Image.network(
                item.productImage,
                fit: BoxFit.fitHeight,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: ' ${item.productTitle}\n',
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                              TextSpan(
                                text: ' Color: ',
                                style: TextStyle(color: Colors.grey.shade600),
                              ),
                              TextSpan(
                                text: item.color,
                                style: TextStyle(color: Colors.grey.shade900),
                              ),
                              TextSpan(
                                text: '  Size: ',
                                style: TextStyle(color: Colors.grey.shade600),
                              ),
                              TextSpan(
                                text: item.size,
                                style: TextStyle(color: Colors.grey.shade900),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            if (item.quantity > 1) {
                              onQuantityChanged(item.quantity - 1);
                            }
                          },
                          icon: const Icon(Icons.remove),
                        ),
                        Text('  ${item.quantity}  '),
                        IconButton(
                          onPressed: () {
                            onQuantityChanged(item.quantity + 1);
                          },
                          icon: const Icon(Icons.add),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.more_vert,
                      color: Colors.grey.shade600,
                    ),
                    Text('${item.price}\$'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
