const String tableContact = 'tbl_contact';
const String tblContactColId = 'id';
const String tblContactColName = 'name';
const String tblContactColMobile = 'mobile';
const String tblContactColEmail = 'email';
const String tblContactColAddress = 'address';
const String tblContactColCompany = 'company';
const String tblContactColDesignation = 'designation';
const String tblContactColWebsite = 'website';
const String tblContactColImage = 'image';
const String tblContactColFavorite = 'favorite';


class ContactModel {
  int id;
  String name;
  String email;
  String mobile;
  String address;
  String company;
  String designation;
  String website;
  String image;
  bool favorite;

  ContactModel({
    this.id = -1,
    required this.name,
    this.email = '',
    required this.mobile,
    this.address = '',
    this.company = '',
    this.designation = '',
    this.website = '',
    this.image = '',
    this.favorite = false,
  });

  Map<String, dynamic> toMap(){
    final map = <String, dynamic>{
      tblContactColName : name,
      tblContactColMobile : mobile,
      tblContactColEmail : email,
      tblContactColAddress : address,
      tblContactColCompany : company,
      tblContactColDesignation : designation,
      tblContactColWebsite : website,
      tblContactColImage : image,
      tblContactColFavorite : favorite ? 1:0,
    };
    if (id > 0){
      map[tblContactColId] = id;
    }
    return map;
  }

  factory ContactModel.fromMap(Map<String, dynamic> map) => ContactModel(
      name: map[tblContactColName],
      mobile: map[tblContactColMobile],
      email: map[tblContactColEmail],
      address: map[tblContactColAddress],
      company: map[tblContactColCompany],
      designation: map[tblContactColDesignation],
      website: map[tblContactColWebsite],
      image: map[tblContactColImage],
      favorite: map[tblContactColFavorite] == 1? true : false,
  );
}
