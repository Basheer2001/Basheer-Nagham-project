import 'package:get/get.dart';
class myLocal implements Translations{

  @override
  Map<String, Map<String, String>> get keys => {
    'ar' : {  '1':'الصفحة الرئيسية','2' :'مستخدم','3':'خبير',
    },
    'en':  { '1':'Homepage','2': 'user','3': 'Expert',
    },
  };

 const myLocal();
}