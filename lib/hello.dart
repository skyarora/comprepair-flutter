class Hello{
  String name;
  String email;
  String phone;
  String subject;
  String Query;


 Hello(
this.name,
this.email,
this.phone,
this.subject,
this.Query,
  );
  Map<String ,dynamic> toJson()=> {
'name':name,
    'email':email,
    'phone':phone,
    'subject':subject,
    'Query':Query,
  };
}