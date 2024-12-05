import 'package:flutter/material.dart';
import 'food.dart';
import 'food_catalog.dart'; // Importing the file where FoodCatalog widget is defined

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Catalog App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FoodCatalog(
        foods: [
          Food(
            name: 'Pancake',
            description: 'Pancakes are beloved breakfast treats made from a simple batter of flour, '
                'eggs, milk, and leavening agents. They\'ve evolved into various forms across cultures,'
                ' from thin crepes to fluffy American stacks. The versatility of pancakes allows for '
                'endless customization, whether sweet with syrup or savory with toppings like bacon '
                'and cheese.Cooking pancakes is a ritual, requiring precision and finesse on a hot'
                ' griddle. The aroma fills the air, teasing taste buds and building anticipation. '
                'That first bite offers a crisp exterior giving way to a soft, tender center—a sensation like no other.'
                'Beyond their deliciousness, pancakes symbolize togetherness, enjoyed with family or friends. '
                'They\'re a blank canvas for creating cherished moments and traditions. Whether plain or adorned with toppings, pancakes are a timeless delight, bringing joy to breakfast tables worldwide.',
            url: 'https://media.istockphoto.com/photos/breakfast-picture-id494292144?k=20&m=494292144&s=612x612&w=0&h=6BUwYpc-lC5dADTTqfmnvULL2rlGLon6D7LwlT6n-uQ=',
          ),
          Food(
            name: 'Burger',
            description: 'Burgers, those iconic culinary creations, are the epitome of comfort food and a cornerstone of American cuisine. '
                'These handheld delights consist of a savory patty, typically made from ground beef, though variations abound, nestled between two soft buns. '
                'The beauty of burgers lies in their versatility; they can be customized with an array of toppings, condiments, and accompaniments to suit any taste preference.'
                'The history of burgers is as rich and varied as the toppings they can boast. While the exact origins of the modern hamburger are debated, '
                'it\'s widely believed to have originated in the United States in the late 19th or early 20th century. What began as a humble sandwich sold by street vendors and diners '
                'has since evolved into a global phenomenon, with countless variations and interpretations found around the world.At the heart of every burger is the patty, a carefully '
                'seasoned and cooked masterpiece of ground beef (or other proteins for those opting for vegetarian or vegan alternatives). Whether grilled, fried, or broiled, the patty '
                'serves as the foundation upon which the entire burger experience is built. Its juicy, flavorful goodness is complemented by an array of toppings that add layers of texture, flavor, '
                'and color to each bite.From classic toppings like lettuce, tomato, and onion to more adventurous options such as avocado, fried eggs, or even pineapple, the '
                'possibilities for burger customization are virtually endless. Add to that a selection of cheeses, ranging from the classic American to the bold blue, and a variety of '
                'condiments like ketchup, mustard, mayonnaise, and barbecue sauce, and you have a culinary canvas waiting to be explored.But burgers are more than just a delicious meal; '
                'they\'re a cultural phenomenon—a symbol of comfort, indulgence, and camaraderie. Whether enjoyed at a backyard barbecue, a bustling diner, or a gourmet burger joint, burgers have a '
                'way of bringing people together and sparking joy.In conclusion, burgers are more than just food; they\'re a culinary experience—a delicious combination of flavors, '
                'textures, and memories. Whether classic or creative, simple or gourmet, burgers hold a special place in the hearts and stomachs of people around the world. So the next'
                ' time you sink your teeth into a juicy, flavorful burger, take a moment to savor not just the taste, but the rich history and cultural significance behind this beloved culinary classic.',
            url: 'https://media-cldnry.s-nbcnews.com/image/upload/newscms/2019_21/2870431/190524-classic-american-cheeseburger-ew-207p.jpg',
          ),
          Food(
            name: 'Tacos',
            description: 'Tacos are a beloved Mexican dish consisting of a folded or rolled tortilla filled with a variety of ingredients, '
                'typically including meats such as beef, chicken, or pork, as well as vegetables, '
                'cheese, salsa, and toppings like guacamole or sour cream. Tacos are known for their'
                ' versatility, as they can be customized to suit individual tastes and preferences. '
                'They are often served as street food or in casual dining settings, and they have '
                'gained widespread popularity worldwide for their delicious flavors and satisfying textures.',
            url: 'https://mojo.generalmills.com/api/public/content/GmHhoT5mr0Sue2oMxdyEig_gmi_hi_res_jpeg.jpeg?v=fdaa7c14&t=466b54bb264e48b199fc8e83ef1136b4',
          ),
          Food(
            name: 'Tamales',
            description: 'Tamales are a traditional Mesoamerican dish made of masa dough (cornmeal dough) filled with various ingredients like meats, cheeses, or vegetables. '
                'They\'re wrapped in corn husks or banana leaves and steamed to perfection, resulting in a flavorful and portable treat enjoyed across Latin America.',
            url: 'https://images.ctfassets.net/3vz37y2qhojh/7A6ayszsPJ8D5NQkYIgiWI/12c90dcf456b3cd26a2922ba91d5319f/shutterstock_219837637.jpg?w=750&fit=fill&fm=webp',
          ),
          Food(
            name: 'French Fries',
            description: 'French fries are thin strips of potatoes that are typically deep-fried until crispy and golden brown. They are a beloved '
                'and ubiquitous side dish or snack around the world, known for their crispy exterior and fluffy interior. French fries are often served '
                'hot and seasoned with salt, and they pair well with a variety of sauces and toppings, making them a versatile and satisfying indulgence.',
            url: 'https://cdn.yelloh.com/media/images/products/60304-1-1070.jpg',
          ),
        ],
      ),
    );
  }
}
