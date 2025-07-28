import 'package:flutter_bloc/flutter_bloc.dart';
import '../utils/sign_up_validator.dart';
import 'sign_up_event.dart';
import 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc() : super(SignUpInitial()) {
    on<SignUpSubmitted>((event, emit) async {
      final errors = SignUpValidator.validateSignUpFields(
        email: event.email,
        password: event.password,
        confirmPassword: event.confirmPassword,
      );

      if (errors.isNotEmpty) {
        emit(SignUpFailure(error: errors.values.first));
        return;
      }

      emit(SignUpLoading());
      await Future.delayed(const Duration(seconds: 2));
      emit(SignUpSuccess());
    });
  }
}

