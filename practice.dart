class Animal{
  String name;
  int hunger = 50;

  Animal({required this.name});

  void eat(){
    print('$name is eating');
    hunger = 0;
  }
}

class Lion extends Animal{

  Lion({required String name}):super(name: name);

  void roar(){
    print('ROAR!!!!');
  }
}

void feedAllAnimals(var animals){
  
  for(var Anames in animals){
    if(Anames.hunger > 10){
      Anames.eat();
    }
    else{
      print('${Anames.name} is not hungry');
    }
  }
}

void main(){
  var myZoo=[Lion(name:'Simba'),Animal(name: 'Marty'),Animal(name: 'Bagheera')];

  feedAllAnimals(myZoo);
}