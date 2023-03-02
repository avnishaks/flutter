
main(){
  // ? -> is a null-aware operator (Variables that can be null) 
  bool? amount=getInternetStatus();

 

  /*
  1. As the amount is the nullable variable we have handle it.
  2. We we remove the handle case then it throw the error , so
  we need to convert nullable variable into not nullable variable

  Conversion :- 

  "BANG OPERATOR"
   Deonted by " ! " -> it is used to covert a Nullable Variable
   to not Nullable Variables
  */
  
 
  if(amount==null){
    print("Internet is Down");
    amount=true;
  }
  bool amountNN=amount!;
  // amountNN=null -> we can't asssign nullable value to not nullable variable
  amountNN=true;

  if(amount) print("Green Sign");
  else if(!amount) print("Red Signal");
  
}

bool? getInternetStatus(){
  return null;
}