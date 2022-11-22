
class OrganizationUserObject{
    String id = '';
    String orgname ='';
    String address ='';
    String number ='';
    String email= '';

    OrganizationUserObject({
    this.id='',
    required this.orgname,
    required this.address,
    required this.number,
    required this.email,
  });

  Map<String, dynamic> toJson() =>{
    'id': id,
    'orgname': orgname,
    'address': address,
    'contact number': number,
    'email address': email,
  };
}