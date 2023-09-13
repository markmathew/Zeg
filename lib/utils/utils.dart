import 'dart:io';

import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../common/colors.dart';
import '../models/payment_entity.dart';

class ValidationUtils{

}

String? validateEmail(String? email) {
  bool isValidEmail(String email) {
    return RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(email);
  }

  if (email == null || email.isEmpty) {
    return 'Please enter your email';
  } else if (!isValidEmail(email)) {
    return 'Invalid email format';
  }
  return null;
}

String? validatePassword(String? value) {
  RegExp regex =
  RegExp(r'^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{8,}$');
  if (value == null || value.isEmpty) {
    return 'Please enter password';
  } else if (!regex.hasMatch(value)) {
    return "Password should contain 8 characters, capital, small letter, number & special characters.";
  } else {
    return null;
  }
}

String? validateName(String? value) {
  bool isValidName(String value) {
    const String pattern = r'^[a-zA-Z\s]+$';
    final regExp = RegExp(pattern);
    return regExp.hasMatch(value);
  }

  if (value == null || value.isEmpty) {
    return 'Please enter your name';
  } else if (!isValidName(value)) {
    return 'Please enter valid name without any number or special characters';
  }
  return null;
}


showPopUp({
  required BuildContext context,
  required String svgPath,
  required String text,
  double? svgWidth,
  Color? svgColor,
  EdgeInsetsGeometry? padding,
  double? height,
}) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Stack(
          children: [
            Container(
              padding: padding ??
                  const EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 100,
                  ),
              constraints: BoxConstraints(maxHeight: height ?? 360),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: ColorsConstant.white,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 4),
                    blurRadius: 20,
                    color: ColorsConstant.neonGreen.withOpacity(0.1),
                  ),
                ],
              ),
              child: Center(
                child: Column(
                  children: [

                    Text(
                      text,
                      style: GoogleFonts.inter(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.close),
                  color: ColorsConstant.neonGreen,
                ),
            ),
          ],
        ),
      );
    },
  );
}

class CardUtils {
  static CardType getCardTypeFrmNumber(String input) {
    CardType cardType;
    if (input.startsWith(RegExp(
        r'((5[1-5])|(222[1-9]|22[3-9][0-9]|2[3-6][0-9]{2}|27[01][0-9]|2720))'))) {
      cardType = CardType.master;
    } else if (input.startsWith(RegExp(r'[4]'))) {
      cardType = CardType.visa;
    } else if (input.startsWith(RegExp(r'((506(0|1))|(507(8|9))|(6500))'))) {
      cardType = CardType.verve;
    } else if (input.startsWith(RegExp(r'((34)|(37))'))) {
      cardType = CardType.americanExpress;
    } else if (input.startsWith(RegExp(r'((6[45])|(6011))'))) {
      cardType = CardType.discover;
    } else if (input.startsWith(RegExp(r'((30[0-5])|(3[89])|(36)|(3095))'))) {
      cardType = CardType.dinersClub;
    } else if (input.startsWith(RegExp(r'(352[89]|35[3-8][0-9])'))) {
      cardType = CardType.jcb;
    } else if (input.length <= 8) {
      cardType = CardType.others;
    } else {
      cardType = CardType.invalid;
    }
    return cardType;
  }

  static Widget getCardIcon(CardType? cardType) {
    String img = "";
    Color? color;
    switch (cardType) {
      case CardType.master:
        img = 'mastercard.svg';
        break;
      case CardType.visa:
        img = 'visa.svg';
        break;
      case CardType.verve:
        img = 'verve.svg';
        break;
      case CardType.americanExpress:
        img = 'american-express.svg';
        break;
      case CardType.discover:
        img = 'discover.svg';
        break;
      case CardType.dinersClub:
        img = 'diners-club-international.svg';
        break;
      case CardType.jcb:
        img = 'jcb.svg';
        break;
      case CardType.others:
        img = "credit-card.svg";
        break;
      default:
        img = "warning.svg";
        break;
    }
    if (img == "credit-card.svg" || img == "warning.svg") {
      color = ColorsConstant.grey;
    }
    return Image.asset(
      'assets/vectors/zeglogo.png',
      color: color,
      width: 40,
    );
  }

  static String getCleanedNumber(String text) {
    RegExp regExp = RegExp(r"[^0-9]");
    return text.replaceAll(regExp, '');
  }

  static String? validateCardNum(String? input) {
    if (input == null || input.isEmpty) {
      return "This field is required";
    }
    input = getCleanedNumber(input);
    if (input.length < 8) {
      return "Card is invalid";
    }
    int sum = 0;
    int length = input.length;
    for (var i = 0; i < length; i++) {
      int digit = int.parse(input[length - i - 1]);
      if (i % 2 == 1) {
        digit *= 2;
      }
      sum += digit > 9 ? (digit - 9) : digit;
    }
    if (sum % 10 == 0) {
      return null;
    }
    return "Card is invalid";
  }

  static String? validateCVV(String? value) {
    if (value == null || value.isEmpty) {
      return "This field is required";
    }
    if (value.length < 3 || value.length > 4) {
      return "CVV is invalid";
    }
    return null;
  }

  static String? validateYear(String? value) {
    if (value == null || value.isEmpty) {
      return "This field is required";
    }

    int year = int.parse(value);

    var fourDigitsYear = convertYearTo4Digits(year);
    if ((fourDigitsYear < 1) || (fourDigitsYear > 2099)) {
      return 'Expiry year is invalid';
    }
    return null;
  }

  static String? validateMonth(String? value) {
    if (value == null || value.isEmpty) {
      return "This field is required";
    }
    int month = int.parse(value);
    if ((month < 1) || (month > 12)) {
      return 'Expiry month is invalid';
    }

    return null;
  }

  static int convertYearTo4Digits(int year) {
    if (year < 100 && year >= 0) {
      var now = DateTime.now();
      String currentYear = now.year.toString();
      String prefix = currentYear.substring(0, currentYear.length - 2);
      year = int.parse('$prefix${year.toString().padLeft(2, '0')}');
    }
    return year;
  }

  static String? hasDateExpired(int month, int year) {
    if (isNotExpired(year, month)) {
      return null;
    }
    return "Card has expired";
  }

  static bool isNotExpired(int year, int month) {
    return !hasYearPassed(year) && !hasMonthPassed(year, month);
  }

  static List<int> getExpiryDate(String value) {
    var split = value.split(RegExp(r'(/)'));
    return [int.parse(split[0]), int.parse(split[1])];
  }

  static bool hasMonthPassed(int year, int month) {
    var now = DateTime.now();
    return hasYearPassed(year) ||
        convertYearTo4Digits(year) == now.year && (month < now.month + 1);
  }

  static bool hasYearPassed(int year) {
    int fourDigitsYear = convertYearTo4Digits(year);
    var now = DateTime.now();
    return fourDigitsYear < now.year;
  }
}

class DateTimeUtils {
  static DateTime convertTimeStringToDateTime(String timeString) {
    final DateTime now = DateTime.now();

    DateTime parsedTime = DateFormat("hh:mm a").parse(timeString);

    final DateTime resultDateTime = DateTime(
        now.year, now.month, now.day, parsedTime.hour, parsedTime.minute);

    return resultDateTime;
  }

  static DateTime joinDateAndTime(DateTime dateString, DateTime timeString) {
    final DateFormat dateTimeFormat = DateFormat("yyyy-MM-dd HH:mm:ss");
    final String combinedDateTimeString =
        "${dateString.toString().substring(0, 10)} ${timeString.toString().substring(11)}";

    return dateTimeFormat.parse(combinedDateTimeString);
  }

  static List<DateTime> filterDatesByMonth(
      List<DateTime> dates, String monthName) {
    return dates
        .where(
            (date) => date.month == DateTime.parse('2023-$monthName-01').month)
        .toList();
  }

  static String getMonthStringNumber(String month) {
    switch (month) {
      case 'January':
        return "01";
      case 'February':
        return "02";
      case 'March':
        return "03";
      case 'April':
        return "04";
      case 'May':
        return "05";
      case 'June':
        return "06";
      case 'July':
        return "07";
      case 'August':
        return "08";
      case 'September':
        return "09";
      case 'October':
        return "10";
      case 'November':
        return "11";
      case 'December':
        return "12";
      default:
        return "01";
    }
  }
}

// class ImageUtils {
//   static Future<File?> getFromGallery() async {
//     XFile? pickedFile = await ImagePicker().pickImage(
//       source: ImageSource.gallery,
//       maxWidth: 1800,
//       maxHeight: 1800,
//     );
//     if (pickedFile != null) {
//       File imageFile = File(pickedFile.path);
//       return imageFile;
//     }
//
//     return null;
//   }
//
//   static Future<String> saveImagePermanently(File imageFile) async {
//     final appDir = await getApplicationDocumentsDirectory();
//     final fileName =
//         'maidSimpl_image_${DateTime.now().millisecondsSinceEpoch}.jpg';
//     final savedImage = await imageFile.copy('${appDir.path}/$fileName');
//     return savedImage.path;
//   }
// }
