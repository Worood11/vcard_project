import 'package:flutter/foundation.dart';
import 'package:vcard_project/db/db_helper.dart';
import 'package:vcard_project/models/contact_model.dart';

class ContactProvider extends ChangeNotifier {
  List<ContactModel> contactList = [];
  final db = DbHelper();

  Future<int> insertContact(ContactModel contactModel) async {
    return db.insertContact(contactModel);
  }

  Future<void> getAllContacts() async {
    contactList = await db.getAllContacts();
    notifyListeners();
  }
}
