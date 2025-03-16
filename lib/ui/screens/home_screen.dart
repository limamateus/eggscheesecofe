import 'package:flutter/material.dart';
import '../components/corouse_with_Indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomeScreen> {
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  // Lista de categorias
  final List<String> categorias = [
    "Pizza",
    "Burgers",
    "Sushi",
    "Massas",
    "Saladas",
    "Doces"
  ];

  // Simulação de produtos por categoria
  final Map<String, List<String>> produtosPorCategoria = {
    "Pizza": ["Pizza Margherita", "Pizza de Calabresa", "Pizza 4 Queijos"],
    "Burgers": ["Cheeseburger", "X-Bacon", "Veggie Burger"],
    "Sushi": ["Sushi de Salmão", "Hot Roll", "Temaki"],
    "Massas": ["Macarrão Carbonara", "Lasanha", "Nhoque"],
    "Saladas": ["Caesar Salad", "Salada Tropical", "Salada Grega"],
    "Doces": ["Bolo de Chocolate", "Sorvete", "Pudim"],
  };

  // Estado da categoria selecionada
  String categoriaSelecionada = "Pizza";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela com GridView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Banner
          SizedBox(
            height: 200, // Definindo altura fixa para evitar conflitos de layout
            child: CarouselWithIndicator(
              imagens: imgList,
            ),
          ),

          const SizedBox(height: 10),

          // MENU HORIZONTAL DE CATEGORIAS
          SizedBox(
            height: 50, // Altura do menu
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categorias.length,
              itemBuilder: (context, index) {
                final categoria = categorias[index];
                final isSelected = categoria == categoriaSelecionada;

                return GestureDetector(
                  onTap: () {
                    setState(() {
                      categoriaSelecionada = categoria;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    decoration: BoxDecoration(
                      color: isSelected ? Colors.red : Colors.grey[200],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      categoria,
                      style: TextStyle(
                        color: isSelected ? Colors.white : Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 10),

          // LISTA DE ITENS DA CATEGORIA SELECIONADA
          Expanded(
            child: ListView.builder(
              itemCount: produtosPorCategoria[categoriaSelecionada]!.length,
              itemBuilder: (context, index) {
                final produto = produtosPorCategoria[categoriaSelecionada]![index];
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: ListTile(
                    title: Text(produto),
                    trailing: const Icon(Icons.add_shopping_cart),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
