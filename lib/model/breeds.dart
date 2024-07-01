
import 'package:poopaye_paint/model/weight.dart';

class Breeds {
  Weight? weight;
  String? id;
  String? name;
  String? vetstreetUrl;
  String? temperament;
  String? origin;
  String? countryCodes;
  String? countryCode;
  String? description;
  String? lifeSpan;
  int? indoor;
  String? altNames;
  int? adaptability;
  int? affectionLevel;
  int? childFriendly;
  int? dogFriendly;
  int? energyLevel;
  int? grooming;
  int? healthIssues;
  int? intelligence;
  int? sheddingLevel;
  int? socialNeeds;
  int? strangerFriendly;
  int? vocalisation;
  int? experimental;
  int? hairless;
  int? natural;
  int? rare;
  int? rex;
  int? suppressedTail;
  int? shortLegs;
  String? wikipediaUrl;
  int? hypoallergenic;
  String? referenceImageId;

  Breeds(
      {this.weight,
      this.id,
      this.name,
      this.vetstreetUrl,
      this.temperament,
      this.origin,
      this.countryCodes,
      this.countryCode,
      this.description,
      this.lifeSpan,
      this.indoor,
      this.altNames,
      this.adaptability,
      this.affectionLevel,
      this.childFriendly,
      this.dogFriendly,
      this.energyLevel,
      this.grooming,
      this.healthIssues,
      this.intelligence,
      this.sheddingLevel,
      this.socialNeeds,
      this.strangerFriendly,
      this.vocalisation,
      this.experimental,
      this.hairless,
      this.natural,
      this.rare,
      this.rex,
      this.suppressedTail,
      this.shortLegs,
      this.wikipediaUrl,
      this.hypoallergenic,
      this.referenceImageId});


  Breeds.fromJson(Map<String, dynamic> json) {
    weight =
    json['weight'] != null ? Weight.fromJson(json['weight']) : null;
    id = json['id'];
    name = json['name'];
    vetstreetUrl = json['vetstreet_url'];
    temperament = json['temperament'];
    origin = json['origin'];
    countryCodes = json['country_codes'];
    countryCode = json['country_code'];
    description = json['description'];
    lifeSpan = json['life_span'];
    indoor = json['indoor'];
    altNames = json['alt_names'];
    adaptability = json['adaptability'];
    affectionLevel = json['affection_level'];
    childFriendly = json['child_friendly'];
    dogFriendly = json['dog_friendly'];
    energyLevel = json['energy_level'];
    grooming = json['grooming'];
    healthIssues = json['health_issues'];
    intelligence = json['intelligence'];
    sheddingLevel = json['shedding_level'];
    socialNeeds = json['social_needs'];
    strangerFriendly = json['stranger_friendly'];
    vocalisation = json['vocalisation'];
    experimental = json['experimental'];
    hairless = json['hairless'];
    natural = json['natural'];
    rare = json['rare'];
    rex = json['rex'];
    suppressedTail = json['suppressed_tail'];
    shortLegs = json['short_legs'];
    wikipediaUrl = json['wikipedia_url'];
    hypoallergenic = json['hypoallergenic'];
    referenceImageId = json['reference_image_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (weight != null) {
      data['weight'] = weight!.toJson();
    }
    data['id'] = id;
    data['name'] = name;
    data['vetstreet_url'] = vetstreetUrl;
    data['temperament'] = temperament;
    data['origin'] = origin;
    data['country_codes'] = countryCodes;
    data['country_code'] = countryCode;
    data['description'] = description;
    data['life_span'] = lifeSpan;
    data['indoor'] = indoor;
    data['alt_names'] = altNames;
    data['adaptability'] = adaptability;
    data['affection_level'] = affectionLevel;
    data['child_friendly'] = childFriendly;
    data['dog_friendly'] = dogFriendly;
    data['energy_level'] = energyLevel;
    data['grooming'] = grooming;
    data['health_issues'] = healthIssues;
    data['intelligence'] = intelligence;
    data['shedding_level'] = sheddingLevel;
    data['social_needs'] = socialNeeds;
    data['stranger_friendly'] = strangerFriendly;
    data['vocalisation'] = vocalisation;
    data['experimental'] = experimental;
    data['hairless'] = hairless;
    data['natural'] = natural;
    data['rare'] = rare;
    data['rex'] = rex;
    data['suppressed_tail'] = suppressedTail;
    data['short_legs'] = shortLegs;
    data['wikipedia_url'] = wikipediaUrl;
    data['hypoallergenic'] = hypoallergenic;
    data['reference_image_id'] = referenceImageId;
    return data;
  }
}