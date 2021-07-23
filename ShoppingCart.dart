// @dart=2.9
import 'dart:io';

void main()
{
  Map menu={
    'noodle':{'title': "Vegie Noodles",'price':344,'rating':4.5 }, 
    'maggie':{'title':"Vegiie maggie",'price':345, 'rating':3.3},
    'burger':{'title': "Chilli Burger",'price':332,'rating':3.4}
    };
  print("Menu-->${menu}");
  List shoppingCart=[];
  int total=0;
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
      total+=menu[choice]['price'];
    }
    else 
    {
      print("Sorry ${choice} is not available for now.");
    }
  }
 
  print("Your Shopping Cart contaings:");

  
  shoppingCart.forEach((element) 
  {
    print(element);
  });

  print("Total amount:${total}");

  List menuvalues=menu.values.toList();
  List menukeys=menu.keys.toList();
  print(menuvalues);
  print(menukeys);
  for(int i=0;i<menukeys.length;i++)
  {
    for(int j=i+1;j<menukeys.length;j++)
    {
      print(menuvalues[i]['rating']);
        print(menuvalues[j]['rating']);
      if(menuvalues[i]['rating']<menuvalues[j]['rating'])
      {
        
        var temp;
        temp=menuvalues[i];
        menuvalues[i]=menuvalues[j];
        menuvalues[j]=temp;

        var temp1;
        temp1=menukeys[i];
        menukeys[i]=menukeys[j];
        menukeys[j]=temp1;
      }
      print(menuvalues[i]['rating']);
        print(menuvalues[j]['rating']);

    }
  }
    print(menuvalues);
  print(menukeys);
  
}