class Person{
    Person({required this.name, required this.age});
  
   final String name;
  final int age;



 
}

 Person a1 = Person(name: 'aaa',age: 17);
 Person a2 = Person(name: 'bbb',age: 17);
 Person a3 = Person(name: 'ccc',age: 17);

 List<Person> birlist =[a1, a2, a3];