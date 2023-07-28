enum ImageAssets {
  add,
  alarm,
  arrowRight,
  box,
  cancel,
  checkGrey,
  checkThin,
  tick,
  compass,
  expandDownThin,
  filter,
  home,
  location,
  notification,
  profileSettingsItem,
  save,
  search,
  signOut,
  sort,
  userCircleBlue,
  userCircleWhite,
  google,
  expandDownTick;

  const ImageAssets();

  String get _filename {
    String snakeString = '';
    for (int i = 0; i < name.length; i++) {
      String char = name[i];
      if (char == char.toUpperCase()) {
        snakeString += '_${char.toLowerCase()}';
      } else {
        snakeString += char;
      }
    }
    return snakeString;
  }

  String get assetPath {
    return 'assets/images/$_filename.png';
  }
}
