// import 'package:email_validator/email_validator.dart';
// import 'package:flutter/material.dart';

// import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// class Validators {
//   // TODO use trim
//   final BuildContext _context;

//   static const int MIN_PASSWORD_LENGTH = 6;
//   // static const int MAX_PASSWORD_LENGTH = 16;

//   // Singleton class
//   Validators._(this._context);

//   static Validators of(BuildContext context) => Validators._(context);

//   // Validates Email
//   String emailValidator(value) {
//     if (value == null || value.isEmpty) {
//       return AppLocalizations.of(_context).enterEmail;
//     } else if (!EmailValidator.validate(value)) {
//       return AppLocalizations.of(_context).invalidEmail;
//     }
//     return null;
//   }

//   // Validates password
//   String passwordValidator(String value) {
//     if (value == null || value.isEmpty) {
//       return AppLocalizations.of(_context).enterPassword;
//     }

//     if (value.length < MIN_PASSWORD_LENGTH) {
//       return AppLocalizations.of(_context)
//           .minPasswordLength(MIN_PASSWORD_LENGTH);
//     }

//     return null;
//   }

//   String passwordConfirmationValidator(String password, String confirmation) {
//     if (password == confirmation) return null;
//     return AppLocalizations.of(_context).unmatchingPasswords;
//   }

//   // Validates password for the login form
//   String loginPasswordValidator(String value) {
//     if (value == null || value.isEmpty || value.length < MIN_PASSWORD_LENGTH) {
//       return AppLocalizations.of(_context).invalidPassword;
//     }

//     return null;
//   }

//   String nameValidator(String value) {
//     if (value == null || value.isEmpty) {
//       return AppLocalizations.of(_context).enterName;
//     }

//     return null;
//   }

//   String verificationCodeValidator(String value) {
//     if (value.length != 6) return AppLocalizations.of(_context).invalidOTP;
//     return null;
//   }
// }

// class CustomException implements Exception {
//   String message;

//   CustomException(this.message);
// }
