import 'package:flutter/material.dart';
import './models/category.dart';
import './models/meals.dart';

const Dummy_Categories = const [
  Category(
    id: 'c1',
    title: 'italian',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'ugandan',
    color: Colors.green,
  ),
  Category(
    id: 'c3',
    title: 'somalian',
    color: Colors.blue,
  ),
  Category(
    id: 'c4',
    title: 'kenyan',
    color: Colors.pink,
  ),
  Category(
    id: 'c5',
    title: 'spanish',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: 'italian',
    color: Colors.purple,
  ),
  Category(
    id: 'c7',
    title: 'ugandan',
    color: Colors.green,
  ),
  Category(
    id: 'c8',
    title: 'somalian',
    color: Colors.blue,
  ),
  Category(
    id: 'c9',
    title: 'kenyan',
    color: Colors.pink,
  ),
  Category(
    id: 'c10',
    title: 'spanish',
    color: Colors.blue,
  ),
];

const Dummy_Meals =  [
  Meals(
    id: 'm1',
    categories: [
      'c1',
      'c2'
    ],
    title: 'Spagheti with tomato sauce',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl: 'https://image.shutterstock.com/image-photo/delicious-dinner-meat-balls-pasta-260nw-1104354530.jpg',
    duration: 30,
    ingredients: [
      'white and green asparagus',
      '30 gram pienut',
      'salad',
      '40g tomato'
    ],
    steps: [
      'wash peel and cut aasparagus',
      'cook in salad water',
      'roast puenut',
      'halve tomatoes'
    ],
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: true,
    isVegeterian: true    
  ),
  Meals(
    id: 'm2',
    categories: [
      'c3',
      'c4'
    ],
    title: 'Spagheti with tomato sauce',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl: 'https://cjs.co.ke/wp-content/uploads/2018/03/1558021448-450x295.jpg',
    duration: 30,
    ingredients: [
      'white and green asparagus',
      '30 gram pienut',
      'salad',
      '40g tomato'
    ],
    steps: [
      'wash peel and cut aasparagus',
      'cook in salad water',
      'roast puenut',
      'halve tomatoes'
    ],
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: true,
    isVegeterian: true    
  ),
  Meals(
    id: 'm3',
    categories: [
      'c1',
      'c4'
    ],
    title: 'Spagheti with tomato sauce',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl: 'https://www.standardmedia.co.ke/evemedia/eveimages/wednesday/ovcpmpwtovujelwh5cb6f4158c7e8.jpg',
    duration: 30,
    ingredients: [
      'white and green asparagus',
      '30 gram pienut',
      'salad',
      '40g tomato'
    ],
    steps: [
      'wash peel and cut aasparagus',
      'cook in salad water',
      'roast puenut',
      'halve tomatoes'
    ],
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: true,
    isVegeterian: true    
  ),
  Meals(
    id: 'm4',
    categories: [
      'c4',
      'c6'
    ],
    title: 'Spagheti with tomato sauce',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl: 'https://cjs.co.ke/wp-content/uploads/2017/11/CHICKEN-STRIPS-450x295.jpg',
    duration: 30,
    ingredients: [
      'white and green asparagus',
      '30 gram pienut',
      'salad',
      '40g tomato'
    ],
    steps: [
      'wash peel and cut aasparagus',
      'cook in salad water',
      'roast puenut',
      'halve tomatoes'
    ],
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: true,
    isVegeterian: true    
  )

];