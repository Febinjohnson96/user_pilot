class Address {
  String? address;
  String? city;
  String? postalCode;
  String? state;

  Address({this.address, this.city, this.postalCode, this.state});
 factory Address.fromJson(Map<String,dynamic>json){
  return Address(
    address: json['address'],
    city: json['city'],
    postalCode: json['postalCode'],
    state: json['state']
  );
 }
}
