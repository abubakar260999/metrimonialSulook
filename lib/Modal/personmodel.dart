import 'dart:convert';


//List<Profession> casteFromJson(String str) => List<Profession>.from(json.decode(str).map((x) => Profession.fromJson(x)));
//
//String casteToJson(List<Profession> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Person {
  String profile_image;
  String id_card_image;
  String full_body_image;
  String gender;
  String name;
  String password;

  String sect;
  String caste;
  String  birth;
  String education;
  String familymembers;

  String profession;
  String  salary;

  String height;
  String weight;
  String lifestandard;
  String complexion;
  String martialstatus;

  String country;
  String city;
  String address;

  String phno;
  String explain;

  String l_caste;
  String  l_start;
  String  l_end;
  String l_education;
  String l_sect;

  String l_profession;
  String  l_salary;

  String l_height;
  String l_martialstatus;
  String l_country;
  String l_city;
  String l_explain;

  Person({
    this.profile_image,
    this.id_card_image,
    this.full_body_image,
    this.gender,
    this.name,
    this.password,
    this.sect,
    this.caste,
    this.birth,
    this.education,
    this.familymembers,

    this.profession,
    this.salary,

    this.height,
    this.weight,
    this.complexion,
    this.lifestandard,
    this.martialstatus,

    this.country,
    this.city,
    this.address,

    this.phno,
    this.explain,
    this.l_caste,
    this.l_start,
    this.l_end,
    this.l_education,
    this.l_sect,
    this.l_profession,
    this.l_salary,
    this.l_height,
    this.l_martialstatus,
    this.l_country,
    this.l_city,
    this.l_explain,
  });

  factory Person.fromJson(Map<String, dynamic> json) => Person(
    profile_image: json['profile_image'],
    id_card_image: json['id_card_image'],
    full_body_image: json['full_body_image'],
    gender: json['gender'],
        name: json['name'],
       password: json['password'],

        sect: json['sect'],
        caste: json['caste'],
        birth: json['birth'],
        education: json['education'],
    familymembers: json['familymembers'],

        profession: json['profession'],
        salary: json['salary'],

        height: json['height'],
        weight: json['weight'],
      complexion: json['complexion'],
        lifestandard: json['lifestandard'],
        martialstatus: json['martialstatus'],
        country: json['country'],
        city: json['city'],
        address: json['address'],

        phno: json['phno'],
        explain: json['explain'],

        l_caste: json['l_caste'],
        l_start: json['l_start'],
        l_end: json['l_end'],
        l_education: json['l_education'],
        l_sect: json['l_sect'],
         l_profession: json['l_profession'],
        l_salary: json['l_salary'],
        l_height: json['l_height'],
        l_martialstatus: json['l_martialstatus'],
        l_country: json['l_country'],
        l_city: json['l_city'],
      l_explain: json['l_explain'],

      );

  Map<String, dynamic> toJson() => {
        'profile_image': profile_image,
        'id_card_image': id_card_image,
    'full_body_image':full_body_image,
    'gender': gender,
    'name':name,
    'password': password,
        'sect': sect,
        'caste': caste,
        'birth': birth,
        'education': education,
        'profession': profession,
    'familymembers': familymembers,
        'salary': salary,
        'height': height,
        'weight': weight,
    'complexion': complexion,
        'lifestandard': lifestandard,
        'martialstatus': martialstatus,
        'country': country,
        'city': city,
        'address':address,

        'phno': phno,
         'explain': explain,

        'l_caste': l_caste,
        'l_start': l_start,
        'l_end': l_end,
        'l_education': l_education,
        'l_sect': l_sect,
         'l_profession': l_profession,
        'l_salary': l_salary,
        'l_height': l_height,
        'l_martialstatus': l_martialstatus,
        'l_country': l_country,
         'l_city': l_city,
         'l_explain': l_explain,

      };
}
