class User {
  late String email;

  @override
  bool operator ==(Object other) {
    // TODO: implement ==
    if (other is User){
      return email == other.email;
    }
    return super == other;
  }

  @override
  // TODO: implement hashCode
  int get hashCode => super.hashCode;
}

class AdminUser extends User with MailedUser{

}

class GeneralUser extends User {

}

mixin MailedUser on User {
  String getMailSystem(){
    RegExp r=RegExp("@(.*)");
    var m=r.firstMatch(email);
    if (m!.groupCount==1){
      return m.group(1)!;
    }
    throw Exception("Invalid email");
  }
}

class UserManager<T extends User> {
  final List<T> users = <T>[];

  void addUser(T user)=> users.add(user);
  void removeUser(T user)=>users.remove(user);
  void printEmails(){
    users.forEach((element) {
      if (element is AdminUser)
      {
        print(element.getMailSystem());
      }
      else{
        print(element.email);
      }
    });
  }
}

class Ex08 {
  static void example(){
    print("example 08");
    var users = UserManager<User>();
    var u1=User()..email="123@mail.ru";
    var u2=AdminUser()..email="admin@mail.ru";
    users.addUser(u1);
    users.addUser(u2);
    users.printEmails();
    users.removeUser(u2);
    users.printEmails();
  }
}