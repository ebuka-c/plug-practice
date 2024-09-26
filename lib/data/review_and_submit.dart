import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:global_plug/constants/images.dart';
import 'package:iconsax/iconsax.dart';

import '../constants/colors.dart';

List<Map> personalInfo = [
  {'key': 'Name:', 'value': 'Omeje Faith'},
  {'key': 'Date of Birth:', 'value': '14 Sept, 2004'},
  {'key': 'Nationality:', 'value': 'Nigeria'},
  {'key': 'Phone Number:', 'value': '+324 8149213332'},
  {'key': 'Email:', 'value': 'skybabyui@gmail.com'},
];

List<Map> ukContactInfo = [
  {'key': 'Type of Visa:', 'value': 'Student Visa'},
  {'key': 'Destination Country:', 'value': 'United Kingdom'},
  {'key': 'Intended DOT:', 'value': '12 August, 2024'},
  {'key': 'Duration of stay:', 'value': '2 years'},
  {'key': 'Address in DC:', 'value': 'Quebec'},
];
List<Map> nigContactInfo = [
  {'key': 'Passport Copy:', 'value': 'Img.54300.PNG'},
  {'key': 'Photograph:', 'value': 'Img.54300.PNG'},
  {'key': 'Travel Itinerary:', 'value': 'Img.54300.PNG'},
  {'key': 'Proof of Acc', 'value': 'Img.54300.PNG'},
];

List<Map> nextOfKinInfo = [
  {'key': 'Passport Copy:', 'value': 'Img.54300.PNG'},
  {'key': 'Photograph:', 'value': 'Img.54300.PNG'},
  {'key': 'Travel Itinerary:', 'value': 'Img.54300.PNG'},
  {'key': 'Proof of Acc:', 'value': 'Img.54300.PNG'},
];

List<Map> nigeriaPassportReview = [
  {
    'child': SvgPicture.asset(AppImages.note),
    'key': 'Visa type',
    'value': 'Student'
  },
  {
    'child': const Icon(Iconsax.timer, size: 20, color: AppColors.textColor2),
    'key': 'Validity Period',
    'value': '60 Days'
  },
  {
    'child': SvgPicture.asset(AppImages.calendar2),
    'key': 'Length of Stay',
    'value': '30 Days'
  }
];

List<Map> upcomingAppointment = [
  {
    'child': const Icon(Iconsax.timer, size: 20, color: AppColors.textColor2),
    'key': 'Appointment Time:',
    'value': '12:00AM WAT'
  },
  {
    'child': SvgPicture.asset(AppImages.calendar2),
    'key': 'Appointment Date:',
    'value': '15TH July, 2024'
  },
  {
    'child': SvgPicture.asset(AppImages.note),
    'key': 'Appointment Address:',
    'value': '123 Immigration Rd London, UK'
  }
];
