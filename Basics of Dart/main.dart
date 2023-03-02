/*
Topics covered is :- 

1. Map

*/

main() {
/*
int ,String {key linked with the value by which we get the value for the element}
1->"Helo" 2-> "Cello"
*/

// Map structure in the Dart

  Map<int, String> mymap = {1: "Hello", 2: "Peter", 3:"How are you?"};
  
  for(int i=1;i<=mymap.length+1;i++){
    if(mymap.containsKey(i)){
       print(mymap[i]);
    }
    
  }
  
}
