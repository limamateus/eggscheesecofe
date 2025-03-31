import 'package:flutter/material.dart';

import '../../models/product.dart';

class DetailProdutct extends StatelessWidget {
  final ProductModel product;

  const DetailProdutct({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detalhes: ${product.titulo}")),
      body: Column(
        children: [
          Image.network(product.imagem.isNotEmpty? product.imagem : "assets/images/logo.png" , width: double.infinity, height: 250, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.titulo.isNotEmpty? product.titulo : "Sem Titulo",
                  style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  product.descricao.isNotEmpty? product.descricao : "Sem Descrição",
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 8),
                Text(
                  "⏳ ${product.tempo.isNotEmpty ? product.tempo : "00:00"}",
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.orange),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}