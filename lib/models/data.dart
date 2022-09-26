//Crea clase para ingresar unos valores que necesite el widget
class Data {
  late String cityName;
  late String cityImage;
  List<Place> places;
  Data({
    required this.cityName,
    required this.cityImage,
    required this.places
  });
}

class Place {
  late String placeName;
  late String placeImage;
  late String placeDesc;
  Place({required this.placeName, required this.placeImage, required this.placeDesc});
}

List<Place> placedefault = [
  Place(
      placeName: "Neiva",
      placeImage: "https://como-viviren.com/wp-content/uploads/2020/07/vivir-en-neiva.jpg",
      placeDesc: "Capital city of Huila, Neiva is a tourist corridor par excellence, due to its geographical location that connects it with the Orinoquía and Amazonía regions."
  ),
  Place(
      placeName: "Mano del Gigante",
      placeImage: "https://www.nuestrasnoticias.co/storage/app/uploads/public/609/cd4/5e9/thumb_10074_900_600_0_0_crop.jpg",
      placeDesc: "Tour at the hand of the giant from Neiva, a spectacular viewpoint in Gigante."
  ),
  Place(
      placeName: "Estrecho del Magdalena",
      placeImage: "https://occidente.co/wp-content/uploads/2021/12/estrecho-rio-magdalena-huila.jpg",
      placeDesc: "It is a natural landscape located a few kilometers away from the urban area of the Municipality of San Agustín, Department of Huila, in Colombia. It is also close to the Archaeological Park of San Agustín"
  ),
  Place(
      placeName: "Cascada la Motilona",
      placeImage: "https://lh3.googleusercontent.com/p/AF1QipPT6QxcE-rPf8dtBzDSioqTTOJVNt_xO0JPpMyk=w768-h768-n-o-v1",
      placeDesc: "It is a natural place rich in flora and fauna, the weather was warm and at night a little cold but comfortable in Paicol"
  ),
  Place(
      placeName: "Desierto de la Tatacoa",
      placeImage: "https://www.otbcali.com/wp-content/uploads/2019/10/huila3.png",
      placeDesc: "It is an ideal place for fans of astronomy and paleontology, for nature lovers, for photographers and for anyone who wants to observe the stars in Villavieja"
  ),
  Place(
      placeName: "Nevado del Huila",
      placeImage: "https://i.pinimg.com/originals/48/5e/07/485e07da2500004eac407b80529a49b4.png",
      placeDesc: "It is part of the protected area Nevado del Huila National Natural Park and its waters, necessary for the ceremonies of the The\'walas or traditional Nasa doctors, run from the ice masses towards the great Magdalena basin."
  )
];

//Se crea una array, que este instanciada en la clase de arriba, se le agregan los datos necesarios
List<Data> datalist = [
  Data(
      cityName: "Huila",
      cityImage: "https://como-viviren.com/wp-content/uploads/2020/07/vivir-en-neiva.jpg",
      places: placedefault
  ),
  Data(
      cityName: "Parque Tayrona",
      cityImage:"https://www.1000y1viajes.com/wp-content/uploads/2019/12/Parque-Tayrona-lugares-turisticos-colombia.jpg",
      places: placedefault,
  ),
  Data(
      cityName: "Medellin",
      cityImage: "https://www.1000y1viajes.com/wp-content/uploads/2019/12/Medelli%CC%81n-lugares-turisticos-colombia.jpg",
      places: placedefault,
  ),
  Data(
      cityName: "Caño Cristales",
      cityImage: "https://www.1000y1viajes.com/wp-content/uploads/2019/12/Can%CC%83o-Cristales-lugares-turisticos-colombia.jpg",
      places: placedefault,
  ),
  Data(
      cityName: "Selva Amazónica",
      cityImage:"https://www.1000y1viajes.com/wp-content/uploads/2019/12/selva-amazonica-lugares-turisticos-colombia.jpg",
      places: placedefault,
  ),
  Data(
      cityName: "Catedral de Sal",
      cityImage:"https://www.1000y1viajes.com/wp-content/uploads/2019/12/Catedral-de-Sal-lugares-turisticos-de-colombia.jpg",
      places: placedefault,
  ),
  Data(
      cityName: "Guatapé",
      cityImage:"https://www.1000y1viajes.com/wp-content/uploads/2019/12/Guatape%CC%81-atracciones-turi%CC%81sticas-colombia.jpg",
      places: placedefault,
  ),
  Data(
      cityName: "Isla San Andrés",
      cityImage:"https://www.1000y1viajes.com/wp-content/uploads/2019/12/San-Andre%CC%81s-lugares-turisticos-colombia.jpg",
      places: placedefault,
  ),
  Data(
      cityName: "Valle de Cocora",
      cityImage:"https://www.1000y1viajes.com/wp-content/uploads/2019/12/valle-del-cocora-destinos-turisticos-colombia.jpg",
      places: placedefault,
  ),
  Data(
      cityName: "Costa Pacifíco",
      cityImage:"https://www.1000y1viajes.com/wp-content/uploads/2019/12/bahia-solano-destinos-turisticos-de-colombia.jpg",
      places: placedefault,
  ),
];