class Element {
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

  Element(
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
      this.imgPath
    });

  factory Element.fromJson(Map<String, dynamic> json) {
    return Element(
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
      imgPath: json['img_location']);
  }
}


class ElementList{
  final List<Element> elements;

  ElementList({this.elements});

  factory ElementList.fromJson(List<dynamic> json){
    List<Element> elements = new List<Element>();
    elements = json.map((i)=>Element.fromJson(i)).toList();

    return new ElementList(
      elements: elements
    );
  }
}
