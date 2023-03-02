/*

Assigment part is done as of now of 4 question

*/


List<String> myWindowScreen= ['zoom', 'music','chrome','notes'];
main() {
 
  
  // 1 Question -> Done 
  pullScreenToFront((currentIndex){
    print(myWindowScreen[currentIndex]);
  },1);
  
  // 2 Question -> Done
  moveToScreen(1,3);
 
  // 3 Question -> Done
  deleteScreen(2);
  
  // 4 Question -> Done 
  insertAtFront(0);
}

void insertAtFront(int val){
 
  myWindowScreen.insert(val,"Avnish");
    print("Insert the value at the start of the list : $myWindowScreen");
}

void pullScreenToFront(Function(int) newfun,int index){
      print("Poops out the Front Element in the Screen");
      newfun(index);
}

void moveToScreen(int start,int end){
  print("Move To the Screen");
  for(int i=start;i<end;i++){
    print(myWindowScreen[i]);
  }
}

void deleteScreen(int index){
  myWindowScreen.removeAt(index);
  print("The Final list after the Deletion is $myWindowScreen");
 
}