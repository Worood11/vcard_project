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
}
