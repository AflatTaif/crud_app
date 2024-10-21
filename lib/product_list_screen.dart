import 'package:crud_app/add_product_screen.dart';
import 'package:crud_app/update_product_screen.dart';
import 'package:flutter/material.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
      ),
      body: ListView.separated(
        itemCount: 5,
        itemBuilder: (context, index) {
          return _buildProductItems();
        },
        separatorBuilder: (_, __) {
          return const Divider();
        },
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AddProductScreen(),
              ),
            );
          },
          child: const Icon(Icons.add)),
    );
  }

  Widget _buildProductItems() {
    return ListTile(

      title: const Text('Product name'),
      leading: Image.network('https://cdn.pixabay.com/photo/2024/04/03/18/07/fish-8673535_960_720.jpg',),
      subtitle: const Wrap(
        children: [
          Text('unit price: 100'),
          Text('quantity: 100'),
          Text('Total price: 100'),
        ],
      ),
      trailing: Wrap(
        children: [
          IconButton(onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const UpdateProductScreen(),
              ),
            );
          }, icon: const Icon(Icons.edit)),
          IconButton(onPressed: () {
            _showDeleteConfirmationDialog();
          }, icon: const Icon(Icons.delete))
        ],
      ),
    );

  }
  void _showDeleteConfirmationDialog(){
    showDialog(context: context, builder: (context){
      return AlertDialog(
        title: const Text('Delete'),
        content: const Text('Are you sure that you want to delete the product?'),
        actions: [
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: const Text('Cancel'),),
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: const Text('Yes, Delete'),),

        ],
      );

    });

    }

  }

