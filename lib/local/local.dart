import 'package:get/get.dart';
class myLocal implements Translations{

  @override
  Map<String, Map<String, String>> get keys => {
    'ar' : {  '1':'الصفحة الرئيسية','2' :'مستخدم','3':'خبير','4':'تسجيل دخول','5':'الايميل','6':'كلمة السر','7':'تسجيل الدخول','8':'ليس لديك حساب','9':'تسجيل الدخول','10':'الايميل لا يجب ان يكون فارغ','11':'الايميل لا يجب ان يكون فارغ',
      '12':'تسجيل الدخول','13':'الايميل','14':'كلمة السر','15':'تسجيل دخول','16':'ليس لديك حساب','17':'تسجل دخول','18':'الايميل لا يجب ان يكون فارغ ','19':'كلمة السر لا يجب ان يكون فارغ','20':'تسجيل الخروج',
      '21':'مستخدم','23':'الاسم','24':'الاسم لا يجب ان يكون فارغ','25':'الايميل','26':'الايميل لا يجب ان يكون فارغ','27':'كلمة السر','28':'كلمة السر لا يجب ان تكون فارغة','29':'تأكيد كلمة السر','30':'تأكيد كلمة السر لا يجب أن تكون فارغة','31':'تسجيل الدخول'
    },
    'en':  { '1':'Homepage','2': 'user','3': 'Expert','4':'LOG IN','5':'Email','6':'Password','7':'log in','8':'Rigester','9':'LOG IN','10':'Email must not be embty ','11':'Password must not be embty',
     '12':'LOG IN','13':'Email','14':'Password','15':'log in','16':'Rigester','17':'LOG IN','18':'Email must not be embty ','19':'Password must not be embty','20':'LOG OUT',
      '21':'USER','23':'Name','24':'Name must not be embty','25':'Email','26':'Email must not be embty','27':'Password','28':'Passwoed must not be embty','29':'Confirm Password','30':'Confirm Password must not be embty','31':'LOG IN',
    },
  };

 const myLocal();
}