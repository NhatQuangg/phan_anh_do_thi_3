import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:phan_anh_do_thi_3/repository/authentication/exceptions/signup_email_password_failure.dart';
import 'package:phan_anh_do_thi_3/screens/home/home_screen.dart';
import 'package:phan_anh_do_thi_3/screens/login/login.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  // Variables
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    Future.delayed(const Duration(seconds: 6));
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }
  // Neu nguoi dung da dang nhap thi toi man hinh home
  // con khong thi toi login
  _setInitialScreen(User? user) {
    user == null ? Get.offAll(() => const HomeScreen()) : Get.offAll(() => const Login());
  }

  Future<void> createUserWithEmailAndPassword (String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      firebaseUser.value != null ? Get.offAll(() => const Login()) : Get.to(() => HomeScreen());
    } on FirebaseAuthException catch (e) {
      final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
      print('FIREBASE AUTH EXCEPTION - ${ex.message}');
      throw ex;
    } catch (_) {
      final ex = SignUpWithEmailAndPasswordFailure();
      print('EXCEPTION - ${ex.message}');
      throw ex;
    }
  }

  Future<void> loginWithEmailAndPassword (String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
    } catch (_) {}
  }
}