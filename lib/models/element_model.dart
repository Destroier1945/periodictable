class Elements {
  late List<Elements> elements;

  Elements({required this.elements});

  Elements.fromJson(Map<String, dynamic> json) {
    if (json['elements'] != null) {
      elements = <Elements>[];
      json['elements'].forEach((v) {
        elements.add(new Elements.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.elements != null) {
      data['elements'] = this.elements.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ElementsModel {
  late String name;
  late String appearance;
  late double atomicMass;
  late double boil;
  late String category;
  late double density;
  late String discoveredBy;
  late double melt;
  late double molarHeat;
  late String namedBy;
  late int number;
  late int period;
  late int group;
  late String phase;
  late String source;
  late String bohrModelImage;
  late String bohrModel3d;
  late String spectralImg;
  late String summary;
  late String symbol;
  late int xpos;
  late int ypos;
  late int wxpos;
  late int wypos;
  late List<int> shells;
  late String electronConfiguration;
  late String electronConfigurationSemantic;
  late double electronAffinity;
  late double electronegativityPauling;
  late List<int> ionizationEnergies;
  late String cpkHex;
  late Image image;
  late String block;

  ElementsModel(
      {required this.name,
      required this.appearance,
      required this.atomicMass,
      required this.boil,
      required this.category,
      required this.density,
      required this.discoveredBy,
      required this.melt,
      required this.molarHeat,
      required this.namedBy,
      required this.number,
      required this.period,
      required this.group,
      required this.phase,
      required this.source,
      required this.bohrModelImage,
      required this.bohrModel3d,
      required this.spectralImg,
      required this.summary,
      required this.symbol,
      required this.xpos,
      required this.ypos,
      required this.wxpos,
      required this.wypos,
      required this.shells,
      required this.electronConfiguration,
      required this.electronConfigurationSemantic,
      required this.electronAffinity,
      required this.electronegativityPauling,
      required this.ionizationEnergies,
      required this.cpkHex,
      required this.image,
      required this.block});

  ElementsModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    appearance = json['appearance'];
    atomicMass = double.parse(json['atomic_mass'].toString());
    boil = double.parse(json['boil'].toString());
    category = json['category'];
    density = double.parse(json['density'].toString());
    discoveredBy = json['discovered_by'];
    melt = double.parse(json['melt'].toString());
    molarHeat = double.parse(json['molar_heat'].toString());
    namedBy = json['named_by'];
    number = int.parse(json['number'].toString());
    period = int.parse(json['period'].toString());
    group = int.parse(json['group'].toString());
    phase = json['phase'];
    source = json['source'];
    bohrModelImage = json['bohr_model_image'];
    bohrModel3d = json['bohr_model_3d'];
    spectralImg = json['spectral_img'];
    summary = json['summary'];
    symbol = json['symbol'];
    xpos = int.parse(json['xpos'].toString());
    ypos = int.parse(json['ypos'].toString());
    wxpos = int.parse(json['wxpos'].toString());
    wypos = int.parse(json['wypos'].toString());
    shells = json['shells'].cast<int>();
    electronConfiguration = json['electron_configuration'];
    electronConfigurationSemantic = json['electron_configuration_semantic'];
    electronAffinity = double.parse(json['electron_affinity'].toString());
    electronegativityPauling =
        double.parse(json['electronegativity_pauling'].toString());
    ionizationEnergies = json['ionization_energies'].cast<int>();
    cpkHex = json['cpk-hex'];
    image = (json['image'] != null ? new Image.fromJson(json['image']) : null)!;
    block = json['block'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['appearance'] = this.appearance;
    data['atomic_mass'] = this.atomicMass;
    data['boil'] = this.boil;
    data['category'] = this.category;
    data['density'] = this.density;
    data['discovered_by'] = this.discoveredBy;
    data['melt'] = this.melt;
    data['molar_heat'] = this.molarHeat;
    data['named_by'] = this.namedBy;
    data['number'] = this.number;
    data['period'] = this.period;
    data['group'] = this.group;
    data['phase'] = this.phase;
    data['source'] = this.source;
    data['bohr_model_image'] = this.bohrModelImage;
    data['bohr_model_3d'] = this.bohrModel3d;
    data['spectral_img'] = this.spectralImg;
    data['summary'] = this.summary;
    data['symbol'] = this.symbol;
    data['xpos'] = this.xpos;
    data['ypos'] = this.ypos;
    data['wxpos'] = this.wxpos;
    data['wypos'] = this.wypos;
    data['shells'] = this.shells;
    data['electron_configuration'] = this.electronConfiguration;
    data['electron_configuration_semantic'] =
        this.electronConfigurationSemantic;
    data['electron_affinity'] = this.electronAffinity;
    data['electronegativity_pauling'] = this.electronegativityPauling;
    data['ionization_energies'] = this.ionizationEnergies;
    data['cpk-hex'] = this.cpkHex;
    if (this.image != null) {
      data['image'] = this.image.toJson();
    }
    data['block'] = this.block;
    return data;
  }
}

class Image {
  late String title;
  late String url;
  late String attribution;

  Image({required this.title, required this.url, required this.attribution});

  Image.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    url = json['url'];
    attribution = json['attribution'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['url'] = this.url;
    data['attribution'] = this.attribution;
    return data;
  }
}
