class ApiEndpoints {
  static const baseUrl = "https://api.globalplugservices.co.uk";

//AUTH
  //sign up
  static const register = "$baseUrl/accounts/register/";
  //sign in
  static const login = "$baseUrl/accounts/login/";
  //reset password request & send OTP
  static const pwdResetResquest = "$baseUrl/accounts/password/reset/request/";
  static const verifyPswdResetToken = "$baseUrl/accounts/verify-reset-token/";

  //resend OTP 
  static const resendOTP = "$baseUrl/accounts/activate/otp/resend/";

  //verify OTP
  static const verifyOTP = "$baseUrl/accounts/activate/otp/verify/";
  //set new password for user
  static const setNewPassword = "$baseUrl/accounts/password/reset/confirm/";
}
