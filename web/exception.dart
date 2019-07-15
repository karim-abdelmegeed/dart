main(){
  try{
    misbehave();
    print('hello main');
  }
  catch(e){
    print('main() finished handling ${e.runtimeType}.');
  }
  finally{
    print('code run in any condition');
  }
}
void misbehave() {
  try {
    dynamic foo = true;
    print(foo++); 
  } catch (e) {
    print('misbehave() partially handled ${e.runtimeType}.');
    rethrow;
  }
}