class TextValidateManager {
  TextValidateManager._();
  static String emailRegExp = r'^[a-zA-Z0-9._%+-]+@gmail\.com$';
  static String passwordLeastLowerCaseLetter = r'(?=.*[a-z])';
  static String passwordLeastDigit = r'(?=.*\d)';
  static String passwordLeastOneCharacter = r'(?=.*[@$!%*?&])';
  static String passwordLeastEightNumber = r'.{8,}';
  static String phoneFormat = r'^\d+$';
  static const String fullNameRegExp =
      r'^([a-zA-Z\u0600-\u06FF]{2,}\s){2,}[a-zA-Z\u0600-\u06FF]{2,}$';
  static String fieldIsRequired = "هذا الحقل مطلوب";
  static String invalidEmailOrPassword =
      "البريد الإلكتروني أو كلمة المرور غير صحيحة";
  static String passwordFromAtoZ = "يجب إدراج حرف صغير [a-z] على الأقل";
  static String passwordSpicailCharacter = "يجب إدراج رمز خاص واحد على الأقل";
  static String passwordLeastNumber = "يجب إدراج رقم واحد على الأقل";
  static String passwordLeastAt8Number = "يجب ألا تقل كلمة المرور عن 8 أرقام";
  static String pleaseSelectDataOfBrith = "يرجى اختيار تاريخ الميلاد";
  static String phoneTooShort = "رقم الهاتف قصير جداً";
  static String invalidPhoneFormat = "يرجى إدخال أرقام فقط";
  static String requiredPhone = "يرجى إدخال رقم الهاتف";
  static String invalidFullName = "الاسم ثلاثي (3 كلمات)";
  static String passwordsNotMatch = "كلمتا المرور غير متطابقتين";
  static String pleaseEnterNumber = "يرجى إدخال رقم صحيح فقط";
}
