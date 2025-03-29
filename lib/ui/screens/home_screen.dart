import 'package:flutter/material.dart';

import '../components/corouse_with_Indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?auto=format&fit=crop&w=1355&q=80'
  ];

  final List<String> categorias = [
    "Pizza",
    "Burgers",
    "Sushi",
    "Massas",
    "Saladas",
    "Doces"
  ];

  final Map<String, List<Map<String, String>>> produtosPorCategoria = {
    "Pizza": [
      {
        "titulo": "Pizza Margherita",
        "descricao": "Molho de tomate, mussarela e manjericão.",
        "tempo": "30 min",
        "imagem": "https://images.unsplash.com/photo-1604382354936-07c5d9983bd3?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
      },
      {
        "titulo": "Pizza de Calabresa",
        "descricao": "Calabresa fatiada e cebola caramelizada.",
        "tempo": "35 min",
        "imagem": "https://images.unsplash.com/photo-1604382354936-07c5d9983bd3?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
      },
      {
        "titulo": "Pizza 4 Queijos",
        "descricao": "Mussarela, gorgonzola, parmesão e provolone.",
        "tempo": "40 min",
        "imagem": "https://images.unsplash.com/photo-1604382354936-07c5d9983bd3?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
      },
      {
        "titulo": "Pizza 4 Queijos",
        "descricao": "Mussarela, gorgonzola, parmesão e provolone.",
        "tempo": "40 min",
        "imagem": "https://images.unsplash.com/photo-1604382354936-07c5d9983bd3?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
      },
      {
        "titulo": "Pizza 4 Queijos",
        "descricao": "Mussarela, gorgonzola, parmesão e provolone.",
        "tempo": "40 min",
        "imagem": "https://images.unsplash.com/photo-1604382354936-07c5d9983bd3?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
      },
      {
        "titulo": "Pizza 4 Queijos",
        "descricao": "Mussarela, gorgonzola, parmesão e provolone.",
        "tempo": "40 min",
        "imagem": "https://images.unsplash.com/photo-1604382354936-07c5d9983bd3?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
      },
    ],
    "Burgers": [
      {
        "titulo": "Cheeseburger",
        "descricao": "Hambúrguer suculento com queijo cheddar.",
        "tempo": "20 min",
        "imagem": "https://media.istockphoto.com/id/1773193904/pt/foto/big-mac-with-french-fries-on-a-plate.jpg?s=1024x1024&w=is&k=20&c=kjPRwW_-_yKzHQO8G6A_AKj0ypq_qYQlJ9RWY3eYQyw="
      },
      {
        "titulo": "X-Bacon",
        "descricao": "Carne bovina, bacon crocante e queijo.",
        "tempo": "25 min",
        "imagem": "https://media.istockphoto.com/id/1773193904/pt/foto/big-mac-with-french-fries-on-a-plate.jpg?s=1024x1024&w=is&k=20&c=kjPRwW_-_yKzHQO8G6A_AKj0ypq_qYQlJ9RWY3eYQyw="
      },
      {
        "titulo": "Veggie Burger",
        "descricao": "Hambúrguer vegetariano à base de grão de bico.",
        "tempo": "22 min",
        "imagem": "https://media.istockphoto.com/id/1773193904/pt/foto/big-mac-with-french-fries-on-a-plate.jpg?s=1024x1024&w=is&k=20&c=kjPRwW_-_yKzHQO8G6A_AKj0ypq_qYQlJ9RWY3eYQyw="
      },
    ],
  };

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
          SizedBox(
            height: 200,
            child: CarouselWithIndicator(
              imagens: imgList,
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 50,
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 10),
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
          Expanded(
            child: ListView.builder(
              itemCount: produtosPorCategoria[categoriaSelecionada]!.length,
              itemBuilder: (context, index) {
                final produto =
                produtosPorCategoria[categoriaSelecionada]![index];

                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetalheScreen(item: produto),
                      ),
                    );
                  },
                  child: Card(
                    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                          ),
                          child: Expanded(
                            child: Image.network(
                              produto["imagem"]!,
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  produto["titulo"]!,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  produto["descricao"]!,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(height: 4),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "⏳ ${produto["tempo"]}",
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.orange,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                        ),

                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

class DetalheScreen extends StatelessWidget {
  final Map<String, String> item;

  const DetalheScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detalhes: ${item["titulo"]}")),
      body: Column(
        children: [
          Image.network(item["imagem"]!, width: double.infinity, height: 250, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item["titulo"]!,
                  style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  item["descricao"]!,
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 8),
                Text(
                  "⏳ Tempo de preparo: ${item["tempo"]}",
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
