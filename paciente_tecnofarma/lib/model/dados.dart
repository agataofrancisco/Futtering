class dados{
  String name = "";
  String nickname = "";
  String img = "";
  String portrayed = "";

  dados(this.name, this.nickname, this.img,this.portrayed);

  dados.fromJson(Map<String, dynamic> json){
    name = json['name'];
    nickname = json['nickname'];
    img = json['img'];
    portrayed = json['portrayed'];
  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = <String, dynamic>{};
    data ['name'] = name;
    data ['nickname'] = nickname;
    data ['img'] = img;
    data ['portrayed'] = portrayed;
    return data;
  }
}