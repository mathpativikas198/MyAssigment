import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations{
  @override
  Map<String,Map<String,String>> get keys =>{
    'en_US':{
      'email_hint' : 'Enter email',
      'internet_exception' : "We're unable to show results.\nPlease check your network\nconnection",
      'internet_retry' : "Retry",
      'login' : "Log In",
      'password_hint' : "Enter Password",
      'general_exception':"We're unable to process your request. \n Please try again"
    },
    'ur_INDIA' :{
      'email_hint' : 'ईमेल'
    }
  };
}