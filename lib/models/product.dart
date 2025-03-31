class ProductModel {
  final String titulo;
  final String descricao;
  final String tempo;
  final String imagem;

  // Construtor
  ProductModel({
    required this.titulo,
    required this.descricao,
    required this.tempo,
    required this.imagem,
  });

  // Método para converter JSON para um objeto ProductModel
  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      titulo: json['titulo'],
      descricao: json['descricao'],
      tempo: json['tempo'],
      imagem: json['imagem'],
    );
  }

  // Método para converter um objeto ProductModel para JSON
  Map<String, dynamic> toJson() {
    return {
      'titulo': titulo,
      'descricao': descricao,
      'tempo': tempo,
      'imagem': imagem,
    };
  }
}
