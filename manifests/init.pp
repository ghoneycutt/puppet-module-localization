# == Class: localization
#
# Module to manage localization
#
class localization (
  $languages = undef,
) {

  if $languages != undef {
    create_resources('localization::lang',$languages)
  }
}
