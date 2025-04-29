class St {
  static String page = "flex flex-col justify-center items-center gap-50 l:gap-100 d:gap-150";
  static String py_50 = "py-50 l:py-60 d:py-80";
  static String py_30 = "py-30 l:py-40 d:py-50";
  static var gap_20 = "gap-20 d:gap-30";
  static var gap_30 = "gap-30 l:gap-40 d:gap-50";
  static var p_30 = "p-30 l:p-40 d:p-50";

  static String l(String classes) {
    return classes.split(' ').map((cls) => 'l:$cls').join(' ');
  }

  static String d(String classes) {
    return classes.split(' ').map((cls) => 'd:$cls').join(' ');
  }
}
