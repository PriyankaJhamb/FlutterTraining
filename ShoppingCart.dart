// @dart:2.9
import 'dart:io';

void main()
{
  Map menu={
    'noodle':{'title': "Vegie Noodles",'price':344,'rating':4.5 }, 
    'maggie':{'title':"Vegiie maggie",'price':345, 'rating':4.3},
    'burger':{'title': "Chilli Burger",'price':332,'rating':3.4}
    };
    
  List shoppingCart=[];
  while (true)
  {
    print("Enter the dish name to add in the shopping cart and 'No' to Quit:");
    var choice=stdin.readLineSync();
    if (choice=="No")
    {
      break;
    }
    else if(menu.containsKey(choice))
    {
      shoppingCart.add(menu[choice]);
    }
    else 
    {
      print("Sorry ${menu[choice]} is not available for now.");
    }



  }
  
  


}