// import 'dart:convert';


// import 'package:get/';

// class LocalStorage{


//   final box = GetStorage();
//   static Encrypted? encrypted;
//   static var decrypted;

//   saveUserToken(token)async{
//       await box.write("token", token);
//   }

//   tokenExpire() async {
//     final box = GetStorage();
//     showSuccessSnackBar('Logged out', 'Success');
//     await box.remove("token");
//     await box.remove("localPin");
//     await box.remove("user");
//     await FirebaseAuth.instance.signOut().then((value) => Get.offAll(SignInScreen()));
//   }

//   resetPin() async {
//     await box.remove("token");
//     await box.remove("user");
//     var firebaseAuth = FirebaseAuth.instance;
//     await FirebaseFirestore.instance.collection("user_pin").doc(firebaseAuth.currentUser!.uid).delete();
//     await FirebaseAuth.instance.signOut().then((value) => Get.offAll(SignInScreen()));
//   }

//   void updateToken() {
//     var firebaseAuth = FirebaseAuth.instance;
//     if (firebaseAuth.currentUser! != null) {
//       // firebaseAuth.currentUser?.then((val) {
//       //   val.getIdToken(refresh: true).then((onValue) {
//       //     // here you can mutate state to BLoC or Provider
//       //     // or Inherited widget
//       //     // for example - authBloc.passFirebaseToken.add(onValue.token);
//       //   });
//       // });
//     }
//   }

//   setPin(pin)async{
//     var firebaseAuth = FirebaseAuth.instance;
//     final key = Key.fromUtf8('2sDRD+y3rYezh0DS');
//     final iv = IV.fromLength(16);
//     final encrypter = Encrypter(AES(key));
//     encrypted = encrypter.encrypt(pin, iv: iv);
//     FirebaseFirestore.instance.collection("user_pin").doc(firebaseAuth.currentUser!.uid).set({
//       "uid": firebaseAuth.currentUser!.uid,
//       "password": encrypted!.base64
//     });
//     // encryptAES("df");
//   }

//   decryptPin(pin)async{
//     var firebaseAuth = FirebaseAuth.instance;
//     final key = Key.fromUtf8('2sDRD+y3rYezh0DS');
//     final iv = IV.fromLength(16);
//     final encrypter = Encrypter(AES(key));
//     encrypted = encrypter.encrypt(pin, iv: iv);
//     var passwordPin = await FirebaseFirestore.instance.collection("user_pin").doc(firebaseAuth.currentUser!.uid).get();



//     if(passwordPin['password'] != encrypted!.base64){
//       return false;
//     }
//     print(passwordPin['password']);
//     return true;
//   }

//   void Encrypt() async{

//     var bytes = utf8.encode("foobar");
//     utf8.decode(bytes);
//     var digest = md5.convert(bytes);

//   }



//   static encryptAES(plainText) async {
//     final key = Key.fromUtf8('2sDRD+y3rYezh0DS');
//     final iv = IV.fromLength(16);
//     final encrypter = Encrypter(AES(key));

//     // var password = encrypter.decrypt(encrypted!);
//     var firebaseAuth = FirebaseAuth.instance;
//     var userPin = await FirebaseFirestore.instance.collection("user_pin").doc(firebaseAuth.currentUser!.uid).get();
//     print("=====================================================================");
//     print(userPin.get("password"));
//     var passwordDecrypted = encrypter.decrypt(userPin.get("password"), iv: iv);
//     print(passwordDecrypted);
//     // print("password = "+password);
//   }

//   createPassword(pin){

//   }

//   saveSelectedAccountView(data) async {
//     print(data);
//     final prefs = await SharedPreferences.getInstance();
//     await prefs.setString("account", jsonEncode(data));

//   }

//   getSelectedAccountView() async {

//     final prefs = await SharedPreferences.getInstance();
//     var account = await prefs.getString("account");
//     return jsonDecode(account!);
//   }



// }