//Crea clase para ingresar unos valores que necesite el widget
class Data {
  late String cityName;
  late String cityImage;
  Data({
    required this.cityName,
    required this.cityImage,
  });
}
//Se crea una array, que este instanciada en la clase de arriba, se le agregan los datos necesarios
List<Data> datalist = [
  Data(
      cityName: "Neiva",
      cityImage: "https://como-viviren.com/wp-content/uploads/2020/07/vivir-en-neiva.jpg"
  ),
  Data(
      cityName: "Parque Tayrona",
      cityImage:"https://www.1000y1viajes.com/wp-content/uploads/2019/12/Parque-Tayrona-lugares-turisticos-colombia.jpg"
  ),
  Data(
      cityName: "Medellin",
      cityImage: "https://www.1000y1viajes.com/wp-content/uploads/2019/12/Medelli%CC%81n-lugares-turisticos-colombia.jpg"
  ),
  Data(
      cityName: "Caño Cristales",
      cityImage: "https://www.1000y1viajes.com/wp-content/uploads/2019/12/Can%CC%83o-Cristales-lugares-turisticos-colombia.jpg"
  ),
  Data(
      cityName: "Selva Amazónica",
      cityImage:"https://www.1000y1viajes.com/wp-content/uploads/2019/12/selva-amazonica-lugares-turisticos-colombia.jpg"
  ),
  Data(
      cityName: "Catedral de Sal",
      cityImage:"https://www.1000y1viajes.com/wp-content/uploads/2019/12/Catedral-de-Sal-lugares-turisticos-de-colombia.jpg"
  ),
  Data(
      cityName: "Guatapé",
      cityImage:"https://www.1000y1viajes.com/wp-content/uploads/2019/12/Guatape%CC%81-atracciones-turi%CC%81sticas-colombia.jpg"
  ),
  Data(
      cityName: "Isla San Andrés",
      cityImage:"https://www.1000y1viajes.com/wp-content/uploads/2019/12/San-Andre%CC%81s-lugares-turisticos-colombia.jpg"
  ),
  Data(
      cityName: "Valle de Cocora",
      cityImage:"https://www.1000y1viajes.com/wp-content/uploads/2019/12/valle-del-cocora-destinos-turisticos-colombia.jpg"
  ),
  Data(
      cityName: "Costa Pacifíco",
      cityImage:"https://www.1000y1viajes.com/wp-content/uploads/2019/12/bahia-solano-destinos-turisticos-de-colombia.jpg"
  ),
];