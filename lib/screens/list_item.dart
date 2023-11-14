import 'package:flutter/material.dart';
import 'package:bakery_shop/Item.dart';

class ListItem extends StatelessWidget {
  ListItem({super.key});

  final List<Item> itemList = Item.items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'List Produk',
          ),
        ),
        backgroundColor: Colors.lightBlue,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: itemList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(itemList[index].name),
            subtitle: Text('Amount: ${itemList[index].amount}'),
            trailing: Text(itemList[index].description),
          );
        },
      ),
    );
  }
}
