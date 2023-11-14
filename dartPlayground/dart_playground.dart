void main() {


//basic stuff
  String greet = greeting();
  print(greet);
  int my_age = age();
  print("my age is $my_age");
  int arrowFunction = arrowFunc();
  print("arrow woohoo: $arrowFunction");

//what is a list and how to use lists
  List name = ['hehe', 'haha'];
  print(name);
  name.add('jonny cage');
  print(name);
  name.remove('hehe');
  name.remove('haha');
  print(name);

//good practice for lists 
  List<String> newNames = ['this', 'is', 'a', 'list', 'of', 'strings'];
  print(newNames);

//class and inheritance
  User userOne = User('james bond', 37);
  print(userOne.userName);
  print(userOne.userAge);

  SuperUSer usertwo = SuperUSer('james', 19);
  print(usertwo.userName);
  usertwo.publish();
  userOne.login();
}

//what is a function and how to use return type of functions
String greeting() {
  return 'Hello world';
}

int age() {
  return 19;
}

//this is an arrow function
int arrowFunc() => 20;


//classes
class User {
  String userName;
  int userAge;
  User(this.userName, this.userAge) {}

  void login() {
    print("user logged in");
  }
}

//inheritance
class SuperUSer extends User {
  SuperUSer(String userName, int userAge) : super(userName, userAge);

  void publish() {
    print("publish update");
  }
}
