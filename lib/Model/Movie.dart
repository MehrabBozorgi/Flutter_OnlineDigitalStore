class Movie {
  final int id;
  final String name;
  final String description;
  final String saleSakht;
  final int price;
  final String image_url;
  final String avamel;
  final String forosh;
  final String keshvar;
  final int zaman;

  Movie({
    this.id,
    this.name,
    this.description,
    this.saleSakht,
    this.price,
    this.image_url,
    this.avamel,
    this.forosh,
    this.keshvar,
    this.zaman,
  });

  // factory Movie.fromJson(Map<String, dynamic> json) {
  //   return Movie(
  //     id: json['id'],
  //     price: json['price'],
  //     zaman: json['zaman'],
  //     name: json['name'],
  //     description: json['description'],
  //     avamel: json['avamel'],
  //     forosh: json['forosh'],
  //     image_url: json['image_url'],
  //     keshvar: json['keshvar'],
  //     saleSakht: json['saleSakht'],
  //   );
  // }
}
