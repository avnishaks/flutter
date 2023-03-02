/*
Basics of the Functions , Anonymous Function , HOF and List and All


*/


main() {

  String name="Hello";
  String name2="World";
  
  
  String newInterpolate="$name $name2";
  
  print(newInterpolate);
  
  
  print(givenFun(lastname:10,firstname:"Avnish"));
  
  
  // List in Dart
  
  List<int> myList=[2,4];
  myList.add(7);
  
  List<int> myList2=[5,6];
  
  List<int> add12=myList+myList2;
  
  print(add12);
  
  print("HHHHH");
  
  print([...myList,...myList2]);
  
  
  // High Order Functionn
   
  void myInnerFunc(int val){
    val+=2;
    print("Inner Function print $val");
  }
  
  myFun(myInnerFunc,6);
  
  
  // Anonymous Function
  
  myFun((value){
    value++;
    print("Anonymous Function $value");
    return value;   
  },7);
 
  
  // For each element
  
  add12.forEach((i)=>print(i));
  List<int> concat2=add12.map((element)=>(element+5)).toList();
  
  print(concat2);
  
  // Print the Boolean Value
  
  List<bool> concat = add12.map((element) => element%2==0 ).toList(); 
  
  print(concat);
          

}




void myFun(Function(int) newFun,int i){
   newFun(i);
 // i++;
  print("Value of myFun value $i");
 
}


String givenFun({String? firstname,int? lastname}){
  return "$firstname $lastname";
}
