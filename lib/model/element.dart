class Elements {
  int atomicNo;
  String name;
  String symbole;
  int period;
  int group;
  String block;
  String elementType;
  String family;
  String phase;
  String eConfig;
  String discoveredBy;
  String imgPath;
  dynamic relAtomicMass;

  Elements(
      {this.atomicNo,
      this.name,
      this.symbole,
      this.period,
      this.group,
      this.block,
      this.elementType,
      this.family,
      this.phase,
      this.eConfig,
      this.discoveredBy,
      this.imgPath,
      this.relAtomicMass
    });

  factory Elements.fromJson(Map<String, dynamic> json) {
    return Elements(
      atomicNo: json['atomic_no'],
      name : json['name'],
      symbole : json['symbole'],
      period : json['period'],
      group : json['group'],
      block : json['block'],
      elementType : json['element_type'],
      family : json['family'],
      phase : json['phase'],
      eConfig : json['e_config'],
      discoveredBy : json['discovered_by'],
      imgPath: json['img_location'],
      relAtomicMass: json['rel_atomic_mass']);
  }
}


class ElementList{
  final List<Elements> elements;

  ElementList({this.elements});

  factory ElementList.fromJson(List<dynamic> json){
    List<Elements> elements = new List<Elements>();
    elements = json.map((i)=>Elements.fromJson(i)).toList();

    return new ElementList(
      elements: elements
    );
  }
}
