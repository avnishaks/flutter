main(){
  int amount=10;

  // Get the control of null vaue of whole list after data type Null Aware Symbol
  // Get the control of null value of list of string we put ? just after the String

  List<String?> ? myString=["1","2",null];
  print(myString);


  int? amountNull=12*10;

  
  amount=amountNull;
 // ! -> convert null value to not null
  // [ Need not do ] amount = amountNull!;

  print(amount);

}
String? someFun(String one,String two){
  return null;
}


