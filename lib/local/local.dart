import 'package:get/get.dart';
class myLocal implements Translations{

  @override
  Map<String, Map<String, String>> get keys => {
    'ar' : {  '1':'الصفحة الرئيسية','2' :'مستخدم','3':'خبير','4':'تسجيل دخول','5':'الايميل','6':'كلمة السر','7':'تسجيل الدخول','8':'ليس لديك حساب','9':'تسجيل الدخول','10':'الايميل لا يجب ان يكون فارغ','11':'الايميل لا يجب ان يكون فارغ',
      '12':'تسجيل الدخول','13':'الايميل','14':'كلمة السر','15':'تسجيل دخول','16':'ليس لديك حساب','17':'تسجل دخول','10':'الايميل لا يجب ان يكون فارغ ','11':'كلمة السر لا يجب ان يكون فارغ','20':'تسجيل الخروج',
    },
    'en':  { '1':'Homepage','2': 'user','3': 'Expert','4':'LOG IN','5':'Email','6':'Password','7':'log in','8':'Rigester','9':'LOG IN','10':'Email must not be embty ','11':'Password must not be embty',
     '12':'LOG IN','13':'Email','14':'Password','15':'log in','16':'Rigester','17':'LOG IN','18':'Email must not be embty ','19':'Password must not be embty','20':'LOG OUT',
    },
  };

 const myLocal();
}