
import 'package:flutter/cupertino.dart';

class CardItem{
  String name;
  String id;
  double price;
  int quantity;

  CardItem({this.price,this.id,this.name,this.quantity});

}


class Cart with ChangeNotifier{

  Map<String,CardItem> items={};

  int get itemCount {
    return items.length;

  }

  void addItem(String pdItem,String name,double price){
    if(items.containsKey(pdItem )){
      items.update(pdItem, (existingItems) => CardItem(name:existingItems.name,id:DateTime.now().toString() ,
          price: existingItems.price,quantity: existingItems.quantity+1
      ));
    } else{
      items.putIfAbsent(pdItem, () =>CardItem(
        name: name,
        id: DateTime.now().toString(),
        price: price,
        quantity: 1

      ));
      
    }
    notifyListeners();
  }

  void removeItem(String id){
    items.remove(id);
  }

  void singleRemove(String id){
    if(!items.containsKey(id)){
      return;
    }else if(items[id].quantity>1){
      items.update(id, (existingItems) => CardItem(name:existingItems.name,id:DateTime.now().toString() ,
          price: existingItems.price,quantity: existingItems.quantity+1
      ));
    }
    notifyListeners();
  }

void clear(){
    items={};
    notifyListeners();
}




}