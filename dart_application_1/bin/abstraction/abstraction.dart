// void main() async {
//   print(await getUserPhone());
//     print(await getAddress());
//   print(await getUserName());
// }
// //////////////////////////////////////////
// Future<String> getUserName() => Future.delayed(   
//       const Duration(seconds: 2),
//       () => 'Nurislam',
//     );
// //////////////////////////////////////////
// Future<int> getUserPhone() => Future.value(
//       0600392592,
//     );
//     ///////////////////////////////////////
// Future<String> getAddress() async => 'Manas 2b';
////////////////////////////////////////// async is don't wait
// void main() {
//   print("First Operation");   
//   Future.delayed(Duration(seconds:3),()=>print('Second Big Operation'));
//   print("Third Operation"); 
//   print("Last Operation"); 
// }
void main() {
  print("First Operation"); 
  print("Second Big Operation"); 
  print("Third Operation"); 
  print("Last Operation"); 
}
