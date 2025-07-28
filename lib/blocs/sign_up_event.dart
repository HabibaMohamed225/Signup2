abstract class SignUpEvent {}

class SignUpSubmitted extends SignUpEvent {
  final String email;
  final String password;
  final String confirmPassword;

  SignUpSubmitted({
    required this.email,
    required this.password,
    required this.confirmPassword,
  });
}
