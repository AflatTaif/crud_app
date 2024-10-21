import 'package:flutter/material.dart';

class UpdateProductScreen extends StatefulWidget {
  const UpdateProductScreen({super.key});

  @override
  State<UpdateProductScreen> createState() => _UpdateProductScreenState();
}

final TextEditingController _nameTEController = TextEditingController();
final TextEditingController _unitPriceTEController = TextEditingController();
final TextEditingController _quantityTEController = TextEditingController();
final TextEditingController _totalPriceTEController = TextEditingController();
final TextEditingController _imageTEController = TextEditingController();
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

class _UpdateProductScreenState extends State<UpdateProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update product'),

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: _nameTEController,

                  decoration: const InputDecoration(
                      hintText: 'Product Name',
                      labelText: 'Product Name'
                  ),
                  validator: (String? value){
                    if (value == null || value.trim().isEmpty){
                      return 'Write your product name';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16,),
                TextFormField(
                  controller: _unitPriceTEController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      hintText: 'Unit Price',
                      labelText: 'Unit Price'
                  ),
                  validator: (String? value){
                    if (value == null || value.trim().isEmpty){
                      return 'Write your unit price';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16,),
                TextFormField(
                  controller: _quantityTEController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      hintText: 'Quantity',
                      labelText: 'Quantity'
                  ),
                  validator: (String? value){
                    if (value == null || value.trim().isEmpty){
                      return 'Write your quantity';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16,),
                TextFormField(
                  controller: _totalPriceTEController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      hintText: 'Total Price',
                      labelText: 'Total Price'
                  ),
                  validator: (String? value){
                    if (value == null || value.trim().isEmpty){
                      return 'Write your total price';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16,),
                TextFormField(
                  controller: _imageTEController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: const InputDecoration(
                      hintText: 'Image',
                      labelText: 'Image'
                  ),
                  validator: (String? value){
                    if (value == null || value.trim().isEmpty){
                      return 'Add your image';
                    }
                    return null;
                  },

                ),
                const SizedBox(height: 16,),
                ElevatedButton(
                    onPressed: (){
                      if (_formKey.currentState!.validate()){

                      }

                    },
                    child: const Text('Update',))

              ],
            ),
          ),
        ),
      ),

    );
  }
  @override
  void dispose() {
    _nameTEController.clear();
    _unitPriceTEController.clear();
    _quantityTEController.clear();
    _totalPriceTEController.clear();
    _imageTEController.clear();
    super.dispose();
  }
}
