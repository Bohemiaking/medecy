import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentaroof_agent/controllers/cubits/auth/auth_state.dart';
import 'package:rentaroof_agent/controllers/repositories/userAuth_repo.dart';

class AuthCubit extends Cubit<AuthState> {
  UserAuthRepo signupRepo = UserAuthRepo();

  AuthCubit() : super(AuthInitialState());

  void sendSignupRequest(name, email, mobile, role, password, category) {
    try {
      signupRepo.userSignup(name, email, mobile, role, password, category);
      emit(SignupSendRequestState());
    } catch (exc) {
      emit(SignupErrorState(exc.toString()));
    }
  }
}
