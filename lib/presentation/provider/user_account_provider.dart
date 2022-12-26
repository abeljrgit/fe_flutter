import 'dart:html';
import 'package:flutter/material.dart';

class UserAccountProvider with ChangeNotifier {
  UserAccountProvider() {
    ////////////////////////////////////////
    // At initialization it loads data from
    // browser's local storage to provider
    ////////////////////////////////////////
    _loadFromPrefs();
  }
  ////////////////////////////////////////
  // For Login Status, save the
  // preferences using both provider and
  // browser's local storage(dart:html)
  ////////////////////////////////////////

  Storage localStorage = window.localStorage;

  String isLoggedIn = 'false';
  String userId = '';
  String userFirstName = '';
  String userLastName = '';
  String userEmail = '';
  String userContactNumber = '';
  String userSocial = '';
  String userLeadId = '';

  String localStorageIsLoggedInKey = 'cebbyLJUserIsLoggedIn';
  String localStorageUserIdKey = 'cebbyLJUserId';
  String localStorageUserFirstNameKey = 'cebbyLJUserFirstName';
  String localStorageUserLastNameKey = 'cebbyLJUserLastName';
  String localStorageUserEmailKey = 'cebbyLJUserEmail';
  String localStorageUserContactNumberKey = 'cebbyLJUserContactNumber';
  String localStorageUserSocialKey = 'cebbyLJUserSocial';
  String localStorageUserLeadIdKey = 'cebbyLJUserLeadId';

  String getIsLoggedInFlag() => isLoggedIn;

  void setIsLoggedInStatus({
    required String flag,
    required String id,
    required String fname,
    required String lname,
    required String email,
    required String contactNum,
    required String social,
    required String leadId,
  }) {
    isLoggedIn = flag;
    userId = id;
    userFirstName = fname;
    userLastName = lname;
    userEmail = email;
    userContactNumber = contactNum;
    userSocial = social;
    userLeadId = leadId;

    // Store data in browser's local storage
    localStorage[localStorageIsLoggedInKey] = flag;
    localStorage[localStorageUserIdKey] = id;
    localStorage[localStorageUserFirstNameKey] = fname;
    localStorage[localStorageUserLastNameKey] = lname;
    localStorage[localStorageUserEmailKey] = email;
    localStorage[localStorageUserContactNumberKey] = contactNum;
    localStorage[localStorageUserSocialKey] = social;
    localStorage[localStorageUserLeadIdKey] = leadId;
    notifyListeners();
  }

  _loadFromPrefs() {
    // This loads data from browser's local storage to provider
    isLoggedIn = localStorage[localStorageIsLoggedInKey] ?? 'false';
    userId = localStorage[localStorageUserIdKey] ?? '';
    userFirstName = localStorage[localStorageUserFirstNameKey] ?? '';
    userLastName = localStorage[localStorageUserLastNameKey] ?? '';
    userEmail = localStorage[localStorageUserEmailKey] ?? '';
    userContactNumber = localStorage[localStorageUserContactNumberKey] ?? '';
    userLeadId = localStorage[localStorageUserLeadIdKey] ?? '';
    notifyListeners();
  }

  clearPrefs() {
    // This will remove browser's localstorage key-value pairs
    localStorage.clear();
  }
}
