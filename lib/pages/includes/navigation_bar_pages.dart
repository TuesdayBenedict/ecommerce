import 'package:e_commerce/pages/home_page.dart';
import 'package:flutter/material.dart';

List navPages = [
  const HomePage(),
  const Center(
    child: Text(
      'Shopping Cart',
      style: TextStyle(
        fontSize: 25,
      ),
    ),
  ),
  const Center(
    child: Text(
      'Favourite',
      style: TextStyle(
        fontSize: 25,
      ),
    ),
  ),
  const Center(
    child: Text(
      'User',
      style: TextStyle(
        fontSize: 25,
      ),
    ),
  ),
];
