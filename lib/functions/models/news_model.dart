class News {
  late Live? live;
  late Map<String, dynamic>? devtools;

  News({ this.live, this.devtools});
  
  News.fromJson(Map<String, dynamic> json) {
    live = Live.fromJson(json['live']);
    devtools = json['devtools'];
  }
}

class Live {
  late String id;
  late String title;
  late DateTime date;
  late List<String> images;
  late String content;
  late int publicationAmount;

  Live(
      {required this.id,
        required this.title,
        required this.date,
        required this.images,
        required this.content,
        required this.publicationAmount});

  Live.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    date = DateTime.parse(json['date']);
    images = json['images'].cast<String>();
    content = json['content'];
    publicationAmount = json['publicationAmount'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['date'] = date;
    data['images'] = images;
    data['content'] = content;
    data['publicationAmount'] = publicationAmount;
    return data;
  }
}

class Devtools {
  List<String?>? organisations;
  List<String?>? places;
  String? sId;
  List<String?>? keywords;
  int? articleId;
  String? url;
  String? publishDate;
  String? metadataTitle;
  String? metadataDescription;
  String? metadataTopImage;
  String? metadataMetaKeywords;
  String? title;
  String? content;
  List<String?>? people;
  bool? flaggedNoContent;
  int? iV;

  Devtools(
      {this.organisations,
      this.places,
      this.sId,
      this.keywords,
      this.articleId,
      this.url,
      this.publishDate,
      this.metadataTitle,
      this.metadataDescription,
      this.metadataTopImage,
      this.metadataMetaKeywords,
      this.title,
      this.content,
      this.people,
      this.flaggedNoContent,
      this.iV});

  Devtools.fromJson(Map<String, dynamic> json) {
    organisations = json['organisations'].cast<String?>();
    places = json['places'].cast<String?>();
    sId = json['_id'];
    keywords = json['keywords'].cast<String?>();
    articleId = json['articleId'];
    url = json['url'];
    publishDate = json['publish_date'];
    metadataTitle = json['metadata_title'];
    metadataDescription = json['metadata_description'];
    metadataTopImage = json['metadata_topImage'];
    metadataMetaKeywords = json['metadata_metaKeywords'];
    title = json['title'];
    content = json['content'];
    people = json['people'].cast<String>();
    flaggedNoContent = json['flaggedNoContent'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['organisations'] = organisations;
    data['places'] = places;
    data['_id'] = sId;
    data['keywords'] = keywords;
    data['articleId'] = articleId;
    data['url'] = url;
    data['publish_date'] = publishDate;
    data['metadata_title'] = metadataTitle;
    data['metadata_description'] = metadataDescription;
    data['metadata_topImage'] = metadataTopImage;
    data['metadata_metaKeywords'] = metadataMetaKeywords;
    data['title'] = title;
    data['content'] = content;
    data['people'] = people;
    data['flaggedNoContent'] = flaggedNoContent;
    data['__v'] = iV;
    return data;
  }
}
